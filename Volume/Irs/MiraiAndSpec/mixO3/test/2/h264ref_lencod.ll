; ModuleID = 'host/ir_O0/h264ref_lencod.ll'
source_filename = "lencod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.SNRParameters = type { float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@inputs = common global %struct.InputParameters zeroinitializer, align 8
@input = global %struct.InputParameters* @inputs, align 8
@images = common global %struct.ImageParameters zeroinitializer, align 8
@img = global %struct.ImageParameters* @images, align 8
@statistics = common global %struct.StatParameters zeroinitializer, align 8
@stats = global %struct.StatParameters* @statistics, align 8
@snrs = common global %struct.SNRParameters zeroinitializer, align 4
@snr = global %struct.SNRParameters* @snrs, align 8
@decoders = common global %struct.Decoders zeroinitializer, align 8
@decs = global %struct.Decoders* @decoders, align 8
@initial_Bframes = global i32 0, align 4
@In2ndIGOP = global i32 0, align 4
@start_frame_no_in_this_IGOP = global i32 0, align 4
@start_tr_in_this_IGOP = global i32 0, align 4
@FirstFrameIn2ndIGOP = global i32 0, align 4
@cabac_encoding = global i32 0, align 4
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@p_trace = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@frame_statistic_start = common global i32 0, align 4
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@enc_bottom_picture = external global %struct.storable_picture*, align 8
@enc_top_picture = external global %struct.storable_picture*, align 8
@enc_frame_picture = external global %struct.storable_picture*, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@Iframe_ctr = common global i32 0, align 4
@Pframe_ctr = common global i32 0, align 4
@Bframe_ctr = common global i32 0, align 4
@tot_time = common global i32 0, align 4
@log2_max_frame_num_minus4 = common global i32 0, align 4
@Co_located = external global %struct.colocated_params*, align 8
@init_img.mb_width_cr = internal global [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 16
@init_img.mb_height_cr = internal global [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"init_img: img->quad\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"init_img: img->mb_data\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"init_img: img->intra_block\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"malloc_picture: Picture structure\00", align 1
@report_frame_statistic.last_mode_use = internal global [5 x [15 x i32]] zeroinitializer, align 16
@report_frame_statistic.last_b8_mode_0 = internal global [5 x [2 x i32]] zeroinitializer, align 16
@report_frame_statistic.last_mode_chroma_use = internal global [4 x i32] zeroinitializer, align 16
@report_frame_statistic.last_bit_ctr_n = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"stat_frame.dat\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"stat_frame.dat.dat\00", align 1
@.str.9 = private unnamed_addr constant [469 x i8] c" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.10 = private unnamed_addr constant [469 x i8] c"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\0A\00", align 1
@.str.11 = private unnamed_addr constant [469 x i8] c"|  ver   | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"|%4s/%s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"9.3\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" %1.5s |\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@frame_no = common global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"  %d/%d  |\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" %9d|\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c" %2.4f| %2.4f| %2.4f|\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" %5d|\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c" Freq. for encoded bitstream       : %1.0f\0A\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c" Hadamard transform                : Used for QPel\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c" Hadamard transform                : Used\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c" Hadamard transform                : Not used\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c" Image format                      : %dx%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c" Error robustness                  : On\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c" Error robustness                  : Off\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c" Search range                      : %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c" Total number of references        : %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c" References for P slices           : %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c" List0 references for B slices     : %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c" List1 references for B slices     : %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c" Total encoding time for the seq.  : %.3f sec \0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c" Total ME time for sequence        : %.3f sec \0A\00", align 1
@me_tot_time = common global i32 0, align 4
@.str.41 = private unnamed_addr constant [37 x i8] c" Sequence type                     :\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c" Pyramid (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"-RB\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c" %s (QP: I %d, P %d, RB %d) \0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c" %s (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c" IPPP (QP: I %d, P %d) \0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CAVLC\0A\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CABAC\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c" Profile/Level IDC                 : (%d,%d)\0A\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c" Search range restrictions         : none\0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c" Search range restrictions         : older reference frames\0A\00", align 1
@.str.56 = private unnamed_addr constant [80 x i8] c" Search range restrictions         : smaller blocks and older reference frames\0A\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c" RD-optimized mode decision        : used\0A\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c" RD-optimized mode decision        : not used\0A\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c" Data Partitioning Mode            : 1 partition \0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : 3 partitions \0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : not supported\0A\00", align 1
@.str.62 = private unnamed_addr constant [68 x i8] c" Output File Format                : H.264 Bit Stream File Format \0A\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c" Output File Format                : RTP Packet File Format \0A\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c" Output File Format                : not supported\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c" Residue Color Transform           : used\0A\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c" Residue Color Transform           : not used\0A\00", align 1
@.str.67 = private unnamed_addr constant [81 x i8] c"------------------ Average data all frames  -----------------------------------\0A\00", align 1
@.str.68 = private unnamed_addr constant [44 x i8] c" SNR Y(dB)                         : %5.2f\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c" SNR U(dB)                         : %5.2f\0A\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c" SNR V(dB)                         : %5.2f\0A\00", align 1
@.str.71 = private unnamed_addr constant [70 x i8] c" Total bits                        : %d (I %5d, P %5d, B %d NVB %d) \0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\0A\00", align 1
@.str.73 = private unnamed_addr constant [65 x i8] c" Total bits                        : %d (I %5d, P %5d, NVB %d) \0A\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c" Bits to avoid Startcode Emulation : %d \0A\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c" Bits for parameter sets           : %d \0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Exit JM %s encoder ver %s \00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"9 (FRExt)\00", align 1
@information_init.yuv_types = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"YUV 4:0:0\00", [10 x i8] c"YUV 4:2:0\00", [10 x i8] c"YUV 4:2:2\00", [10 x i8] c"YUV 4:4:4\00"], align 16
@.str.78 = private unnamed_addr constant [75 x i8] c"------------------------------- JM %s %s --------------------------------\0A\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c" Input YUV file                    : %s \0A\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c" Output H.264 bitstream            : %s \0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c" Output YUV file                   : %s \0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c" YUV Format                        : %s \0A\00", align 1
@.str.83 = private unnamed_addr constant [44 x i8] c" Frames to be encoded I-P/B        : %d/%d\0A\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c" PicInterlace / MbInterlace        : %d/%d\0A\00", align 1
@.str.85 = private unnamed_addr constant [41 x i8] c" Transform8x8Mode                  : %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [81 x i8] c"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D\0A\00", align 1
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@.str.87 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_top\00", align 1
@imgUV_org_bot = common global i16*** null, align 8
@.str.88 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_bot\00", align 1
@last_P_no_frm = external global i32*, align 8
@.str.89 = private unnamed_addr constant [31 x i8] c"init_global_buffers: last_P_no\00", align 1
@last_P_no_fld = external global i32*, align 8
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@direct_ref_idx = common global i16*** null, align 8
@direct_pdir = common global i16** null, align 8
@img4Y_tmp = common global i32** null, align 8
@.str.90 = private unnamed_addr constant [28 x i8] c"init_global_buffers: decref\00", align 1
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@.str.91 = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"get_mem_ACcoeff: cofAC\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"get_mem_DCcoeff: cofDC\00", align 1
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_time = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@intras = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@resTrans_R = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_G = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resR = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resG = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resB = common global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@dc_level = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i32]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i32] zeroinitializer, align 16
@Bytes_After_Header = common global i32 0, align 4
@QP = common global i32 0, align 4
@QP2 = common global i32 0, align 4
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@glob_remapping_of_pic_nums_idc_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common global [20 x i32] zeroinitializer, align 16
@rpc_bytes_to_go = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* @p_in, align 4
  store i32 -1, i32* @p_dec, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_trace, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_log, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_stat, align 8
  store i32 1, i32* @frame_statistic_start, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  call void @Configure(i32 %12, i8** %13)
  call void @Init_QMatrix()
  call void (...) @Init_QOffsetMatrix()
  call void (...) @AllocNalPayloadBuffer()
  call void @init_poc()
  call void (...) @GenerateParameterSets()
  call void @init_img()
  %14 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %14, %struct.Picture** @frame_pic, align 8
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 49
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %2
  %20 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %20, %struct.Picture** @frame_pic2, align 8
  %21 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %21, %struct.Picture** @frame_pic3, align 8
  br label %22

; <label>:22:                                     ; preds = %19, %2
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 91
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %28, %struct.Picture** @top_pic, align 8
  %29 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %29, %struct.Picture** @bottom_pic, align 8
  br label %30

; <label>:30:                                     ; preds = %27, %22
  call void (...) @init_rdopt()
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 55
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35:                                     ; preds = %30
  call void (...) @init_gop_structure()
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 55
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  call void (...) @interpret_gop_structure()
  br label %42

; <label>:41:                                     ; preds = %35
  call void (...) @create_pyramid()
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %42, %30
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  call void (%struct.InputParameters*, ...) bitcast (void (...)* @init_dpb to void (%struct.InputParameters*, ...)*)(%struct.InputParameters* %44)
  call void (...) @init_out_buffer()
  store %struct.storable_picture* null, %struct.storable_picture** @enc_bottom_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_top_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_picture, align 8
  %45 = call i32 @init_global_buffers()
  call void (...) @create_context_memory()
  call void (...) @Init_Motion_Search_Module()
  call void @information_init()
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 127
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %43
  call void (...) @rc_init_seq()
  br label %51

; <label>:51:                                     ; preds = %50, %43
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 134
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %51
  call void (...) @DefineThreshold()
  br label %57

; <label>:57:                                     ; preds = %56, %51
  store i32 0, i32* @Iframe_ctr, align 4
  store i32 0, i32* @Pframe_ctr, align 4
  store i32 0, i32* @Bframe_ctr, align 4
  store i32 0, i32* @tot_time, align 4
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %59 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 79
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %78

; <label>:62:                                     ; preds = %57
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %64 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 79
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %67 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %71 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = sdiv i32 %69, %73
  %75 = add nsw i32 1, %74
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %77 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

; <label>:78:                                     ; preds = %62, %57
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 34
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* @initial_Bframes, align 4
  call void (...) @PatchInputNoFrames()
  %82 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %83 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %82, i32 0, i32 32
  store i32 0, i32* %83, align 8
  %84 = call i32 (...) @start_sequence()
  %85 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %86 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %88 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %87, i32 0, i32 33
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %91 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %90, i32 0, i32 32
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  store i32 0, i32* @start_frame_no_in_this_IGOP, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

; <label>:96:                                     ; preds = %578, %78
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %583

; <label>:104:                                    ; preds = %96
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 113
  store i32 1, i32* %106, align 8
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %108 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 31
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

; <label>:111:                                    ; preds = %104
  %112 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %113 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %112, i32 0, i32 32
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

; <label>:116:                                    ; preds = %111
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %123 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %122, i32 0, i32 31
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %121, %124
  br label %132

; <label>:126:                                    ; preds = %111, %104
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %131 = sub nsw i32 %129, %130
  br label %132

; <label>:132:                                    ; preds = %126, %116
  %133 = phi i32 [ %125, %116 ], [ %131, %126 ]
  %134 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  %138 = mul nsw i32 2, %137
  %139 = mul nsw i32 %133, %138
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 101
  store i32 %139, i32* %141, align 8
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %143 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 91
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

; <label>:146:                                    ; preds = %132
  %147 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %148 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %147, i32 0, i32 92
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

; <label>:151:                                    ; preds = %146
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 101
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %155, i32 0, i32 102
  store i32 %154, i32* %156, align 4
  br label %164

; <label>:157:                                    ; preds = %146, %132
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 101
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 102
  store i32 %161, i32* %163, align 4
  br label %164

; <label>:164:                                    ; preds = %157, %151
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 101
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 102
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %176

; <label>:172:                                    ; preds = %164
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 101
  %175 = load i32, i32* %174, align 8
  br label %180

; <label>:176:                                    ; preds = %164
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 102
  %179 = load i32, i32* %178, align 4
  br label %180

; <label>:180:                                    ; preds = %176, %172
  %181 = phi i32 [ %175, %172 ], [ %179, %176 ]
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 103
  store i32 %181, i32* %183, align 8
  %184 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %185 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %184, i32 0, i32 54
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

; <label>:188:                                    ; preds = %180
  %189 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %190 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %189, i32 0, i32 55
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %203, label %193

; <label>:193:                                    ; preds = %188, %180
  %194 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %195 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %194, i32 0, i32 34
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %203, label %198

; <label>:198:                                    ; preds = %193
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %200 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %201, 2
  br i1 %202, label %203, label %237

; <label>:203:                                    ; preds = %198, %193, %188
  %204 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %205 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %204, i32 0, i32 31
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %223

; <label>:208:                                    ; preds = %203
  %209 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %210 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %209, i32 0, i32 32
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

; <label>:213:                                    ; preds = %208
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %215 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %220 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %219, i32 0, i32 31
  %221 = load i32, i32* %220, align 8
  %222 = srem i32 %218, %221
  br label %229

; <label>:223:                                    ; preds = %208, %203
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %228 = sub nsw i32 %226, %227
  br label %229

; <label>:229:                                    ; preds = %223, %213
  %230 = phi i32 [ %222, %213 ], [ %228, %223 ]
  %231 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %232 = add i32 %231, 4
  %233 = shl i32 1, %232
  %234 = srem i32 %230, %233
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %236 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 105
  store i32 %234, i32* %236, align 8
  br label %272

; <label>:237:                                    ; preds = %198
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 105
  %240 = load i32, i32* %239, align 8
  %241 = add i32 %240, 1
  store i32 %241, i32* %239, align 8
  %242 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %243 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %242, i32 0, i32 31
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %264

; <label>:246:                                    ; preds = %237
  %247 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %248 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %247, i32 0, i32 32
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %264

; <label>:251:                                    ; preds = %246
  %252 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %256 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %255, i32 0, i32 31
  %257 = load i32, i32* %256, align 8
  %258 = srem i32 %254, %257
  %259 = icmp eq i32 0, %258
  br i1 %259, label %260, label %263

; <label>:260:                                    ; preds = %251
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 105
  store i32 0, i32* %262, align 8
  br label %263

; <label>:263:                                    ; preds = %260, %251
  br label %264

; <label>:264:                                    ; preds = %263, %246, %237
  %265 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %266 = add i32 %265, 4
  %267 = shl i32 1, %266
  %268 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %268, i32 0, i32 105
  %270 = load i32, i32* %269, align 8
  %271 = urem i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

; <label>:272:                                    ; preds = %264, %229
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %274 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 99
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %274, i64 0, i64 0
  store i32 0, i32* %275, align 4
  %276 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %277 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %276, i32 0, i32 54
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %294

; <label>:280:                                    ; preds = %272
  %281 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %282 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %293

; <label>:285:                                    ; preds = %280
  %286 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %287 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %286, i32 0, i32 34
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 2, %288
  %290 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %290, i32 0, i32 99
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %291, i64 0, i64 0
  store i32 %289, i32* %292, align 4
  br label %293

; <label>:293:                                    ; preds = %285, %280
  br label %294

; <label>:294:                                    ; preds = %293, %272
  call void @SetImgType()
  %295 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %296 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %295, i32 0, i32 34
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %373

; <label>:299:                                    ; preds = %294
  %300 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %301 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %300, i32 0, i32 79
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %373

; <label>:304:                                    ; preds = %299
  %305 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %306 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %309 = sub nsw i32 %307, %308
  %310 = add nsw i32 %309, 1
  %311 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %312 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = icmp eq i32 %310, %313
  br i1 %314, label %315, label %373

; <label>:315:                                    ; preds = %304
  %316 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %317 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  %320 = sitofp i32 %319 to float
  %321 = fpext float %320 to double
  %322 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %323 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %322, i32 0, i32 34
  %324 = load i32, i32* %323, align 4
  %325 = sitofp i32 %324 to double
  %326 = fadd double %325, 1.000000e+00
  %327 = fdiv double %321, %326
  %328 = fadd double %327, 4.999990e-01
  %329 = fptosi double %328 to i32
  store i32 %329, i32* %11, align 4
  %330 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %331 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %330, i32 0, i32 79
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %334 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sub nsw i32 %335, 1
  %337 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %338 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  %341 = mul nsw i32 %336, %340
  %342 = sub nsw i32 %332, %341
  %343 = load i32, i32* %11, align 4
  %344 = sdiv i32 %342, %343
  %345 = sub nsw i32 %344, 1
  %346 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %347 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %346, i32 0, i32 34
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* @initial_Bframes, align 4
  %349 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %350 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %349, i32 0, i32 34
  %351 = load i32, i32* %350, align 4
  %352 = sub nsw i32 %348, %351
  %353 = mul nsw i32 -2, %352
  %354 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %355 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %354, i32 0, i32 99
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %355, i64 0, i64 0
  store i32 %353, i32* %356, align 4
  %357 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %358 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %357, i32 0, i32 99
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %358, i64 0, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %362 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %361, i32 0, i32 101
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %366 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %365, i32 0, i32 99
  %367 = getelementptr inbounds [2 x i32], [2 x i32]* %366, i64 0, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %370 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 102
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %371, %368
  store i32 %372, i32* %370, align 4
  br label %373

; <label>:373:                                    ; preds = %315, %304, %299, %294
  %374 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %375 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 2
  br i1 %377, label %378, label %529

; <label>:378:                                    ; preds = %373
  %379 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %380 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %379, i32 0, i32 127
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %528

; <label>:383:                                    ; preds = %378
  %384 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %385 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %384, i32 0, i32 31
  %386 = load i32, i32* %385, align 8
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %413

; <label>:388:                                    ; preds = %383
  %389 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %390 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %393 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = sub nsw i32 %394, 1
  %396 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %397 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %396, i32 0, i32 34
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 %395, %398
  %400 = add nsw i32 %391, %399
  store i32 %400, i32* %8, align 4
  %401 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %402 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = sub nsw i32 %403, 1
  store i32 %404, i32* %9, align 4
  %405 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %406 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = sub nsw i32 %407, 1
  %409 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %410 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %409, i32 0, i32 34
  %411 = load i32, i32* %410, align 4
  %412 = mul nsw i32 %408, %411
  store i32 %412, i32* %10, align 4
  br label %525

; <label>:413:                                    ; preds = %383
  %414 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %415 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %414, i32 0, i32 31
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %418 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %417, i32 0, i32 34
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %419, 1
  %421 = mul nsw i32 %416, %420
  store i32 %421, i32* %7, align 4
  %422 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %423 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %422, i32 0, i32 34
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %6, align 4
  %426 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %427 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %435

; <label>:430:                                    ; preds = %413
  %431 = load i32, i32* %7, align 4
  %432 = load i32, i32* %6, align 4
  %433 = sub nsw i32 %432, 1
  %434 = sub nsw i32 %431, %433
  br label %437

; <label>:435:                                    ; preds = %413
  %436 = load i32, i32* %7, align 4
  br label %437

; <label>:437:                                    ; preds = %435, %430
  %438 = phi i32 [ %434, %430 ], [ %436, %435 ]
  store i32 %438, i32* %8, align 4
  %439 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %440 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %443 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %442, i32 0, i32 31
  %444 = load i32, i32* %443, align 8
  %445 = sdiv i32 %441, %444
  %446 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %447 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %450 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %449, i32 0, i32 31
  %451 = load i32, i32* %450, align 8
  %452 = sdiv i32 %448, %451
  %453 = icmp sge i32 %445, %452
  br i1 %453, label %454, label %498

; <label>:454:                                    ; preds = %437
  %455 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %456 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %484

; <label>:459:                                    ; preds = %454
  %460 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %461 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %464 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = sub nsw i32 %462, %465
  %467 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %468 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %471 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sub nsw i32 %469, %472
  %474 = sub nsw i32 %473, 1
  %475 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %476 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %475, i32 0, i32 34
  %477 = load i32, i32* %476, align 4
  %478 = mul nsw i32 %474, %477
  %479 = add nsw i32 %466, %478
  %480 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %481 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %480, i32 0, i32 34
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %479, %482
  store i32 %483, i32* %8, align 4
  br label %497

; <label>:484:                                    ; preds = %454
  %485 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %486 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %489 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 8
  %491 = sub nsw i32 %490, 1
  %492 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %493 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %492, i32 0, i32 34
  %494 = load i32, i32* %493, align 4
  %495 = mul nsw i32 %491, %494
  %496 = add nsw i32 %487, %495
  store i32 %496, i32* %8, align 4
  br label %497

; <label>:497:                                    ; preds = %484, %459
  br label %498

; <label>:498:                                    ; preds = %497, %437
  %499 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %500 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %512

; <label>:503:                                    ; preds = %498
  %504 = load i32, i32* %8, align 4
  %505 = load i32, i32* %6, align 4
  %506 = sub nsw i32 %505, 1
  %507 = mul nsw i32 2, %506
  %508 = add nsw i32 %504, %507
  %509 = load i32, i32* %6, align 4
  %510 = sdiv i32 %508, %509
  %511 = sub nsw i32 %510, 1
  store i32 %511, i32* %9, align 4
  br label %520

; <label>:512:                                    ; preds = %498
  %513 = load i32, i32* %8, align 4
  %514 = load i32, i32* %6, align 4
  %515 = sub nsw i32 %514, 1
  %516 = add nsw i32 %513, %515
  %517 = load i32, i32* %6, align 4
  %518 = sdiv i32 %516, %517
  %519 = sub nsw i32 %518, 1
  store i32 %519, i32* %9, align 4
  br label %520

; <label>:520:                                    ; preds = %512, %503
  %521 = load i32, i32* %8, align 4
  %522 = load i32, i32* %9, align 4
  %523 = sub nsw i32 %521, %522
  %524 = sub nsw i32 %523, 1
  store i32 %524, i32* %10, align 4
  br label %525

; <label>:525:                                    ; preds = %520, %388
  %526 = load i32, i32* %9, align 4
  %527 = load i32, i32* %10, align 4
  call void @rc_init_GOP(i32 %526, i32 %527)
  br label %528

; <label>:528:                                    ; preds = %525, %378
  br label %529

; <label>:529:                                    ; preds = %528, %373
  %530 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %531 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %534 = sub nsw i32 %532, %533
  %535 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %536 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %535, i32 0, i32 99
  %537 = load i32, i32* %536, align 8
  %538 = add nsw i32 %537, 1
  %539 = srem i32 %534, %538
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %544

; <label>:541:                                    ; preds = %529
  %542 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %543 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %542, i32 0, i32 86
  store i32 0, i32* %543, align 8
  br label %547

; <label>:544:                                    ; preds = %529
  %545 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %546 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %545, i32 0, i32 86
  store i32 1, i32* %546, align 8
  br label %547

; <label>:547:                                    ; preds = %544, %541
  %548 = call i32 (...) @encode_one_frame()
  %549 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %550 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %549, i32 0, i32 125
  %551 = load i32, i32* %550, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %554

; <label>:553:                                    ; preds = %547
  call void @report_frame_statistic()
  br label %554

; <label>:554:                                    ; preds = %553, %547
  %555 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %556 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 8
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %556, align 8
  %559 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %560 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %559, i32 0, i32 2
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %563 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %562, i32 0, i32 84
  %564 = load i32, i32* %563, align 8
  %565 = icmp slt i32 %561, %564
  br i1 %565, label %566, label %570

; <label>:566:                                    ; preds = %554
  %567 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %568 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 8
  br label %574

; <label>:570:                                    ; preds = %554
  %571 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %572 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %571, i32 0, i32 84
  %573 = load i32, i32* %572, align 8
  br label %574

; <label>:574:                                    ; preds = %570, %566
  %575 = phi i32 [ %569, %566 ], [ %573, %570 ]
  %576 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %577 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %576, i32 0, i32 2
  store i32 %575, i32* %577, align 8
  call void (...) @encode_enhancement_layer()
  call void @process_2nd_IGOP()
  br label %578

; <label>:578:                                    ; preds = %574
  %579 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %580 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %580, align 8
  br label %96

; <label>:583:                                    ; preds = %96
  %584 = call i32 (...) @terminate_sequence()
  call void (...) @flush_dpb()
  %585 = load i32, i32* @p_in, align 4
  %586 = call i32 @close(i32 %585)
  %587 = load i32, i32* @p_dec, align 4
  %588 = icmp ne i32 -1, %587
  br i1 %588, label %589, label %592

; <label>:589:                                    ; preds = %583
  %590 = load i32, i32* @p_dec, align 4
  %591 = call i32 @close(i32 %590)
  br label %592

; <label>:592:                                    ; preds = %589, %583
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %594 = icmp ne %struct._IO_FILE* %593, null
  br i1 %594, label %595, label %598

; <label>:595:                                    ; preds = %592
  %596 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %597 = call i32 @fclose(%struct._IO_FILE* %596)
  br label %598

; <label>:598:                                    ; preds = %595, %592
  call void (...) @Clear_Motion_Search_Module()
  call void (...) @RandomIntraUninit()
  call void (...) @FmoUninit()
  %599 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %600 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %599, i32 0, i32 55
  %601 = load i32, i32* %600, align 8
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %604

; <label>:603:                                    ; preds = %598
  call void (...) @clear_gop_structure()
  br label %604

; <label>:604:                                    ; preds = %603, %598
  call void (...) @clear_rdopt()
  call void (...) @calc_buffer()
  call void @report()
  %605 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  call void @free_picture(%struct.Picture* %605)
  %606 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %607 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %606, i32 0, i32 49
  %608 = load i32, i32* %607, align 8
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %613

; <label>:610:                                    ; preds = %604
  %611 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  call void @free_picture(%struct.Picture* %611)
  %612 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  call void @free_picture(%struct.Picture* %612)
  br label %613

; <label>:613:                                    ; preds = %610, %604
  %614 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %615 = icmp ne %struct.Picture* %614, null
  br i1 %615, label %616, label %618

; <label>:616:                                    ; preds = %613
  %617 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_picture(%struct.Picture* %617)
  br label %618

; <label>:618:                                    ; preds = %616, %613
  %619 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %620 = icmp ne %struct.Picture* %619, null
  br i1 %620, label %621, label %623

; <label>:621:                                    ; preds = %618
  %622 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_picture(%struct.Picture* %622)
  br label %623

; <label>:623:                                    ; preds = %621, %618
  call void (...) @free_dpb()
  %624 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %624)
  call void (...) @uninit_out_buffer()
  call void @free_global_buffers()
  call void @free_img()
  call void (...) @free_context_memory()
  call void (...) @FreeNalPayloadBuffer()
  call void (...) @FreeParameterSets()
  ret i32 0
}

declare void @Configure(i32, i8**) #1

declare void @Init_QMatrix() #1

declare void @Init_QOffsetMatrix(...) #1

declare void @AllocNalPayloadBuffer(...) #1

declare void @GenerateParameterSets(...) #1

declare void @init_rdopt(...) #1

declare void @init_gop_structure(...) #1

declare void @interpret_gop_structure(...) #1

declare void @create_pyramid(...) #1

declare void @init_dpb(...) #1

declare void @init_out_buffer(...) #1

declare void @create_context_memory(...) #1

declare void @Init_Motion_Search_Module(...) #1

declare void @rc_init_seq(...) #1

declare void @DefineThreshold(...) #1

declare void @PatchInputNoFrames(...) #1

declare i32 @start_sequence(...) #1

declare void @rc_init_GOP(i32, i32) #1

declare i32 @encode_one_frame(...) #1

declare void @encode_enhancement_layer(...) #1

declare i32 @terminate_sequence(...) #1

declare void @flush_dpb(...) #1

declare i32 @close(i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @Clear_Motion_Search_Module(...) #1

declare void @RandomIntraUninit(...) #1

declare void @FmoUninit(...) #1

declare void @clear_gop_structure(...) #1

declare void @clear_rdopt(...) #1

declare void @calc_buffer(...) #1

; Function Attrs: noinline nounwind uwtable
define void @free_picture(%struct.Picture*) #0 {
  %2 = alloca %struct.Picture*, align 8
  store %struct.Picture* %0, %struct.Picture** %2, align 8
  %3 = load %struct.Picture*, %struct.Picture** %2, align 8
  %4 = icmp ne %struct.Picture* %3, null
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = load %struct.Picture*, %struct.Picture** %2, align 8
  call void @free_slice_list(%struct.Picture* %6)
  %7 = load %struct.Picture*, %struct.Picture** %2, align 8
  %8 = bitcast %struct.Picture* %7 to i8*
  call void @free(i8* %8) #5
  br label %9

; <label>:9:                                      ; preds = %5, %1
  ret void
}

declare void @free_dpb(...) #1

declare void @free_colocated(%struct.colocated_params*) #1

declare void @uninit_out_buffer(...) #1

declare void @free_context_memory(...) #1

declare void @FreeNalPayloadBuffer(...) #1

declare void @FreeParameterSets(...) #1

; Function Attrs: noinline nounwind uwtable
define void @report_stats_on_error() #0 {
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = sub nsw i32 %3, 1
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 8
  %7 = call i32 (...) @terminate_sequence()
  call void (...) @flush_dpb()
  %8 = load i32, i32* @p_in, align 4
  %9 = call i32 @close(i32 %8)
  %10 = load i32, i32* @p_dec, align 4
  %11 = icmp ne i32 -1, %10
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* @p_dec, align 4
  %14 = call i32 @close(i32 %13)
  br label %15

; <label>:15:                                     ; preds = %12, %0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %20 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %21

; <label>:21:                                     ; preds = %18, %15
  call void (...) @Clear_Motion_Search_Module()
  call void (...) @RandomIntraUninit()
  call void (...) @FmoUninit()
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 55
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  call void (...) @clear_gop_structure()
  br label %27

; <label>:27:                                     ; preds = %26, %21
  call void (...) @clear_rdopt()
  call void (...) @calc_buffer()
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 125
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  call void @report_frame_statistic()
  br label %33

; <label>:33:                                     ; preds = %32, %27
  call void @report()
  %34 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  call void @free_picture(%struct.Picture* %34)
  %35 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %36 = icmp ne %struct.Picture* %35, null
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %33
  %38 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_picture(%struct.Picture* %38)
  br label %39

; <label>:39:                                     ; preds = %37, %33
  %40 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %41 = icmp ne %struct.Picture* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %39
  %43 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_picture(%struct.Picture* %43)
  br label %44

; <label>:44:                                     ; preds = %42, %39
  call void (...) @free_dpb()
  %45 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %45)
  call void (...) @uninit_out_buffer()
  call void @free_global_buffers()
  call void @free_img()
  call void (...) @free_context_memory()
  call void (...) @FreeNalPayloadBuffer()
  call void (...) @FreeParameterSets()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @init_poc() #0 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 120
  %3 = load i32, i32* %2, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 91
  store i32 %3, i32* %5, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 92
  store i32 0, i32* %7, align 8
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 95
  store i32 1, i32* %9, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 54
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %0
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 93
  store i32 0, i32* %16, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 96
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 0
  store i32 2, i32* %19, align 8
  br label %35

; <label>:20:                                     ; preds = %0
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 34
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 -2, %23
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 93
  store i32 %24, i32* %26, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 34
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 2, %30
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 96
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  store i32 %31, i32* %34, align 8
  br label %35

; <label>:35:                                     ; preds = %20, %14
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 91
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

; <label>:40:                                     ; preds = %35
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 92
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %40
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 94
  store i32 0, i32* %47, align 8
  br label %51

; <label>:48:                                     ; preds = %40, %35
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 94
  store i32 1, i32* %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %45
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 91
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

; <label>:56:                                     ; preds = %51
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %58 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 92
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %56
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 112
  store i32 0, i32* %63, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 98
  store i32 0, i32* %65, align 8
  br label %71

; <label>:66:                                     ; preds = %56, %51
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 112
  store i32 1, i32* %68, align 4
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 98
  store i32 1, i32* %70, align 8
  br label %71

; <label>:71:                                     ; preds = %66, %61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CAVLC_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

; <label>:4:                                      ; preds = %45, %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 110
  %8 = load i32, i32* %7, align 4
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %48

; <label>:10:                                     ; preds = %4
  store i32 0, i32* %2, align 4
  br label %11

; <label>:11:                                     ; preds = %41, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %44

; <label>:14:                                     ; preds = %11
  store i32 0, i32* %3, align 4
  br label %15

; <label>:15:                                     ; preds = %37, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 157
  %19 = load i32, i32* %18, align 4
  %20 = add i32 4, %19
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %40

; <label>:22:                                     ; preds = %15
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 28
  %25 = load i32***, i32**** %24, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32**, i32*** %25, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 0, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %22
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %15

; <label>:40:                                     ; preds = %15
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %11

; <label>:44:                                     ; preds = %11
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %1, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %4

; <label>:48:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @init_img() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 18
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 159
  store i32 %6, i32* %8, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 135
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 149
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 149
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 150
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %26, label %21

; <label>:21:                                     ; preds = %0
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 159
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %21, %0
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 149
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 8
  %31 = select i1 %30, i32 16, i32 8
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 148
  store i32 %31, i32* %33, align 8
  br label %42

; <label>:34:                                     ; preds = %21
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 150
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 8
  %39 = select i1 %38, i32 16, i32 8
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 148
  store i32 %39, i32* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %34, %26
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 149
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 8
  %47 = mul nsw i32 6, %46
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 151
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 149
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 8
  %54 = mul nsw i32 2, %53
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 153
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 149
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 154
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 149
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 155
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 159
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %158

; <label>:75:                                     ; preds = %42
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %77 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 136
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 150
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 150
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 156
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 159
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %91, -2
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 157
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 157
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 1
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 158
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 159
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %110, label %105

; <label>:105:                                    ; preds = %75
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 159
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 2
  br label %110

; <label>:110:                                    ; preds = %105, %75
  %111 = phi i1 [ true, %75 ], [ %109, %105 ]
  %112 = select i1 %111, i32 8, i32 16
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 161
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 159
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %124, label %119

; <label>:119:                                    ; preds = %110
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %121 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 159
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 2
  br label %124

; <label>:124:                                    ; preds = %119, %110
  %125 = phi i1 [ true, %110 ], [ %123, %119 ]
  %126 = select i1 %125, i32 16, i32 8
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 162
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 150
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 8
  %133 = mul nsw i32 6, %132
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 152
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 164
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

; <label>:140:                                    ; preds = %124
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 152
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 6
  store i32 %144, i32* %142, align 8
  br label %145

; <label>:145:                                    ; preds = %140, %124
  %146 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %147 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %146, i32 0, i32 24
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 163
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %150, i64 0, i64 0
  store i32 %148, i32* %151, align 4
  %152 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %153 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %152, i32 0, i32 25
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %155, i32 0, i32 163
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %156, i64 0, i64 1
  store i32 %154, i32* %157, align 4
  br label %181

; <label>:158:                                    ; preds = %42
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 150
  store i32 0, i32* %160, align 8
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 156
  store i32 0, i32* %162, align 8
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %164 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 157
  store i32 0, i32* %164, align 4
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 158
  store i32 0, i32* %166, align 8
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 161
  store i32 0, i32* %168, align 4
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 162
  store i32 0, i32* %170, align 8
  %171 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %172 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %171, i32 0, i32 152
  store i32 0, i32* %172, align 8
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 152
  store i32 0, i32* %174, align 8
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %176 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 163
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %176, i64 0, i64 0
  store i32 0, i32* %177, align 4
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 163
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %179, i64 0, i64 1
  store i32 0, i32* %180, align 4
  br label %181

; <label>:181:                                    ; preds = %158, %145
  %182 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %183 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %182, i32 0, i32 21
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %188 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %187, i32 0, i32 25
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

; <label>:191:                                    ; preds = %181
  %192 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %193 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %192, i32 0, i32 21
  %194 = load i32, i32* %193, align 4
  br label %200

; <label>:195:                                    ; preds = %181
  %196 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %197 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %196, i32 0, i32 21
  %198 = load i32, i32* %197, align 4
  %199 = mul i32 2, %198
  br label %200

; <label>:200:                                    ; preds = %195, %191
  %201 = phi i32 [ %194, %191 ], [ %199, %195 ]
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 9
  store i32 %201, i32* %203, align 4
  %204 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %205 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %208 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 84
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %210 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 143
  store i32 0, i32* %210, align 4
  %211 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %212 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %211, i32 0, i32 76
  %213 = load double, double* %212, align 8
  %214 = fptrunc double %213 to float
  %215 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %216 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %215, i32 0, i32 12
  store float %214, float* %216, align 8
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 70
  %219 = call i32 @get_mem_mv(i16******* %218)
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 71
  %222 = call i32 @get_mem_mv(i16******* %221)
  %223 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %224 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %223, i32 0, i32 39
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

; <label>:227:                                    ; preds = %200
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %229 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 72
  %230 = call i32 @get_mem_mv(i16******* %229)
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %232 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 73
  %233 = call i32 @get_mem_mv(i16******* %232)
  br label %234

; <label>:234:                                    ; preds = %227, %200
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %236 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 47
  %237 = call i32 @get_mem_ACcoeff(i32***** %236)
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 48
  %240 = call i32 @get_mem_DCcoeff(i32**** %239)
  %241 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %242 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %241, i32 0, i32 92
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %276

; <label>:245:                                    ; preds = %234
  %246 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 15))
  %247 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 16))
  %248 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 15))
  %249 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 16))
  %250 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 15))
  %251 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 16))
  %252 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 15))
  %253 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 16))
  %254 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %255 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %254, i32 0, i32 39
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

; <label>:258:                                    ; preds = %245
  %259 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 17))
  %260 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 18))
  %261 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 17))
  %262 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 18))
  %263 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 17))
  %264 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 18))
  %265 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 17))
  %266 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 18))
  br label %267

; <label>:267:                                    ; preds = %258, %245
  %268 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 4))
  %269 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 5))
  %270 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 4))
  %271 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 5))
  %272 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 4))
  %273 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 5))
  %274 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 4))
  %275 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 5))
  br label %276

; <label>:276:                                    ; preds = %267, %234
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 155
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 156
  %282 = load i32, i32* %281, align 8
  %283 = icmp sgt i32 %279, %282
  br i1 %283, label %284, label %290

; <label>:284:                                    ; preds = %276
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %286 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 155
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 1
  %289 = mul nsw i32 %288, 2
  store i32 %289, i32* %3, align 4
  br label %296

; <label>:290:                                    ; preds = %276
  %291 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %292 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %291, i32 0, i32 156
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  %295 = mul nsw i32 %294, 2
  store i32 %295, i32* %3, align 4
  br label %296

; <label>:296:                                    ; preds = %290, %284
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = call noalias i8* @calloc(i64 %298, i64 4) #5
  %300 = bitcast i8* %299 to i32*
  %301 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %302 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %301, i32 0, i32 53
  store i32* %300, i32** %302, align 8
  %303 = icmp eq i32* %300, null
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %296
  call void @no_mem_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  br label %305

; <label>:305:                                    ; preds = %304, %296
  %306 = load i32, i32* %3, align 4
  %307 = sdiv i32 %306, 2
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %309 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 53
  %310 = load i32*, i32** %309, align 8
  %311 = sext i32 %307 to i64
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32* %312, i32** %309, align 8
  store i32 0, i32* %1, align 4
  br label %313

; <label>:313:                                    ; preds = %335, %305
  %314 = load i32, i32* %1, align 4
  %315 = load i32, i32* %3, align 4
  %316 = sdiv i32 %315, 2
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %338

; <label>:318:                                    ; preds = %313
  %319 = load i32, i32* %1, align 4
  %320 = load i32, i32* %1, align 4
  %321 = mul nsw i32 %319, %320
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 53
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %1, align 4
  %326 = sub nsw i32 0, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32 %321, i32* %328, align 4
  %329 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %330 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %329, i32 0, i32 53
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %321, i32* %334, align 4
  br label %335

; <label>:335:                                    ; preds = %318
  %336 = load i32, i32* %1, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %1, align 4
  br label %313

; <label>:338:                                    ; preds = %313
  %339 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %340 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %339, i32 0, i32 16
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %343 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %342, i32 0, i32 165
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %341, %344
  %346 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %347 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %346, i32 0, i32 13
  store i32 %345, i32* %347, align 4
  %348 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %349 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %348, i32 0, i32 17
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %352 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %351, i32 0, i32 166
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %350, %353
  %355 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %356 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %355, i32 0, i32 15
  store i32 %354, i32* %356, align 4
  %357 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %358 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %357, i32 0, i32 159
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %414

; <label>:361:                                    ; preds = %338
  %362 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %363 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %362, i32 0, i32 13
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %366 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %365, i32 0, i32 159
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_width_cr, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = sdiv i32 16, %370
  %372 = sdiv i32 %364, %371
  %373 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %374 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %373, i32 0, i32 14
  store i32 %372, i32* %374, align 8
  %375 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %376 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %375, i32 0, i32 15
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %379 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %378, i32 0, i32 159
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_height_cr, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = sdiv i32 16, %383
  %385 = sdiv i32 %377, %384
  %386 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %387 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %386, i32 0, i32 16
  store i32 %385, i32* %387, align 8
  %388 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %389 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %388, i32 0, i32 16
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %392 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %391, i32 0, i32 159
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_width_cr, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = sdiv i32 16, %396
  %398 = sdiv i32 %390, %397
  %399 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %400 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %399, i32 0, i32 138
  store i32 %398, i32* %400, align 4
  %401 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %402 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %401, i32 0, i32 17
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %405 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %404, i32 0, i32 159
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_height_cr, i64 0, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = sdiv i32 16, %409
  %411 = sdiv i32 %403, %410
  %412 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %413 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %412, i32 0, i32 137
  store i32 %411, i32* %413, align 8
  br label %423

; <label>:414:                                    ; preds = %338
  %415 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %416 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %415, i32 0, i32 14
  store i32 0, i32* %416, align 8
  %417 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %418 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %417, i32 0, i32 16
  store i32 0, i32* %418, align 8
  %419 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %420 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %419, i32 0, i32 138
  store i32 0, i32* %420, align 4
  %421 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %422 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %421, i32 0, i32 137
  store i32 0, i32* %422, align 8
  br label %423

; <label>:423:                                    ; preds = %414, %361
  %424 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %425 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %424, i32 0, i32 16
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %428 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %427, i32 0, i32 17
  store i32 %426, i32* %428, align 4
  %429 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %430 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %429, i32 0, i32 16
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %433 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %432, i32 0, i32 165
  %434 = load i32, i32* %433, align 8
  %435 = add nsw i32 %431, %434
  %436 = sdiv i32 %435, 16
  %437 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %438 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %437, i32 0, i32 106
  store i32 %436, i32* %438, align 4
  %439 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %440 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %439, i32 0, i32 17
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %443 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %442, i32 0, i32 166
  %444 = load i32, i32* %443, align 4
  %445 = add nsw i32 %441, %444
  %446 = sdiv i32 %445, 16
  %447 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %448 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %447, i32 0, i32 108
  store i32 %446, i32* %448, align 4
  %449 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %450 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %449, i32 0, i32 106
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %453 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %452, i32 0, i32 108
  %454 = load i32, i32* %453, align 4
  %455 = mul i32 %451, %454
  %456 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %457 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %456, i32 0, i32 111
  store i32 %455, i32* %457, align 8
  %458 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %459 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %458, i32 0, i32 25
  %460 = load i32, i32* %459, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

; <label>:462:                                    ; preds = %423
  %463 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %464 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %463, i32 0, i32 108
  %465 = load i32, i32* %464, align 4
  br label %471

; <label>:466:                                    ; preds = %423
  %467 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %468 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %467, i32 0, i32 108
  %469 = load i32, i32* %468, align 4
  %470 = udiv i32 %469, 2
  br label %471

; <label>:471:                                    ; preds = %466, %462
  %472 = phi i32 [ %465, %462 ], [ %470, %466 ]
  %473 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %474 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %473, i32 0, i32 107
  store i32 %472, i32* %474, align 8
  %475 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %476 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %475, i32 0, i32 111
  %477 = load i32, i32* %476, align 8
  %478 = zext i32 %477 to i64
  %479 = call noalias i8* @calloc(i64 %478, i64 632) #5
  %480 = bitcast i8* %479 to %struct.macroblock*
  %481 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %482 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %481, i32 0, i32 51
  store %struct.macroblock* %480, %struct.macroblock** %482, align 8
  %483 = icmp eq %struct.macroblock* %480, null
  br i1 %483, label %484, label %485

; <label>:484:                                    ; preds = %471
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %485

; <label>:485:                                    ; preds = %484, %471
  %486 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %487 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %486, i32 0, i32 24
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %502

; <label>:490:                                    ; preds = %485
  %491 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %492 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %491, i32 0, i32 111
  %493 = load i32, i32* %492, align 8
  %494 = zext i32 %493 to i64
  %495 = call noalias i8* @calloc(i64 %494, i64 4) #5
  %496 = bitcast i8* %495 to i32*
  %497 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %498 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %497, i32 0, i32 54
  store i32* %496, i32** %498, align 8
  %499 = icmp eq i32* %496, null
  br i1 %499, label %500, label %501

; <label>:500:                                    ; preds = %490
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %501

; <label>:501:                                    ; preds = %500, %490
  br label %502

; <label>:502:                                    ; preds = %501, %485
  %503 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %504 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %503, i32 0, i32 25
  %505 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %506 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %505, i32 0, i32 13
  %507 = load i32, i32* %506, align 4
  %508 = sdiv i32 %507, 4
  %509 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %510 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %509, i32 0, i32 15
  %511 = load i32, i32* %510, align 4
  %512 = sdiv i32 %511, 4
  %513 = call i32 @get_mem2Dint(i32*** %504, i32 %508, i32 %512)
  %514 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %515 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %514, i32 0, i32 26
  %516 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %517 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %516, i32 0, i32 13
  %518 = load i32, i32* %517, align 4
  %519 = sdiv i32 %518, 4
  %520 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %520, i32 0, i32 15
  %522 = load i32, i32* %521, align 4
  %523 = sdiv i32 %522, 4
  %524 = call i32 @get_mem2Dint(i32*** %515, i32 %519, i32 %523)
  %525 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %526 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %525, i32 0, i32 13
  %527 = load i32, i32* %526, align 4
  %528 = sdiv i32 %527, 4
  %529 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %530 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %529, i32 0, i32 15
  %531 = load i32, i32* %530, align 4
  %532 = sdiv i32 %531, 4
  %533 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 10), i32 %528, i32 %532)
  %534 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %535 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %534, i32 0, i32 92
  %536 = load i32, i32* %535, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %566

; <label>:538:                                    ; preds = %502
  %539 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %540 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %539, i32 0, i32 13
  %541 = load i32, i32* %540, align 4
  %542 = sdiv i32 %541, 4
  %543 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %544 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %543, i32 0, i32 15
  %545 = load i32, i32* %544, align 4
  %546 = sdiv i32 %545, 4
  %547 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 10), i32 %542, i32 %546)
  %548 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %549 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %548, i32 0, i32 13
  %550 = load i32, i32* %549, align 4
  %551 = sdiv i32 %550, 4
  %552 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %553 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %552, i32 0, i32 15
  %554 = load i32, i32* %553, align 4
  %555 = sdiv i32 %554, 4
  %556 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 10), i32 %551, i32 %555)
  %557 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %558 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %557, i32 0, i32 13
  %559 = load i32, i32* %558, align 4
  %560 = sdiv i32 %559, 4
  %561 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %562 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %561, i32 0, i32 15
  %563 = load i32, i32* %562, align 4
  %564 = sdiv i32 %563, 4
  %565 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 10), i32 %560, i32 %564)
  br label %566

; <label>:566:                                    ; preds = %538, %502
  %567 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %568 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %567, i32 0, i32 28
  %569 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %570 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %569, i32 0, i32 111
  %571 = load i32, i32* %570, align 8
  %572 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %573 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %572, i32 0, i32 157
  %574 = load i32, i32* %573, align 4
  %575 = add nsw i32 4, %574
  %576 = call i32 @get_mem3Dint(i32**** %568, i32 %571, i32 4, i32 %575)
  call void @CAVLC_init()
  store i32 0, i32* %1, align 4
  br label %577

; <label>:577:                                    ; preds = %617, %566
  %578 = load i32, i32* %1, align 4
  %579 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %580 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %579, i32 0, i32 13
  %581 = load i32, i32* %580, align 4
  %582 = sdiv i32 %581, 4
  %583 = icmp slt i32 %578, %582
  br i1 %583, label %584, label %620

; <label>:584:                                    ; preds = %577
  store i32 0, i32* %2, align 4
  br label %585

; <label>:585:                                    ; preds = %613, %584
  %586 = load i32, i32* %2, align 4
  %587 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %588 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %587, i32 0, i32 15
  %589 = load i32, i32* %588, align 4
  %590 = sdiv i32 %589, 4
  %591 = icmp slt i32 %586, %590
  br i1 %591, label %592, label %616

; <label>:592:                                    ; preds = %585
  %593 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %594 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %593, i32 0, i32 25
  %595 = load i32**, i32*** %594, align 8
  %596 = load i32, i32* %1, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32*, i32** %595, i64 %597
  %599 = load i32*, i32** %598, align 8
  %600 = load i32, i32* %2, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %599, i64 %601
  store i32 -1, i32* %602, align 4
  %603 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %604 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %603, i32 0, i32 26
  %605 = load i32**, i32*** %604, align 8
  %606 = load i32, i32* %1, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32*, i32** %605, i64 %607
  %609 = load i32*, i32** %608, align 8
  %610 = load i32, i32* %2, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, i32* %609, i64 %611
  store i32 -1, i32* %612, align 4
  br label %613

; <label>:613:                                    ; preds = %592
  %614 = load i32, i32* %2, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %2, align 4
  br label %585

; <label>:616:                                    ; preds = %585
  br label %617

; <label>:617:                                    ; preds = %616
  %618 = load i32, i32* %1, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %1, align 4
  br label %577

; <label>:620:                                    ; preds = %577
  %621 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %622 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %621, i32 0, i32 22
  store i32 0, i32* %622, align 8
  %623 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %624 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %623, i32 0, i32 13
  %625 = load i32, i32* %624, align 4
  %626 = sdiv i32 %625, 16
  %627 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %628 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %627, i32 0, i32 15
  %629 = load i32, i32* %628, align 4
  %630 = sdiv i32 %629, 16
  %631 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %632 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %631, i32 0, i32 101
  %633 = load i32, i32* %632, align 8
  call void @RandomIntraInit(i32 %626, i32 %630, i32 %633)
  call void (...) @InitSEIMessages()
  %634 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %635 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %634, i32 0, i32 102
  %636 = load i32, i32* %635, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %647

; <label>:638:                                    ; preds = %620
  %639 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %640 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %639, i32 0, i32 104
  %641 = load i32, i32* %640, align 4
  %642 = shl i32 %641, 1
  store i32 %642, i32* %640, align 4
  %643 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %644 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %643, i32 0, i32 105
  %645 = load i32, i32* %644, align 8
  %646 = shl i32 %645, 1
  store i32 %646, i32* %644, align 8
  br label %654

; <label>:647:                                    ; preds = %620
  %648 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %649 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %648, i32 0, i32 103
  store i32 0, i32* %649, align 8
  %650 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %651 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %650, i32 0, i32 104
  store i32 0, i32* %651, align 4
  %652 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %653 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %652, i32 0, i32 105
  store i32 0, i32* %653, align 8
  br label %654

; <label>:654:                                    ; preds = %647, %638
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_mem_mv(i16*******) #0 {
  %2 = alloca i16*******, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16******* %0, i16******** %2, align 8
  %8 = call noalias i8* @calloc(i64 4, i64 8) #5
  %9 = bitcast i8* %8 to i16******
  %10 = load i16*******, i16******** %2, align 8
  store i16****** %9, i16******* %10, align 8
  %11 = icmp eq i16****** %9, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  store i32 0, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %147, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %150

; <label>:17:                                     ; preds = %14
  %18 = call noalias i8* @calloc(i64 4, i64 8) #5
  %19 = bitcast i8* %18 to i16*****
  %20 = load i16*******, i16******** %2, align 8
  %21 = load i16******, i16******* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16*****, i16****** %21, i64 %23
  store i16***** %19, i16****** %24, align 8
  %25 = icmp eq i16***** %19, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %17
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %27

; <label>:27:                                     ; preds = %26, %17
  store i32 0, i32* %4, align 4
  br label %28

; <label>:28:                                     ; preds = %143, %27
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %146

; <label>:31:                                     ; preds = %28
  %32 = call noalias i8* @calloc(i64 2, i64 8) #5
  %33 = bitcast i8* %32 to i16****
  %34 = load i16*******, i16******** %2, align 8
  %35 = load i16******, i16******* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16*****, i16****** %35, i64 %37
  %39 = load i16*****, i16****** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16****, i16***** %39, i64 %41
  store i16**** %33, i16***** %42, align 8
  %43 = icmp eq i16**** %33, null
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %31
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %45

; <label>:45:                                     ; preds = %44, %31
  store i32 0, i32* %5, align 4
  br label %46

; <label>:46:                                     ; preds = %139, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %142

; <label>:49:                                     ; preds = %46
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = call noalias i8* @calloc(i64 %53, i64 8) #5
  %55 = bitcast i8* %54 to i16***
  %56 = load i16*******, i16******** %2, align 8
  %57 = load i16******, i16******* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16*****, i16****** %57, i64 %59
  %61 = load i16*****, i16****** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16****, i16***** %61, i64 %63
  %65 = load i16****, i16***** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16***, i16**** %65, i64 %67
  store i16*** %55, i16**** %68, align 8
  %69 = icmp eq i16*** %55, null
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %49
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %71

; <label>:71:                                     ; preds = %70, %49
  store i32 0, i32* %6, align 4
  br label %72

; <label>:72:                                     ; preds = %135, %71
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %138

; <label>:78:                                     ; preds = %72
  %79 = call noalias i8* @calloc(i64 9, i64 8) #5
  %80 = bitcast i8* %79 to i16**
  %81 = load i16*******, i16******** %2, align 8
  %82 = load i16******, i16******* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i16*****, i16****** %82, i64 %84
  %86 = load i16*****, i16****** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16****, i16***** %86, i64 %88
  %90 = load i16****, i16***** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16***, i16**** %90, i64 %92
  %94 = load i16***, i16**** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16**, i16*** %94, i64 %96
  store i16** %80, i16*** %97, align 8
  %98 = icmp eq i16** %80, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %78
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %100

; <label>:100:                                    ; preds = %99, %78
  store i32 0, i32* %7, align 4
  br label %101

; <label>:101:                                    ; preds = %131, %100
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 9
  br i1 %103, label %104, label %134

; <label>:104:                                    ; preds = %101
  %105 = call noalias i8* @calloc(i64 2, i64 2) #5
  %106 = bitcast i8* %105 to i16*
  %107 = load i16*******, i16******** %2, align 8
  %108 = load i16******, i16******* %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16*****, i16****** %108, i64 %110
  %112 = load i16*****, i16****** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16****, i16***** %112, i64 %114
  %116 = load i16****, i16***** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16***, i16**** %116, i64 %118
  %120 = load i16***, i16**** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16**, i16*** %120, i64 %122
  %124 = load i16**, i16*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16*, i16** %124, i64 %126
  store i16* %106, i16** %127, align 8
  %128 = icmp eq i16* %106, null
  br i1 %128, label %129, label %130

; <label>:129:                                    ; preds = %104
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %130

; <label>:130:                                    ; preds = %129, %104
  br label %131

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %101

; <label>:134:                                    ; preds = %101
  br label %135

; <label>:135:                                    ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %72

; <label>:138:                                    ; preds = %72
  br label %139

; <label>:139:                                    ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %46

; <label>:142:                                    ; preds = %46
  br label %143

; <label>:143:                                    ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %28

; <label>:146:                                    ; preds = %28
  br label %147

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %14

; <label>:150:                                    ; preds = %14
  %151 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 16, %153
  %155 = mul nsw i32 %154, 9
  %156 = mul nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 2
  %159 = trunc i64 %158 to i32
  ret i32 %159
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_mem_ACcoeff(i32*****) #0 {
  %2 = alloca i32*****, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32***** %0, i32****** %2, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 157
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 4, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = call noalias i8* @calloc(i64 %12, i64 8) #5
  %14 = bitcast i8* %13 to i32****
  %15 = load i32*****, i32****** %2, align 8
  store i32**** %14, i32***** %15, align 8
  %16 = icmp eq i32**** %14, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %1
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %18

; <label>:18:                                     ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %19

; <label>:19:                                     ; preds = %82, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %85

; <label>:23:                                     ; preds = %19
  %24 = call noalias i8* @calloc(i64 4, i64 8) #5
  %25 = bitcast i8* %24 to i32***
  %26 = load i32*****, i32****** %2, align 8
  %27 = load i32****, i32***** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32***, i32**** %27, i64 %29
  store i32*** %25, i32**** %30, align 8
  %31 = icmp eq i32*** %25, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %23
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %33

; <label>:33:                                     ; preds = %32, %23
  store i32 0, i32* %4, align 4
  br label %34

; <label>:34:                                     ; preds = %78, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %81

; <label>:37:                                     ; preds = %34
  %38 = call noalias i8* @calloc(i64 2, i64 8) #5
  %39 = bitcast i8* %38 to i32**
  %40 = load i32*****, i32****** %2, align 8
  %41 = load i32****, i32***** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32***, i32**** %41, i64 %43
  %45 = load i32***, i32**** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32**, i32*** %45, i64 %47
  store i32** %39, i32*** %48, align 8
  %49 = icmp eq i32** %39, null
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %37
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %51

; <label>:51:                                     ; preds = %50, %37
  store i32 0, i32* %3, align 4
  br label %52

; <label>:52:                                     ; preds = %74, %51
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %77

; <label>:55:                                     ; preds = %52
  %56 = call noalias i8* @calloc(i64 65, i64 4) #5
  %57 = bitcast i8* %56 to i32*
  %58 = load i32*****, i32****** %2, align 8
  %59 = load i32****, i32***** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32***, i32**** %59, i64 %61
  %63 = load i32***, i32**** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32**, i32*** %63, i64 %65
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* %57, i32** %70, align 8
  %71 = icmp eq i32* %57, null
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %55
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %73

; <label>:73:                                     ; preds = %72, %55
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %52

; <label>:77:                                     ; preds = %52
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %34

; <label>:81:                                     ; preds = %34
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %19

; <label>:85:                                     ; preds = %19
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %86, 4
  %88 = mul nsw i32 %87, 2
  %89 = mul nsw i32 %88, 65
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  ret i32 %92
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_mem_DCcoeff(i32****) #0 {
  %2 = alloca i32****, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32**** %0, i32***** %2, align 8
  %5 = call noalias i8* @calloc(i64 3, i64 8) #5
  %6 = bitcast i8* %5 to i32***
  %7 = load i32****, i32***** %2, align 8
  store i32*** %6, i32**** %7, align 8
  %8 = icmp eq i32*** %6, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %1
  store i32 0, i32* %4, align 4
  br label %11

; <label>:11:                                     ; preds = %47, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %50

; <label>:14:                                     ; preds = %11
  %15 = call noalias i8* @calloc(i64 2, i64 8) #5
  %16 = bitcast i8* %15 to i32**
  %17 = load i32****, i32***** %2, align 8
  %18 = load i32***, i32**** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32**, i32*** %18, i64 %20
  store i32** %16, i32*** %21, align 8
  %22 = icmp eq i32** %16, null
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %14
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %23, %14
  store i32 0, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %43, %24
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %46

; <label>:28:                                     ; preds = %25
  %29 = call noalias i8* @calloc(i64 65, i64 4) #5
  %30 = bitcast i8* %29 to i32*
  %31 = load i32****, i32***** %2, align 8
  %32 = load i32***, i32**** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32**, i32*** %32, i64 %34
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %30, i32** %39, align 8
  %40 = icmp eq i32* %30, null
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %28
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %41, %28
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %25

; <label>:46:                                     ; preds = %25
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %11

; <label>:50:                                     ; preds = %11
  ret i32 1560
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

declare i32 @get_mem2Dint(i32***, i32, i32) #1

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #1

declare void @RandomIntraInit(i32, i32, i32) #1

declare void @InitSEIMessages(...) #1

; Function Attrs: noinline nounwind uwtable
define void @free_img() #0 {
  call void (...) @CloseSEIMessages()
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 70
  %3 = load i16******, i16******* %2, align 8
  call void @free_mem_mv(i16****** %3)
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 71
  %6 = load i16******, i16******* %5, align 8
  call void @free_mem_mv(i16****** %6)
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 39
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %0
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 72
  %14 = load i16******, i16******* %13, align 8
  call void @free_mem_mv(i16****** %14)
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 73
  %17 = load i16******, i16******* %16, align 8
  call void @free_mem_mv(i16****** %17)
  br label %18

; <label>:18:                                     ; preds = %11, %0
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 47
  %21 = load i32****, i32***** %20, align 8
  call void @free_mem_ACcoeff(i32**** %21)
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 48
  %24 = load i32***, i32**** %23, align 8
  call void @free_mem_DCcoeff(i32*** %24)
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 92
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

; <label>:29:                                     ; preds = %18
  %30 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %30)
  %31 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %31)
  %32 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %32)
  %33 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %33)
  %34 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %34)
  %35 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %35)
  %36 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %36)
  %37 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %37)
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 39
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

; <label>:42:                                     ; preds = %29
  %43 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %43)
  %44 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %44)
  %45 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %45)
  %46 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %46)
  %47 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %47)
  %48 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %48)
  %49 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %49)
  %50 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %50)
  br label %51

; <label>:51:                                     ; preds = %42, %29
  %52 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %52)
  %53 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %53)
  %54 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %54)
  %55 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %55)
  %56 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %56)
  %57 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %57)
  %58 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %58)
  %59 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %59)
  br label %60

; <label>:60:                                     ; preds = %51, %18
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 155
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 156
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %80

; <label>:68:                                     ; preds = %60
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 53
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 155
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = bitcast i32* %78 to i8*
  call void @free(i8* %79) #5
  br label %92

; <label>:80:                                     ; preds = %60
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 53
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 156
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  %91 = bitcast i32* %90 to i8*
  call void @free(i8* %91) #5
  br label %92

; <label>:92:                                     ; preds = %80, %68
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %94 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 92
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %92
  %98 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %98)
  %99 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %99)
  %100 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %100)
  br label %101

; <label>:101:                                    ; preds = %97, %92
  ret void
}

declare void @CloseSEIMessages(...) #1

; Function Attrs: noinline nounwind uwtable
define void @free_mem_mv(i16******) #0 {
  %2 = alloca i16******, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16****** %0, i16******* %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %117, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %120

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %107, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %110

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %5, align 4
  br label %16

; <label>:16:                                     ; preds = %93, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %96

; <label>:19:                                     ; preds = %16
  store i32 0, i32* %6, align 4
  br label %20

; <label>:20:                                     ; preds = %75, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %78

; <label>:26:                                     ; preds = %20
  store i32 0, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %53, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 9
  br i1 %29, label %30, label %56

; <label>:30:                                     ; preds = %27
  %31 = load i16******, i16******* %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16*****, i16****** %31, i64 %33
  %35 = load i16*****, i16****** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16****, i16***** %35, i64 %37
  %39 = load i16****, i16***** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16***, i16**** %39, i64 %41
  %43 = load i16***, i16**** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16**, i16*** %43, i64 %45
  %47 = load i16**, i16*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16*, i16** %47, i64 %49
  %51 = load i16*, i16** %50, align 8
  %52 = bitcast i16* %51 to i8*
  call void @free(i8* %52) #5
  br label %53

; <label>:53:                                     ; preds = %30
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %27

; <label>:56:                                     ; preds = %27
  %57 = load i16******, i16******* %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16*****, i16****** %57, i64 %59
  %61 = load i16*****, i16****** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16****, i16***** %61, i64 %63
  %65 = load i16****, i16***** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16***, i16**** %65, i64 %67
  %69 = load i16***, i16**** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16**, i16*** %69, i64 %71
  %73 = load i16**, i16*** %72, align 8
  %74 = bitcast i16** %73 to i8*
  call void @free(i8* %74) #5
  br label %75

; <label>:75:                                     ; preds = %56
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %20

; <label>:78:                                     ; preds = %20
  %79 = load i16******, i16******* %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16*****, i16****** %79, i64 %81
  %83 = load i16*****, i16****** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16****, i16***** %83, i64 %85
  %87 = load i16****, i16***** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16***, i16**** %87, i64 %89
  %91 = load i16***, i16**** %90, align 8
  %92 = bitcast i16*** %91 to i8*
  call void @free(i8* %92) #5
  br label %93

; <label>:93:                                     ; preds = %78
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %16

; <label>:96:                                     ; preds = %16
  %97 = load i16******, i16******* %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16*****, i16****** %97, i64 %99
  %101 = load i16*****, i16****** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16****, i16***** %101, i64 %103
  %105 = load i16****, i16***** %104, align 8
  %106 = bitcast i16**** %105 to i8*
  call void @free(i8* %106) #5
  br label %107

; <label>:107:                                    ; preds = %96
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %12

; <label>:110:                                    ; preds = %12
  %111 = load i16******, i16******* %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16*****, i16****** %111, i64 %113
  %115 = load i16*****, i16****** %114, align 8
  %116 = bitcast i16***** %115 to i8*
  call void @free(i8* %116) #5
  br label %117

; <label>:117:                                    ; preds = %110
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %8

; <label>:120:                                    ; preds = %8
  %121 = load i16******, i16******* %2, align 8
  %122 = bitcast i16****** %121 to i8*
  call void @free(i8* %122) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @free_mem_ACcoeff(i32****) #0 {
  %2 = alloca i32****, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32**** %0, i32***** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %60, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 157
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 4, %10
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %63

; <label>:13:                                     ; preds = %6
  store i32 0, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %50, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %53

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

; <label>:18:                                     ; preds = %36, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %39

; <label>:21:                                     ; preds = %18
  %22 = load i32****, i32***** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32***, i32**** %22, i64 %24
  %26 = load i32***, i32**** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32**, i32*** %26, i64 %28
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35) #5
  br label %36

; <label>:36:                                     ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %18

; <label>:39:                                     ; preds = %18
  %40 = load i32****, i32***** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32***, i32**** %40, i64 %42
  %44 = load i32***, i32**** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = bitcast i32** %48 to i8*
  call void @free(i8* %49) #5
  br label %50

; <label>:50:                                     ; preds = %39
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %14

; <label>:53:                                     ; preds = %14
  %54 = load i32****, i32***** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32***, i32**** %54, i64 %56
  %58 = load i32***, i32**** %57, align 8
  %59 = bitcast i32*** %58 to i8*
  call void @free(i8* %59) #5
  br label %60

; <label>:60:                                     ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %6

; <label>:63:                                     ; preds = %6
  %64 = load i32****, i32***** %2, align 8
  %65 = bitcast i32**** %64 to i8*
  call void @free(i8* %65) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @free_mem_DCcoeff(i32***) #0 {
  %2 = alloca i32***, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32*** %0, i32**** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %36

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %23, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %9
  %13 = load i32***, i32**** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32**, i32*** %13, i64 %15
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* %22) #5
  br label %23

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

; <label>:26:                                     ; preds = %9
  %27 = load i32***, i32**** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32**, i32*** %27, i64 %29
  %31 = load i32**, i32*** %30, align 8
  %32 = bitcast i32** %31 to i8*
  call void @free(i8* %32) #5
  br label %33

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

; <label>:36:                                     ; preds = %5
  %37 = load i32***, i32**** %2, align 8
  %38 = bitcast i32*** %37 to i8*
  call void @free(i8* %38) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @free_mem2Dint(i32**) #1

; Function Attrs: noinline nounwind uwtable
define %struct.Picture* @malloc_picture() #0 {
  %1 = alloca %struct.Picture*, align 8
  %2 = call noalias i8* @calloc(i64 1, i64 824) #5
  %3 = bitcast i8* %2 to %struct.Picture*
  store %struct.Picture* %3, %struct.Picture** %1, align 8
  %4 = icmp eq %struct.Picture* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %0
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %5, %0
  %7 = load %struct.Picture*, %struct.Picture** %1, align 8
  ret %struct.Picture* %7
}

declare void @free_slice_list(%struct.Picture*) #1

; Function Attrs: noinline nounwind uwtable
define void @report_frame_statistic() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca [1000 x i8], align 16
  store %struct._IO_FILE* null, %struct._IO_FILE** %1, align 8
  %8 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %8, %struct._IO_FILE** %1, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %0
  %11 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** %1, align 8
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %22

; <label>:15:                                     ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.10, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %15, %13
  br label %31

; <label>:23:                                     ; preds = %0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %25 = call i32 @fclose(%struct._IO_FILE* %24)
  %26 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %1, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %23
  %29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %30

; <label>:30:                                     ; preds = %28, %23
  br label %31

; <label>:31:                                     ; preds = %30, %22
  %32 = load i32, i32* @frame_statistic_start, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.11, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  br label %39

; <label>:39:                                     ; preds = %34, %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %42 = call i64 @time(i64* null) #5
  store i64 %42, i64* %5, align 8
  %43 = call i64 @time(i64* %5) #5
  %44 = call %struct.tm* @localtime(i64* %5) #5
  store %struct.tm* %44, %struct.tm** %6, align 8
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i32 0, i32 0
  %46 = load %struct.tm*, %struct.tm** %6, align 8
  %47 = call i64 @strftime(i8* %45, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct.tm* %46) #5
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %49 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i32 0, i32 0
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* %49)
  %51 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i32 0, i32 0
  %52 = load %struct.tm*, %struct.tm** %6, align 8
  %53 = call i64 @strftime(i8* %51, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.tm* %52) #5
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %55 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i32 0, i32 0
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %55)
  store i32 0, i32* %2, align 4
  br label %57

; <label>:57:                                     ; preds = %88, %39
  %58 = load i32, i32* %2, align 4
  %59 = icmp slt i32 %58, 20
  br i1 %59, label %60, label %91

; <label>:60:                                     ; preds = %57
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 26
  %63 = load i32, i32* %2, align 4
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 26
  %66 = getelementptr inbounds [200 x i8], [200 x i8]* %65, i32 0, i32 0
  %67 = call i64 @strlen(i8* %66) #6
  %68 = sub i64 %67, 20
  %69 = trunc i64 %68 to i32
  %70 = icmp sgt i32 0, %69
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %60
  br label %79

; <label>:72:                                     ; preds = %60
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %74 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 26
  %75 = getelementptr inbounds [200 x i8], [200 x i8]* %74, i32 0, i32 0
  %76 = call i64 @strlen(i8* %75) #6
  %77 = sub i64 %76, 20
  %78 = trunc i64 %77 to i32
  br label %79

; <label>:79:                                     ; preds = %72, %71
  %80 = phi i32 [ 0, %71 ], [ %78, %72 ]
  %81 = add nsw i32 %63, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [200 x i8], [200 x i8]* %62, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %86
  store i8 %84, i8* %87, align 1
  br label %88

; <label>:88:                                     ; preds = %79
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %2, align 4
  br label %57

; <label>:91:                                     ; preds = %57
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %93)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %96 = load i32, i32* @frame_no, align 4
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %101)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 91
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %108 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 92
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 %106, i32 %109)
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 105
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

; <label>:115:                                    ; preds = %91
  %116 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %117 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %4, align 4
  br label %128

; <label>:119:                                    ; preds = %91
  %120 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %121 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @report_frame_statistic.last_bit_ctr_n, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %4, align 4
  %125 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %126 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* @report_frame_statistic.last_bit_ctr_n, align 4
  br label %128

; <label>:128:                                    ; preds = %119, %115
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %130)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %133 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %134 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %133, i32 0, i32 0
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %138 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %137, i32 0, i32 1
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  %141 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %142 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %141, i32 0, i32 2
  %143 = load float, float* %142, align 4
  %144 = fpext float %143 to double
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), double %136, double %140, double %144)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %147 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %148 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %147, i32 0, i32 20
  %149 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %148, i64 0, i64 2
  %150 = getelementptr inbounds [15 x i32], [15 x i32]* %149, i64 0, i64 9
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 2, i64 9), align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %153)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %156 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %157 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %156, i32 0, i32 20
  %158 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %157, i64 0, i64 2
  %159 = getelementptr inbounds [15 x i32], [15 x i32]* %158, i64 0, i64 13
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 2, i64 13), align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %162)
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %165 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %166 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %165, i32 0, i32 20
  %167 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %166, i64 0, i64 2
  %168 = getelementptr inbounds [15 x i32], [15 x i32]* %167, i64 0, i64 10
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 2, i64 10), align 8
  %171 = sub nsw i32 %169, %170
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %171)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %174 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %175 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %174, i32 0, i32 11
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %175, i64 0, i64 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 0), align 16
  %179 = sub nsw i32 %177, %178
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %179)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %182 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %183 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %182, i32 0, i32 11
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %183, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 1), align 4
  %187 = sub nsw i32 %185, %186
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %187)
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %190 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %191 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %190, i32 0, i32 11
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %191, i64 0, i64 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 2), align 8
  %195 = sub nsw i32 %193, %194
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %195)
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %198 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %199 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %198, i32 0, i32 11
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %199, i64 0, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 3), align 4
  %203 = sub nsw i32 %201, %202
  %204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %203)
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %206 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %207 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %206, i32 0, i32 20
  %208 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %207, i64 0, i64 0
  %209 = getelementptr inbounds [15 x i32], [15 x i32]* %208, i64 0, i64 9
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 9), align 4
  %212 = sub nsw i32 %210, %211
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %212)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %215 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %216 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %215, i32 0, i32 20
  %217 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %216, i64 0, i64 0
  %218 = getelementptr inbounds [15 x i32], [15 x i32]* %217, i64 0, i64 13
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 13), align 4
  %221 = sub nsw i32 %219, %220
  %222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %221)
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %224 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %225 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %224, i32 0, i32 20
  %226 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %225, i64 0, i64 0
  %227 = getelementptr inbounds [15 x i32], [15 x i32]* %226, i64 0, i64 10
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 10), align 8
  %230 = sub nsw i32 %228, %229
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %230)
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %233 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %234 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %233, i32 0, i32 20
  %235 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %234, i64 0, i64 0
  %236 = getelementptr inbounds [15 x i32], [15 x i32]* %235, i64 0, i64 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 0), align 16
  %239 = sub nsw i32 %237, %238
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %239)
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %242 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %243 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %242, i32 0, i32 20
  %244 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %243, i64 0, i64 0
  %245 = getelementptr inbounds [15 x i32], [15 x i32]* %244, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 1), align 4
  %248 = sub nsw i32 %246, %247
  %249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %248)
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %251 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %252 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %251, i32 0, i32 20
  %253 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %252, i64 0, i64 0
  %254 = getelementptr inbounds [15 x i32], [15 x i32]* %253, i64 0, i64 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 2), align 8
  %257 = sub nsw i32 %255, %256
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %257)
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %260 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %261 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %260, i32 0, i32 20
  %262 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %261, i64 0, i64 0
  %263 = getelementptr inbounds [15 x i32], [15 x i32]* %262, i64 0, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 3), align 4
  %266 = sub nsw i32 %264, %265
  %267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %266)
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %269 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %270 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %269, i32 0, i32 9
  %271 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %270, i64 0, i64 0
  %272 = getelementptr inbounds [15 x i32], [15 x i32]* %271, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %273)
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %276 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %277 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %276, i32 0, i32 10
  %278 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %277, i64 0, i64 0
  %279 = getelementptr inbounds [15 x i32], [15 x i32]* %278, i64 0, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %280)
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %283 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %284 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %283, i32 0, i32 9
  %285 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %284, i64 0, i64 0
  %286 = getelementptr inbounds [15 x i32], [15 x i32]* %285, i64 0, i64 2
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %287)
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %290 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %291 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %290, i32 0, i32 10
  %292 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %291, i64 0, i64 0
  %293 = getelementptr inbounds [15 x i32], [15 x i32]* %292, i64 0, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %294)
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %297 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %298 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %297, i32 0, i32 9
  %299 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %298, i64 0, i64 0
  %300 = getelementptr inbounds [15 x i32], [15 x i32]* %299, i64 0, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %301)
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %304 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %305 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %304, i32 0, i32 10
  %306 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %305, i64 0, i64 0
  %307 = getelementptr inbounds [15 x i32], [15 x i32]* %306, i64 0, i64 3
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %308)
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %311 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %312 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %311, i32 0, i32 20
  %313 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %312, i64 0, i64 0
  %314 = getelementptr inbounds [15 x i32], [15 x i32]* %313, i64 0, i64 8
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 8), align 16
  %317 = sub nsw i32 %315, %316
  %318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %317)
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %320 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %321 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %320, i32 0, i32 20
  %322 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %321, i64 0, i64 0
  %323 = getelementptr inbounds [15 x i32], [15 x i32]* %322, i64 0, i64 4
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 4), align 16
  %326 = sub nsw i32 %324, %325
  %327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %326)
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %329 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %330 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %329, i32 0, i32 9
  %331 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %330, i64 0, i64 0
  %332 = getelementptr inbounds [15 x i32], [15 x i32]* %331, i64 0, i64 4
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %333)
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %336 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %337 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %336, i32 0, i32 10
  %338 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %337, i64 0, i64 0
  %339 = getelementptr inbounds [15 x i32], [15 x i32]* %338, i64 0, i64 4
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %340)
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %343 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %344 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %343, i32 0, i32 20
  %345 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %344, i64 0, i64 0
  %346 = getelementptr inbounds [15 x i32], [15 x i32]* %345, i64 0, i64 5
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 5), align 4
  %349 = sub nsw i32 %347, %348
  %350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %349)
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %352 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %353 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %352, i32 0, i32 20
  %354 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %353, i64 0, i64 0
  %355 = getelementptr inbounds [15 x i32], [15 x i32]* %354, i64 0, i64 6
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 6), align 8
  %358 = sub nsw i32 %356, %357
  %359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %358)
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %361 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %362 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %361, i32 0, i32 20
  %363 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %362, i64 0, i64 0
  %364 = getelementptr inbounds [15 x i32], [15 x i32]* %363, i64 0, i64 7
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0, i64 7), align 4
  %367 = sub nsw i32 %365, %366
  %368 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %367)
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %370 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %371 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %370, i32 0, i32 20
  %372 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %371, i64 0, i64 1
  %373 = getelementptr inbounds [15 x i32], [15 x i32]* %372, i64 0, i64 9
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 9), align 4
  %376 = sub nsw i32 %374, %375
  %377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %369, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %376)
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %379 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %380 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %379, i32 0, i32 20
  %381 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %380, i64 0, i64 1
  %382 = getelementptr inbounds [15 x i32], [15 x i32]* %381, i64 0, i64 13
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 13), align 4
  %385 = sub nsw i32 %383, %384
  %386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %385)
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %388 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %389 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %388, i32 0, i32 20
  %390 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %389, i64 0, i64 1
  %391 = getelementptr inbounds [15 x i32], [15 x i32]* %390, i64 0, i64 10
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 10), align 4
  %394 = sub nsw i32 %392, %393
  %395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %387, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %394)
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %397 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %398 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %397, i32 0, i32 20
  %399 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %398, i64 0, i64 1
  %400 = getelementptr inbounds [15 x i32], [15 x i32]* %399, i64 0, i64 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 0), align 4
  %403 = sub nsw i32 %401, %402
  %404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %403)
  %405 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %406 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %407 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %406, i32 0, i32 20
  %408 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %407, i64 0, i64 1
  %409 = getelementptr inbounds [15 x i32], [15 x i32]* %408, i64 0, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 1), align 4
  %412 = sub nsw i32 %410, %411
  %413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %412)
  %414 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %415 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %416 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %415, i32 0, i32 20
  %417 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %416, i64 0, i64 1
  %418 = getelementptr inbounds [15 x i32], [15 x i32]* %417, i64 0, i64 2
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 2), align 4
  %421 = sub nsw i32 %419, %420
  %422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %414, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %421)
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %424 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %425 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %424, i32 0, i32 20
  %426 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %425, i64 0, i64 1
  %427 = getelementptr inbounds [15 x i32], [15 x i32]* %426, i64 0, i64 3
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 3), align 4
  %430 = sub nsw i32 %428, %429
  %431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %430)
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %433 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %434 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %433, i32 0, i32 9
  %435 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %434, i64 0, i64 1
  %436 = getelementptr inbounds [15 x i32], [15 x i32]* %435, i64 0, i64 0
  %437 = load i32, i32* %436, align 4
  %438 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %437)
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %440 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %441 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %440, i32 0, i32 10
  %442 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %441, i64 0, i64 1
  %443 = getelementptr inbounds [15 x i32], [15 x i32]* %442, i64 0, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %439, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %444)
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %447 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %448 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %447, i32 0, i32 9
  %449 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %448, i64 0, i64 1
  %450 = getelementptr inbounds [15 x i32], [15 x i32]* %449, i64 0, i64 1
  %451 = load i32, i32* %450, align 4
  %452 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %446, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %451)
  %453 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %454 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %455 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %454, i32 0, i32 10
  %456 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %455, i64 0, i64 1
  %457 = getelementptr inbounds [15 x i32], [15 x i32]* %456, i64 0, i64 1
  %458 = load i32, i32* %457, align 4
  %459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %453, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %458)
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %461 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %462 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %461, i32 0, i32 9
  %463 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %462, i64 0, i64 1
  %464 = getelementptr inbounds [15 x i32], [15 x i32]* %463, i64 0, i64 2
  %465 = load i32, i32* %464, align 4
  %466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %460, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %465)
  %467 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %468 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %469 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %468, i32 0, i32 10
  %470 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %469, i64 0, i64 1
  %471 = getelementptr inbounds [15 x i32], [15 x i32]* %470, i64 0, i64 2
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %467, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %472)
  %474 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %475 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %476 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %475, i32 0, i32 9
  %477 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %476, i64 0, i64 1
  %478 = getelementptr inbounds [15 x i32], [15 x i32]* %477, i64 0, i64 3
  %479 = load i32, i32* %478, align 4
  %480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %474, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %479)
  %481 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %482 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %483 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %482, i32 0, i32 10
  %484 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %483, i64 0, i64 1
  %485 = getelementptr inbounds [15 x i32], [15 x i32]* %484, i64 0, i64 3
  %486 = load i32, i32* %485, align 4
  %487 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %481, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %486)
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %489 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %490 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %489, i32 0, i32 20
  %491 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %490, i64 0, i64 1
  %492 = getelementptr inbounds [15 x i32], [15 x i32]* %491, i64 0, i64 8
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 8), align 4
  %495 = sub nsw i32 %493, %494
  %496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %495)
  %497 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %498 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %499 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %498, i32 0, i32 8
  %500 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %499, i64 0, i64 1
  %501 = getelementptr inbounds [2 x i32], [2 x i32]* %500, i64 0, i64 0
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %504 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %503, i32 0, i32 8
  %505 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %504, i64 0, i64 1
  %506 = getelementptr inbounds [2 x i32], [2 x i32]* %505, i64 0, i64 1
  %507 = load i32, i32* %506, align 4
  %508 = add nsw i32 %502, %507
  %509 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i64 0, i64 1, i64 0), align 8
  %510 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i64 0, i64 1, i64 1), align 4
  %511 = add nsw i32 %509, %510
  %512 = sub nsw i32 %508, %511
  %513 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %497, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %512)
  %514 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %515 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %516 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %515, i32 0, i32 8
  %517 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %516, i64 0, i64 1
  %518 = getelementptr inbounds [2 x i32], [2 x i32]* %517, i64 0, i64 1
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i64 0, i64 1, i64 1), align 4
  %521 = sub nsw i32 %519, %520
  %522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %514, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %521)
  %523 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %524 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %525 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %524, i32 0, i32 8
  %526 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %525, i64 0, i64 1
  %527 = getelementptr inbounds [2 x i32], [2 x i32]* %526, i64 0, i64 0
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i64 0, i64 1, i64 0), align 8
  %530 = sub nsw i32 %528, %529
  %531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %523, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %530)
  %532 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %533 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %534 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %533, i32 0, i32 20
  %535 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %534, i64 0, i64 1
  %536 = getelementptr inbounds [15 x i32], [15 x i32]* %535, i64 0, i64 4
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 4), align 4
  %539 = sub nsw i32 %537, %538
  %540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %532, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %539)
  %541 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %542 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %543 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %542, i32 0, i32 9
  %544 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %543, i64 0, i64 1
  %545 = getelementptr inbounds [15 x i32], [15 x i32]* %544, i64 0, i64 4
  %546 = load i32, i32* %545, align 4
  %547 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %541, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %546)
  %548 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %549 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %550 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %549, i32 0, i32 10
  %551 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %550, i64 0, i64 1
  %552 = getelementptr inbounds [15 x i32], [15 x i32]* %551, i64 0, i64 4
  %553 = load i32, i32* %552, align 4
  %554 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %548, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %553)
  %555 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %556 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %557 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %556, i32 0, i32 20
  %558 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %557, i64 0, i64 1
  %559 = getelementptr inbounds [15 x i32], [15 x i32]* %558, i64 0, i64 5
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 5), align 4
  %562 = sub nsw i32 %560, %561
  %563 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %555, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %562)
  %564 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %565 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %566 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %565, i32 0, i32 20
  %567 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %566, i64 0, i64 1
  %568 = getelementptr inbounds [15 x i32], [15 x i32]* %567, i64 0, i64 6
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 6), align 4
  %571 = sub nsw i32 %569, %570
  %572 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %564, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %571)
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %574 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %575 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %574, i32 0, i32 20
  %576 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %575, i64 0, i64 1
  %577 = getelementptr inbounds [15 x i32], [15 x i32]* %576, i64 0, i64 7
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1, i64 7), align 4
  %580 = sub nsw i32 %578, %579
  %581 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %573, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %580)
  %582 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %583 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %582, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %584 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %585 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %584, i32 0, i32 20
  %586 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %585, i64 0, i64 2
  %587 = getelementptr inbounds [15 x i32], [15 x i32]* %586, i64 0, i64 9
  %588 = load i32, i32* %587, align 4
  store i32 %588, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 2, i64 9), align 4
  %589 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %590 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %589, i32 0, i32 20
  %591 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %590, i64 0, i64 2
  %592 = getelementptr inbounds [15 x i32], [15 x i32]* %591, i64 0, i64 13
  %593 = load i32, i32* %592, align 4
  store i32 %593, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 2, i64 13), align 4
  %594 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %595 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %594, i32 0, i32 20
  %596 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %595, i64 0, i64 2
  %597 = getelementptr inbounds [15 x i32], [15 x i32]* %596, i64 0, i64 10
  %598 = load i32, i32* %597, align 8
  store i32 %598, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 2, i64 10), align 8
  store i32 0, i32* %2, align 4
  br label %599

; <label>:599:                                    ; preds = %647, %128
  %600 = load i32, i32* %2, align 4
  %601 = icmp slt i32 %600, 15
  br i1 %601, label %602, label %650

; <label>:602:                                    ; preds = %599
  %603 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %604 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %603, i32 0, i32 20
  %605 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %604, i64 0, i64 0
  %606 = load i32, i32* %2, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [15 x i32], [15 x i32]* %605, i64 0, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = load i32, i32* %2, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [15 x i32], [15 x i32]* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 0), i64 0, i64 %611
  store i32 %609, i32* %612, align 4
  %613 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %614 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %613, i32 0, i32 20
  %615 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %614, i64 0, i64 1
  %616 = load i32, i32* %2, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [15 x i32], [15 x i32]* %615, i64 0, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = load i32, i32* %2, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [15 x i32], [15 x i32]* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i64 0, i64 1), i64 0, i64 %621
  store i32 %619, i32* %622, align 4
  %623 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %624 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %623, i32 0, i32 9
  %625 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %624, i64 0, i64 0
  %626 = load i32, i32* %2, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [15 x i32], [15 x i32]* %625, i64 0, i64 %627
  store i32 0, i32* %628, align 4
  %629 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %630 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %629, i32 0, i32 9
  %631 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %630, i64 0, i64 1
  %632 = load i32, i32* %2, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [15 x i32], [15 x i32]* %631, i64 0, i64 %633
  store i32 0, i32* %634, align 4
  %635 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %636 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %635, i32 0, i32 10
  %637 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %636, i64 0, i64 0
  %638 = load i32, i32* %2, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [15 x i32], [15 x i32]* %637, i64 0, i64 %639
  store i32 0, i32* %640, align 4
  %641 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %642 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %641, i32 0, i32 10
  %643 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %642, i64 0, i64 1
  %644 = load i32, i32* %2, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [15 x i32], [15 x i32]* %643, i64 0, i64 %645
  store i32 0, i32* %646, align 4
  br label %647

; <label>:647:                                    ; preds = %602
  %648 = load i32, i32* %2, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %2, align 4
  br label %599

; <label>:650:                                    ; preds = %599
  %651 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %652 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %651, i32 0, i32 8
  %653 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %652, i64 0, i64 1
  %654 = getelementptr inbounds [2 x i32], [2 x i32]* %653, i64 0, i64 0
  %655 = load i32, i32* %654, align 8
  store i32 %655, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i64 0, i64 1, i64 0), align 8
  %656 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %657 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %656, i32 0, i32 8
  %658 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %657, i64 0, i64 1
  %659 = getelementptr inbounds [2 x i32], [2 x i32]* %658, i64 0, i64 1
  %660 = load i32, i32* %659, align 4
  store i32 %660, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i64 0, i64 1, i64 1), align 4
  store i32 0, i32* %2, align 4
  br label %661

; <label>:661:                                    ; preds = %674, %650
  %662 = load i32, i32* %2, align 4
  %663 = icmp slt i32 %662, 4
  br i1 %663, label %664, label %677

; <label>:664:                                    ; preds = %661
  %665 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %666 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %665, i32 0, i32 11
  %667 = load i32, i32* %2, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [4 x i32], [4 x i32]* %666, i64 0, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = load i32, i32* %2, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 %672
  store i32 %670, i32* %673, align 4
  br label %674

; <label>:674:                                    ; preds = %664
  %675 = load i32, i32* %2, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %2, align 4
  br label %661

; <label>:677:                                    ; preds = %661
  store i32 0, i32* @frame_statistic_start, align 4
  %678 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %679 = call i32 @fclose(%struct._IO_FILE* %678)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @report() #0 {
  %1 = alloca [5 x [2 x i32]], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [1000 x i8], align 16
  %11 = alloca [80 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @Iframe_ctr, align 4
  %15 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 2
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %14, i32* %16, align 16
  %17 = load i32, i32* @Pframe_ctr, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %0
  %20 = load i32, i32* @Pframe_ctr, align 4
  br label %22

; <label>:21:                                     ; preds = %0
  br label %22

; <label>:22:                                     ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 1, %21 ]
  %24 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %23, i32* %25, align 16
  %26 = load i32, i32* @Bframe_ctr, align 4
  %27 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %37, %22
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %40

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %34
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 0, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %29

; <label>:40:                                     ; preds = %29
  store i32 0, i32* %3, align 4
  br label %41

; <label>:41:                                     ; preds = %152, %40
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %155

; <label>:44:                                     ; preds = %41
  store i32 0, i32* %2, align 4
  br label %45

; <label>:45:                                     ; preds = %64, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 15
  br i1 %47, label %48, label %67

; <label>:48:                                     ; preds = %45
  %49 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %50 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %49, i32 0, i32 21
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %50, i64 0, i64 %52
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [15 x i32], [15 x i32]* %53, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %57
  store i32 %63, i32* %61, align 4
  br label %64

; <label>:64:                                     ; preds = %48
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %45

; <label>:67:                                     ; preds = %45
  %68 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %69 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %68, i32 0, i32 24
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %81 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %80, i32 0, i32 23
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %81, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %87
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %88, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %93 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %92, i32 0, i32 25
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %93, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %99
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %97
  store i32 %103, i32* %101, align 4
  %104 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %105 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %104, i32 0, i32 26
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %105, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %111
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %117 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %116, i32 0, i32 27
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %117, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %123
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %124, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %121
  store i32 %127, i32* %125, align 4
  %128 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %129 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %128, i32 0, i32 28
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %129, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %135
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %136, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %133
  store i32 %139, i32* %137, align 4
  %140 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %141 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %140, i32 0, i32 22
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %141, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1, i64 0, i64 %147
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %148, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

; <label>:152:                                    ; preds = %67
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %41

; <label>:155:                                    ; preds = %41
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 12
  %158 = load float, float* %157, align 8
  %159 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %160 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %159, i32 0, i32 34
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  %163 = sitofp i32 %162 to float
  %164 = fmul float %158, %163
  %165 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %166 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = sitofp i32 %168 to float
  %170 = fdiv float %164, %169
  store float %170, float* %6, align 4
  %171 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %172 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 8
  %174 = sitofp i32 %173 to float
  %175 = load float, float* %6, align 4
  %176 = fmul float %174, %175
  %177 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %178 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @Bframe_ctr, align 4
  %181 = add nsw i32 %179, %180
  %182 = sitofp i32 %181 to float
  %183 = fdiv float %176, %182
  %184 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %185 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %184, i32 0, i32 17
  store float %183, float* %185, align 4
  %186 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %187 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %186, i32 0, i32 15
  %188 = load i32, i32* %187, align 4
  %189 = sitofp i32 %188 to float
  %190 = load float, float* %6, align 4
  %191 = fmul float %189, %190
  %192 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %193 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @Bframe_ctr, align 4
  %196 = add nsw i32 %194, %195
  %197 = sitofp i32 %196 to float
  %198 = fdiv float %191, %197
  %199 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %200 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %199, i32 0, i32 18
  store float %198, float* %200, align 8
  %201 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %202 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %201, i32 0, i32 16
  %203 = load i32, i32* %202, align 8
  %204 = sitofp i32 %203 to float
  %205 = load float, float* %6, align 4
  %206 = fmul float %204, %205
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %208 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @Bframe_ctr, align 4
  %211 = add nsw i32 %209, %210
  %212 = sitofp i32 %211 to float
  %213 = fdiv float %206, %212
  %214 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %215 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %214, i32 0, i32 19
  store float %213, float* %215, align 4
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 12
  %221 = load float, float* %220, align 8
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %223 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  %226 = sitofp i32 %225 to float
  %227 = fdiv float %221, %226
  %228 = fpext float %227 to double
  %229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), double %228)
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %231 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %246

; <label>:234:                                    ; preds = %155
  %235 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %236 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

; <label>:239:                                    ; preds = %234
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i32 0, i32 0))
  br label %245

; <label>:242:                                    ; preds = %234
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0))
  br label %245

; <label>:245:                                    ; preds = %242, %239
  br label %249

; <label>:246:                                    ; preds = %155
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0))
  br label %249

; <label>:249:                                    ; preds = %246, %245
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %251 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %251, i32 0, i32 16
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %255 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %254, i32 0, i32 17
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0), i32 %253, i32 %256)
  %258 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %259 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %258, i32 0, i32 19
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

; <label>:262:                                    ; preds = %249
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %263, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0))
  br label %268

; <label>:265:                                    ; preds = %249
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %266, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0))
  br label %268

; <label>:268:                                    ; preds = %265, %262
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %270 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %271 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 8
  %273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 %272)
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %275 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %276 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %275, i32 0, i32 9
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0), i32 %277)
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %280 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %281 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %280, i32 0, i32 10
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

; <label>:284:                                    ; preds = %268
  %285 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %286 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 8
  br label %292

; <label>:288:                                    ; preds = %268
  %289 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %290 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %289, i32 0, i32 9
  %291 = load i32, i32* %290, align 4
  br label %292

; <label>:292:                                    ; preds = %288, %284
  %293 = phi i32 [ %287, %284 ], [ %291, %288 ]
  %294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i32 %293)
  %295 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %296 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %295, i32 0, i32 34
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %332

; <label>:299:                                    ; preds = %292
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %301 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %302 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

; <label>:305:                                    ; preds = %299
  %306 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %307 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %306, i32 0, i32 11
  %308 = load i32, i32* %307, align 4
  br label %313

; <label>:309:                                    ; preds = %299
  %310 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %311 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 4
  br label %313

; <label>:313:                                    ; preds = %309, %305
  %314 = phi i32 [ %308, %305 ], [ %312, %309 ]
  %315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 %314)
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %317 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %318 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %317, i32 0, i32 12
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

; <label>:321:                                    ; preds = %313
  %322 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %323 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %322, i32 0, i32 12
  %324 = load i32, i32* %323, align 8
  br label %329

; <label>:325:                                    ; preds = %313
  %326 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %327 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %326, i32 0, i32 9
  %328 = load i32, i32* %327, align 4
  br label %329

; <label>:329:                                    ; preds = %325, %321
  %330 = phi i32 [ %324, %321 ], [ %328, %325 ]
  %331 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %316, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 %330)
  br label %332

; <label>:332:                                    ; preds = %329, %292
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %334 = load i32, i32* @tot_time, align 4
  %335 = sitofp i32 %334 to double
  %336 = fmul double %335, 1.000000e-03
  %337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %333, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.39, i32 0, i32 0), double %336)
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %339 = load i32, i32* @me_tot_time, align 4
  %340 = sitofp i32 %339 to double
  %341 = fmul double %340, 1.000000e-03
  %342 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0), double %341)
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %343, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0))
  %345 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %346 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %345, i32 0, i32 34
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %366

; <label>:349:                                    ; preds = %332
  %350 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %351 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %350, i32 0, i32 55
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %366

; <label>:354:                                    ; preds = %349
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %356 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %357 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %360 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %363 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %362, i32 0, i32 35
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %355, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i32 %358, i32 %361, i32 %364)
  br label %543

; <label>:366:                                    ; preds = %349, %332
  %367 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %368 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %367, i32 0, i32 34
  %369 = load i32, i32* %368, align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %507

; <label>:371:                                    ; preds = %366
  %372 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %373 = call i8* @strcpy(i8* %372, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  store i32 0, i32* %13, align 4
  br label %374

; <label>:374:                                    ; preds = %444, %371
  %375 = load i32, i32* %13, align 4
  %376 = icmp slt i32 %375, 2
  br i1 %376, label %377, label %447

; <label>:377:                                    ; preds = %374
  store i32 0, i32* %12, align 4
  br label %378

; <label>:378:                                    ; preds = %424, %377
  %379 = load i32, i32* %12, align 4
  %380 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %381 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %380, i32 0, i32 34
  %382 = load i32, i32* %381, align 4
  %383 = icmp slt i32 %379, %382
  br i1 %383, label %384, label %427

; <label>:384:                                    ; preds = %378
  %385 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %386 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %385, i32 0, i32 54
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %406

; <label>:389:                                    ; preds = %384
  %390 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %391 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %392 = call i64 @strlen(i8* %391) #6
  %393 = sub i64 79, %392
  %394 = trunc i64 %393 to i32
  %395 = icmp sgt i32 0, %394
  br i1 %395, label %396, label %397

; <label>:396:                                    ; preds = %389
  br label %402

; <label>:397:                                    ; preds = %389
  %398 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %399 = call i64 @strlen(i8* %398) #6
  %400 = sub i64 79, %399
  %401 = trunc i64 %400 to i32
  br label %402

; <label>:402:                                    ; preds = %397, %396
  %403 = phi i32 [ 0, %396 ], [ %401, %397 ]
  %404 = sext i32 %403 to i64
  %405 = call i8* @strncat(i8* %390, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i64 %404) #5
  br label %423

; <label>:406:                                    ; preds = %384
  %407 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %408 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %409 = call i64 @strlen(i8* %408) #6
  %410 = sub i64 79, %409
  %411 = trunc i64 %410 to i32
  %412 = icmp sgt i32 0, %411
  br i1 %412, label %413, label %414

; <label>:413:                                    ; preds = %406
  br label %419

; <label>:414:                                    ; preds = %406
  %415 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %416 = call i64 @strlen(i8* %415) #6
  %417 = sub i64 79, %416
  %418 = trunc i64 %417 to i32
  br label %419

; <label>:419:                                    ; preds = %414, %413
  %420 = phi i32 [ 0, %413 ], [ %418, %414 ]
  %421 = sext i32 %420 to i64
  %422 = call i8* @strncat(i8* %407, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i64 %421) #5
  br label %423

; <label>:423:                                    ; preds = %419, %402
  br label %424

; <label>:424:                                    ; preds = %423
  %425 = load i32, i32* %12, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %12, align 4
  br label %378

; <label>:427:                                    ; preds = %378
  %428 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %429 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %430 = call i64 @strlen(i8* %429) #6
  %431 = sub i64 79, %430
  %432 = trunc i64 %431 to i32
  %433 = icmp sgt i32 0, %432
  br i1 %433, label %434, label %435

; <label>:434:                                    ; preds = %427
  br label %440

; <label>:435:                                    ; preds = %427
  %436 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %437 = call i64 @strlen(i8* %436) #6
  %438 = sub i64 79, %437
  %439 = trunc i64 %438 to i32
  br label %440

; <label>:440:                                    ; preds = %435, %434
  %441 = phi i32 [ 0, %434 ], [ %439, %435 ]
  %442 = sext i32 %441 to i64
  %443 = call i8* @strncat(i8* %428, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i64 %442) #5
  br label %444

; <label>:444:                                    ; preds = %440
  %445 = load i32, i32* %13, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %13, align 4
  br label %374

; <label>:447:                                    ; preds = %374
  %448 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %449 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %448, i32 0, i32 54
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %493

; <label>:452:                                    ; preds = %447
  %453 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %454 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %455 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %456 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %459 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %462 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %461, i32 0, i32 35
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %465 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %464, i32 0, i32 36
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %463, %466
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %470

; <label>:469:                                    ; preds = %452
  br label %490

; <label>:470:                                    ; preds = %452
  %471 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %472 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %471, i32 0, i32 35
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %475 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %474, i32 0, i32 36
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %473, %476
  %478 = icmp sgt i32 %477, 51
  br i1 %478, label %479, label %480

; <label>:479:                                    ; preds = %470
  br label %488

; <label>:480:                                    ; preds = %470
  %481 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %482 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %481, i32 0, i32 35
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %485 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %484, i32 0, i32 36
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %483, %486
  br label %488

; <label>:488:                                    ; preds = %480, %479
  %489 = phi i32 [ 51, %479 ], [ %487, %480 ]
  br label %490

; <label>:490:                                    ; preds = %488, %469
  %491 = phi i32 [ 0, %469 ], [ %489, %488 ]
  %492 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %453, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* %454, i32 %457, i32 %460, i32 %491)
  br label %506

; <label>:493:                                    ; preds = %447
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %495 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0
  %496 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %497 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %500 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %499, i32 0, i32 4
  %501 = load i32, i32* %500, align 8
  %502 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %503 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %502, i32 0, i32 35
  %504 = load i32, i32* %503, align 8
  %505 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %494, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i8* %495, i32 %498, i32 %501, i32 %504)
  br label %506

; <label>:506:                                    ; preds = %493, %490
  br label %542

; <label>:507:                                    ; preds = %366
  %508 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %509 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %508, i32 0, i32 34
  %510 = load i32, i32* %509, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %526

; <label>:512:                                    ; preds = %507
  %513 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %514 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %513, i32 0, i32 43
  %515 = load i32, i32* %514, align 8
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %526

; <label>:517:                                    ; preds = %512
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %519 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %520 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %523 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 8
  %525 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %518, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), i32 %521, i32 %524)
  br label %541

; <label>:526:                                    ; preds = %512, %507
  %527 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %528 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %529 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %532 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %535 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %534, i32 0, i32 44
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %538 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %537, i32 0, i32 45
  %539 = load i32, i32* %538, align 8
  %540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %527, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.50, i32 0, i32 0), i32 %530, i32 %533, i32 %536, i32 %539)
  br label %541

; <label>:541:                                    ; preds = %526, %517
  br label %542

; <label>:542:                                    ; preds = %541, %506
  br label %543

; <label>:543:                                    ; preds = %542, %354
  %544 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %545 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %544, i32 0, i32 59
  %546 = load i32, i32* %545, align 4
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %551

; <label>:548:                                    ; preds = %543
  %549 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %550 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %549, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.51, i32 0, i32 0))
  br label %554

; <label>:551:                                    ; preds = %543
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %552, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.52, i32 0, i32 0))
  br label %554

; <label>:554:                                    ; preds = %551, %548
  %555 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %556 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %557 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %560 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %555, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i32 0, i32 0), i32 %558, i32 %561)
  %563 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %564 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %563, i32 0, i32 78
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, 2
  br i1 %566, label %567, label %570

; <label>:567:                                    ; preds = %554
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %569 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0))
  br label %582

; <label>:570:                                    ; preds = %554
  %571 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %572 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %571, i32 0, i32 78
  %573 = load i32, i32* %572, align 4
  %574 = icmp eq i32 %573, 1
  br i1 %574, label %575, label %578

; <label>:575:                                    ; preds = %570
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %577 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %576, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i32 0, i32 0))
  br label %581

; <label>:578:                                    ; preds = %570
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %580 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %579, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.56, i32 0, i32 0))
  br label %581

; <label>:581:                                    ; preds = %578, %575
  br label %582

; <label>:582:                                    ; preds = %581, %567
  %583 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %584 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %583, i32 0, i32 85
  %585 = load i32, i32* %584, align 8
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %590

; <label>:587:                                    ; preds = %582
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %589 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %588, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i32 0, i32 0))
  br label %593

; <label>:590:                                    ; preds = %582
  %591 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %592 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %591, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.58, i32 0, i32 0))
  br label %593

; <label>:593:                                    ; preds = %590, %587
  %594 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %595 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %594, i32 0, i32 61
  %596 = load i32, i32* %595, align 4
  switch i32 %596, label %603 [
    i32 0, label %597
    i32 1, label %600
  ]

; <label>:597:                                    ; preds = %593
  %598 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %599 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %598, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.59, i32 0, i32 0))
  br label %606

; <label>:600:                                    ; preds = %593
  %601 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %602 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %601, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i32 0, i32 0))
  br label %606

; <label>:603:                                    ; preds = %593
  %604 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %605 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %604, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i32 0, i32 0))
  br label %606

; <label>:606:                                    ; preds = %603, %600, %597
  %607 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %608 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %607, i32 0, i32 60
  %609 = load i32, i32* %608, align 8
  switch i32 %609, label %616 [
    i32 0, label %610
    i32 1, label %613
  ]

; <label>:610:                                    ; preds = %606
  %611 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %612 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.62, i32 0, i32 0))
  br label %619

; <label>:613:                                    ; preds = %606
  %614 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %615 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %614, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.63, i32 0, i32 0))
  br label %619

; <label>:616:                                    ; preds = %606
  %617 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %618 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %617, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i32 0, i32 0))
  br label %619

; <label>:619:                                    ; preds = %616, %613, %610
  %620 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %621 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %620, i32 0, i32 143
  %622 = load i32, i32* %621, align 8
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %627

; <label>:624:                                    ; preds = %619
  %625 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %626 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %625, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i32 0, i32 0))
  br label %630

; <label>:627:                                    ; preds = %619
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %629 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %628, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i32 0, i32 0))
  br label %630

; <label>:630:                                    ; preds = %627, %624
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %631, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.67, i32 0, i32 0))
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %634 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %635 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %634, i32 0, i32 9
  %636 = load float, float* %635, align 4
  %637 = fpext float %636 to double
  %638 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %633, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.68, i32 0, i32 0), double %637)
  %639 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %640 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %641 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %640, i32 0, i32 10
  %642 = load float, float* %641, align 4
  %643 = fpext float %642 to double
  %644 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %639, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0), double %643)
  %645 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %646 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %647 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %646, i32 0, i32 11
  %648 = load float, float* %647, align 4
  %649 = fpext float %648 to double
  %650 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %645, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.70, i32 0, i32 0), double %649)
  %651 = load i32, i32* @Bframe_ctr, align 4
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %720

; <label>:653:                                    ; preds = %630
  %654 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %655 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %656 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %655, i32 0, i32 15
  %657 = load i32, i32* %656, align 4
  %658 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %659 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %658, i32 0, i32 14
  %660 = load i32, i32* %659, align 8
  %661 = add nsw i32 %657, %660
  %662 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %663 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %662, i32 0, i32 16
  %664 = load i32, i32* %663, align 8
  %665 = add nsw i32 %661, %664
  %666 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %667 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %666, i32 0, i32 32
  %668 = load i32, i32* %667, align 8
  %669 = add nsw i32 %665, %668
  store i32 %669, i32* %5, align 4
  %670 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %671 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %670, i32 0, i32 14
  %672 = load i32, i32* %671, align 8
  %673 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %674 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %673, i32 0, i32 15
  %675 = load i32, i32* %674, align 4
  %676 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %677 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %676, i32 0, i32 16
  %678 = load i32, i32* %677, align 8
  %679 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %680 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %679, i32 0, i32 32
  %681 = load i32, i32* %680, align 8
  %682 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %654, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.71, i32 0, i32 0), i32 %669, i32 %672, i32 %675, i32 %678, i32 %681)
  %683 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %684 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %683, i32 0, i32 12
  %685 = load float, float* %684, align 8
  %686 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %687 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %686, i32 0, i32 34
  %688 = load i32, i32* %687, align 4
  %689 = add nsw i32 %688, 1
  %690 = sitofp i32 %689 to float
  %691 = fmul float %685, %690
  %692 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %693 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %692, i32 0, i32 5
  %694 = load i32, i32* %693, align 4
  %695 = add nsw i32 %694, 1
  %696 = sitofp i32 %695 to float
  %697 = fdiv float %691, %696
  store float %697, float* %6, align 4
  %698 = load i32, i32* %5, align 4
  %699 = sitofp i32 %698 to float
  %700 = load float, float* %6, align 4
  %701 = fmul float %699, %700
  %702 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %703 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %702, i32 0, i32 2
  %704 = load i32, i32* %703, align 8
  %705 = load i32, i32* @Bframe_ctr, align 4
  %706 = add nsw i32 %704, %705
  %707 = sitofp i32 %706 to float
  %708 = fdiv float %701, %707
  %709 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %710 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %709, i32 0, i32 3
  store float %708, float* %710, align 4
  %711 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %712 = load float, float* %6, align 4
  %713 = fpext float %712 to double
  %714 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %715 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %714, i32 0, i32 3
  %716 = load float, float* %715, align 4
  %717 = fdiv float %716, 1.000000e+03
  %718 = fpext float %717 to double
  %719 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %711, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double %713, double %718)
  br label %830

; <label>:720:                                    ; preds = %630
  %721 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %722 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %721, i32 0, i32 43
  %723 = load i32, i32* %722, align 8
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %777

; <label>:725:                                    ; preds = %720
  %726 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %727 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %728 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %727, i32 0, i32 15
  %729 = load i32, i32* %728, align 4
  %730 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %731 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %730, i32 0, i32 14
  %732 = load i32, i32* %731, align 8
  %733 = add nsw i32 %729, %732
  %734 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %735 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %734, i32 0, i32 32
  %736 = load i32, i32* %735, align 8
  %737 = add nsw i32 %733, %736
  store i32 %737, i32* %5, align 4
  %738 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %739 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %738, i32 0, i32 14
  %740 = load i32, i32* %739, align 8
  %741 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %742 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %741, i32 0, i32 15
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %745 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %744, i32 0, i32 32
  %746 = load i32, i32* %745, align 8
  %747 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %726, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.73, i32 0, i32 0), i32 %737, i32 %740, i32 %743, i32 %746)
  %748 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %749 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %748, i32 0, i32 12
  %750 = load float, float* %749, align 8
  %751 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %752 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %751, i32 0, i32 5
  %753 = load i32, i32* %752, align 4
  %754 = add nsw i32 %753, 1
  %755 = sitofp i32 %754 to float
  %756 = fdiv float %750, %755
  store float %756, float* %6, align 4
  %757 = load i32, i32* %5, align 4
  %758 = sitofp i32 %757 to float
  %759 = load float, float* %6, align 4
  %760 = fmul float %758, %759
  %761 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %762 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %761, i32 0, i32 2
  %763 = load i32, i32* %762, align 8
  %764 = sitofp i32 %763 to float
  %765 = fdiv float %760, %764
  %766 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %767 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %766, i32 0, i32 3
  store float %765, float* %767, align 4
  %768 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %769 = load float, float* %6, align 4
  %770 = fpext float %769 to double
  %771 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %772 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %771, i32 0, i32 3
  %773 = load float, float* %772, align 4
  %774 = fdiv float %773, 1.000000e+03
  %775 = fpext float %774 to double
  %776 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %768, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double %770, double %775)
  br label %829

; <label>:777:                                    ; preds = %720
  %778 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %779 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %780 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %779, i32 0, i32 15
  %781 = load i32, i32* %780, align 4
  %782 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %783 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %782, i32 0, i32 14
  %784 = load i32, i32* %783, align 8
  %785 = add nsw i32 %781, %784
  %786 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %787 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %786, i32 0, i32 32
  %788 = load i32, i32* %787, align 8
  %789 = add nsw i32 %785, %788
  store i32 %789, i32* %5, align 4
  %790 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %791 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %790, i32 0, i32 14
  %792 = load i32, i32* %791, align 8
  %793 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %794 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %793, i32 0, i32 15
  %795 = load i32, i32* %794, align 4
  %796 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %797 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %796, i32 0, i32 32
  %798 = load i32, i32* %797, align 8
  %799 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %778, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.73, i32 0, i32 0), i32 %789, i32 %792, i32 %795, i32 %798)
  %800 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %801 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %800, i32 0, i32 12
  %802 = load float, float* %801, align 8
  %803 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %804 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %803, i32 0, i32 5
  %805 = load i32, i32* %804, align 4
  %806 = add nsw i32 %805, 1
  %807 = sitofp i32 %806 to float
  %808 = fdiv float %802, %807
  store float %808, float* %6, align 4
  %809 = load i32, i32* %5, align 4
  %810 = sitofp i32 %809 to float
  %811 = load float, float* %6, align 4
  %812 = fmul float %810, %811
  %813 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %814 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %813, i32 0, i32 2
  %815 = load i32, i32* %814, align 8
  %816 = sitofp i32 %815 to float
  %817 = fdiv float %812, %816
  %818 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %819 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %818, i32 0, i32 3
  store float %817, float* %819, align 4
  %820 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %821 = load float, float* %6, align 4
  %822 = fpext float %821 to double
  %823 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %824 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %823, i32 0, i32 3
  %825 = load float, float* %824, align 4
  %826 = fdiv float %825, 1.000000e+03
  %827 = fpext float %826 to double
  %828 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %820, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double %822, double %827)
  br label %829

; <label>:829:                                    ; preds = %777, %725
  br label %830

; <label>:830:                                    ; preds = %829, %653
  %831 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %832 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %833 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %832, i32 0, i32 7
  %834 = load i32, i32* %833, align 4
  %835 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %831, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i32 0, i32 0), i32 %834)
  %836 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %837 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %838 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %837, i32 0, i32 32
  %839 = load i32, i32* %838, align 8
  %840 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %836, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i32 0, i32 0), i32 %839)
  %841 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %842 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %841, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  %843 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %844 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %843, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %845 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %846 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %845, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %847 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %848 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %847, i32 0, i32 125
  %849 = load i32, i32* %848, align 4
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %862

; <label>:851:                                    ; preds = %830
  %852 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %852, %struct._IO_FILE** @p_log, align 8
  %853 = icmp eq %struct._IO_FILE* %852, null
  br i1 %853, label %854, label %856

; <label>:854:                                    ; preds = %851
  %855 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %861

; <label>:856:                                    ; preds = %851
  %857 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %858 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %857, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  %859 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %860 = call i32 @fclose(%struct._IO_FILE* %859)
  br label %861

; <label>:861:                                    ; preds = %856, %854
  br label %862

; <label>:862:                                    ; preds = %861, %830
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define void @information_init() #0 {
  %1 = alloca [4 x [10 x i8]], align 16
  %2 = bitcast [4 x [10 x i8]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([4 x [10 x i8]], [4 x [10 x i8]]* @information_init.yuv_types, i32 0, i32 0, i32 0), i64 40, i32 16, i1 false)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 26
  %6 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i32 0, i32 0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.79, i32 0, i32 0), i8* %6)
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 27
  %10 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i32 0, i32 0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.80, i32 0, i32 0), i8* %10)
  %12 = load i32, i32* @p_dec, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %0
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 28
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i32 0, i32 0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i32 0, i32 0), i8* %17)
  br label %19

; <label>:19:                                     ; preds = %14, %0
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 159
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x [10 x i8]], [4 x [10 x i8]]* %1, i64 0, i64 %23
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i32 0, i32 0), i8* %25)
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 34
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = mul nsw i32 %32, %36
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i32 0, i32 0), i32 %29, i32 %37)
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 91
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %43 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 92
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.84, i32 0, i32 0), i32 %41, i32 %44)
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 123
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.85, i32 0, i32 0), i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.86, i32 0, i32 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @init_orig_buffers() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 15
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 13
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @get_mem2Dpel(i16*** @imgY_org_frm, i32 %4, i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 159
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %0
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_mem3Dpel(i16**** @imgUV_org_frm, i32 2, i32 %18, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %25

; <label>:25:                                     ; preds = %15, %0
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %27 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %26, i32 0, i32 25
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %91, label %30

; <label>:30:                                     ; preds = %25
  %31 = load i16**, i16*** @imgY_org_frm, align 8
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @init_top_bot_planes(i16** %31, i32 %34, i32 %37, i16*** @imgY_org_top, i16*** @imgY_org_bot)
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 159
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %90

; <label>:43:                                     ; preds = %30
  %44 = call noalias i8* @calloc(i64 2, i64 8) #5
  %45 = bitcast i8* %44 to i16***
  store i16*** %45, i16**** @imgUV_org_top, align 8
  %46 = icmp eq i16*** %45, null
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0))
  br label %48

; <label>:48:                                     ; preds = %47, %43
  %49 = call noalias i8* @calloc(i64 2, i64 8) #5
  %50 = bitcast i8* %49 to i16***
  store i16*** %50, i16**** @imgUV_org_bot, align 8
  %51 = icmp eq i16*** %50, null
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %48
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.88, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %52, %48
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 32
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %1, align 4
  %58 = load i16***, i16**** @imgUV_org_frm, align 8
  %59 = getelementptr inbounds i16**, i16*** %58, i64 0
  %60 = load i16**, i16*** %59, align 8
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 16
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  %67 = load i16***, i16**** @imgUV_org_top, align 8
  %68 = getelementptr inbounds i16**, i16*** %67, i64 0
  %69 = load i16***, i16**** @imgUV_org_bot, align 8
  %70 = getelementptr inbounds i16**, i16*** %69, i64 0
  %71 = call i32 @init_top_bot_planes(i16** %60, i32 %63, i32 %66, i16*** %68, i16*** %70)
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %1, align 4
  %74 = load i16***, i16**** @imgUV_org_frm, align 8
  %75 = getelementptr inbounds i16**, i16*** %74, i64 1
  %76 = load i16**, i16*** %75, align 8
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 16
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = load i16***, i16**** @imgUV_org_top, align 8
  %84 = getelementptr inbounds i16**, i16*** %83, i64 1
  %85 = load i16***, i16**** @imgUV_org_bot, align 8
  %86 = getelementptr inbounds i16**, i16*** %85, i64 1
  %87 = call i32 @init_top_bot_planes(i16** %76, i32 %79, i32 %82, i16*** %84, i16*** %86)
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %1, align 4
  br label %90

; <label>:90:                                     ; preds = %53, %30
  br label %91

; <label>:91:                                     ; preds = %90, %25
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare i32 @get_mem2Dpel(i16***, i32, i32) #1

declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #1

declare i32 @init_top_bot_planes(i16**, i32, i32, i16***, i16***) #1

; Function Attrs: noinline nounwind uwtable
define i32 @init_global_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 2, %5
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = call noalias i8* @malloc(i64 %8) #5
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @last_P_no_frm, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %0
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %0
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 25
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

; <label>:18:                                     ; preds = %13
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 4, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call noalias i8* @malloc(i64 %24) #5
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** @last_P_no_fld, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %18
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %28, %18
  br label %30

; <label>:30:                                     ; preds = %29, %13
  %31 = call i32 @init_orig_buffers()
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %2, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 46
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

; <label>:38:                                     ; preds = %30
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 47
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %38
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %45 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %43, %38, %30
  %49 = call i32 @get_mem3Dint(i32**** @wp_weight, i32 6, i32 15, i32 3)
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %2, align 4
  %52 = call i32 @get_mem3Dint(i32**** @wp_offset, i32 6, i32 15, i32 3)
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %2, align 4
  %55 = call i32 @get_mem4Dint(i32***** @wbp_weight, i32 6, i32 15, i32 15, i32 3)
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %2, align 4
  br label %58

; <label>:58:                                     ; preds = %48, %43
  %59 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %60 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %59, i32 0, i32 34
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

; <label>:63:                                     ; preds = %58
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 54
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %91

; <label>:68:                                     ; preds = %63, %58
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 4
  %77 = call i32 @get_mem3Dshort(i16**** @direct_ref_idx, i32 2, i32 %72, i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %2, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 4
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 4
  %88 = call i32 @get_mem2Dshort(i16*** @direct_pdir, i32 %83, i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %2, align 4
  br label %91

; <label>:91:                                     ; preds = %68, %63
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 8
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %97 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 8
  %100 = mul nsw i32 %99, 4
  %101 = call i32 @get_mem2Dint(i32*** @img4Y_tmp, i32 %95, i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %2, align 4
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 85
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %214

; <label>:108:                                    ; preds = %91
  %109 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %110 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %109, i32 0, i32 0
  %111 = call i32 @get_mem2Dint(i32*** %110, i32 16, i32 16)
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %2, align 4
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 97
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = call noalias i8* @calloc(i64 %117, i64 8) #5
  %119 = bitcast i8* %118 to i16****
  %120 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %121 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %120, i32 0, i32 2
  store i16**** %119, i16***** %121, align 8
  %122 = icmp eq i16**** %119, null
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %108
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0))
  br label %124

; <label>:124:                                    ; preds = %123, %108
  store i32 0, i32* %1, align 4
  br label %125

; <label>:125:                                    ; preds = %151, %124
  %126 = load i32, i32* %1, align 4
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %128 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 97
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %154

; <label>:131:                                    ; preds = %125
  %132 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %133 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %132, i32 0, i32 2
  %134 = load i16****, i16***** %133, align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16***, i16**** %134, i64 %136
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 15
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @get_mem3Dpel(i16**** %137, i32 %141, i32 %144, i32 %147)
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %2, align 4
  br label %151

; <label>:151:                                    ; preds = %131
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %1, align 4
  br label %125

; <label>:154:                                    ; preds = %125
  %155 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %156 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %155, i32 0, i32 4
  %157 = call i32 @get_mem2Dpel(i16*** %156, i32 4, i32 4)
  %158 = load i32, i32* %2, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %2, align 4
  %160 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %161 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %160, i32 0, i32 1
  %162 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %163 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %162, i32 0, i32 97
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 15
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @get_mem3Dpel(i16**** %161, i32 %164, i32 %167, i32 %170)
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %2, align 4
  %174 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %175 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %174, i32 0, i32 3
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %177 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 97
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %180 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 15
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 13
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @get_mem3Dpel(i16**** %175, i32 %178, i32 %181, i32 %184)
  %186 = load i32, i32* %2, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %2, align 4
  %188 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %189 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %188, i32 0, i32 5
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %192, 16
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 13
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %196, 16
  %198 = call i32 @get_mem2D(i8*** %189, i32 %193, i32 %197)
  %199 = load i32, i32* %2, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %2, align 4
  %201 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %202 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %201, i32 0, i32 6
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %204 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %205, 16
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %208 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 15
  %209 = load i32, i32* %208, align 4
  %210 = sdiv i32 %209, 16
  %211 = call i32 @get_mem2D(i8*** %202, i32 %206, i32 %210)
  %212 = load i32, i32* %2, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %2, align 4
  br label %214

; <label>:214:                                    ; preds = %154, %91
  %215 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %216 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %215, i32 0, i32 98
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

; <label>:219:                                    ; preds = %214
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 15
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @get_mem2D(i8*** @pixel_map, i32 %222, i32 %225)
  %227 = load i32, i32* %2, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %2, align 4
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 15
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %231, 8
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %234 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 13
  %235 = load i32, i32* %234, align 4
  %236 = sdiv i32 %235, 8
  %237 = call i32 @get_mem2D(i8*** @refresh_map, i32 %232, i32 %236)
  %238 = load i32, i32* %2, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %2, align 4
  br label %240

; <label>:240:                                    ; preds = %219, %214
  %241 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %242 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %241, i32 0, i32 25
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %270, label %245

; <label>:245:                                    ; preds = %240
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %247 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 15
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %250 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 13
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @get_mem2Dpel(i16*** @imgY_com, i32 %248, i32 %251)
  %253 = load i32, i32* %2, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %2, align 4
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %256 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 159
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

; <label>:259:                                    ; preds = %245
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %261 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 16
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %264 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 14
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @get_mem3Dpel(i16**** @imgUV_com, i32 2, i32 %262, i32 %265)
  %267 = load i32, i32* %2, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %2, align 4
  br label %269

; <label>:269:                                    ; preds = %259, %245
  br label %270

; <label>:270:                                    ; preds = %269, %240
  %271 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %272 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %271, i32 0, i32 134
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

; <label>:275:                                    ; preds = %270
  %276 = call i32 (...) @get_mem_FME()
  %277 = load i32, i32* %2, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %2, align 4
  br label %279

; <label>:279:                                    ; preds = %275, %270
  %280 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %281 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %280, i32 0, i32 127
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

; <label>:284:                                    ; preds = %279
  call void (...) @rc_alloc()
  br label %285

; <label>:285:                                    ; preds = %284, %279
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #1

declare i32 @get_mem3Dshort(i16****, i32, i32, i32) #1

declare i32 @get_mem2Dshort(i16***, i32, i32) #1

declare i32 @get_mem2D(i8***, i32, i32) #1

declare i32 @get_mem_FME(...) #1

declare void @rc_alloc(...) #1

; Function Attrs: noinline nounwind uwtable
define void @free_orig_planes() #0 {
  %1 = load i16**, i16*** @imgY_org_frm, align 8
  call void @free_mem2Dpel(i16** %1)
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 159
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = load i16***, i16**** @imgUV_org_frm, align 8
  call void @free_mem3Dpel(i16*** %7, i32 2)
  br label %8

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 25
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %38, label %13

; <label>:13:                                     ; preds = %8
  %14 = load i16**, i16*** @imgY_org_top, align 8
  %15 = load i16**, i16*** @imgY_org_bot, align 8
  call void @free_top_bot_planes(i16** %14, i16** %15)
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 159
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

; <label>:20:                                     ; preds = %13
  %21 = load i16***, i16**** @imgUV_org_top, align 8
  %22 = getelementptr inbounds i16**, i16*** %21, i64 0
  %23 = load i16**, i16*** %22, align 8
  %24 = load i16***, i16**** @imgUV_org_bot, align 8
  %25 = getelementptr inbounds i16**, i16*** %24, i64 0
  %26 = load i16**, i16*** %25, align 8
  call void @free_top_bot_planes(i16** %23, i16** %26)
  %27 = load i16***, i16**** @imgUV_org_top, align 8
  %28 = getelementptr inbounds i16**, i16*** %27, i64 1
  %29 = load i16**, i16*** %28, align 8
  %30 = load i16***, i16**** @imgUV_org_bot, align 8
  %31 = getelementptr inbounds i16**, i16*** %30, i64 1
  %32 = load i16**, i16*** %31, align 8
  call void @free_top_bot_planes(i16** %29, i16** %32)
  %33 = load i16***, i16**** @imgUV_org_top, align 8
  %34 = bitcast i16*** %33 to i8*
  call void @free(i8* %34) #5
  %35 = load i16***, i16**** @imgUV_org_bot, align 8
  %36 = bitcast i16*** %35 to i8*
  call void @free(i8* %36) #5
  br label %37

; <label>:37:                                     ; preds = %20, %13
  br label %38

; <label>:38:                                     ; preds = %37, %8
  ret void
}

declare void @free_mem2Dpel(i16**) #1

declare void @free_mem3Dpel(i16***, i32) #1

declare void @free_top_bot_planes(i16**, i16**) #1

; Function Attrs: noinline nounwind uwtable
define void @free_global_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @last_P_no_frm, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4) #5
  %5 = load i32*, i32** @last_P_no_fld, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #5
  call void @free_orig_planes()
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 46
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %0
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 47
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

; <label>:16:                                     ; preds = %11
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %16, %11, %0
  %22 = load i32***, i32**** @wp_weight, align 8
  call void @free_mem3Dint(i32*** %22, i32 6)
  %23 = load i32***, i32**** @wp_offset, align 8
  call void @free_mem3Dint(i32*** %23, i32 6)
  %24 = load i32****, i32***** @wbp_weight, align 8
  call void @free_mem4Dint(i32**** %24, i32 6, i32 15)
  br label %25

; <label>:25:                                     ; preds = %21, %16
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 34
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

; <label>:30:                                     ; preds = %25
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 54
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %30, %25
  %36 = load i16***, i16**** @direct_ref_idx, align 8
  call void @free_mem3Dshort(i16*** %36, i32 2)
  %37 = load i16**, i16*** @direct_pdir, align 8
  call void @free_mem2Dshort(i16** %37)
  br label %38

; <label>:38:                                     ; preds = %35, %30
  %39 = load i32**, i32*** @img4Y_tmp, align 8
  call void @free_mem2Dint(i32** %39)
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 25
  %42 = load i32**, i32*** %41, align 8
  call void @free_mem2Dint(i32** %42)
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 26
  %45 = load i32**, i32*** %44, align 8
  call void @free_mem2Dint(i32** %45)
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 51
  %48 = load %struct.macroblock*, %struct.macroblock** %47, align 8
  %49 = bitcast %struct.macroblock* %48 to i8*
  call void @free(i8* %49) #5
  %50 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %50)
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %52 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 24
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %38
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 54
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to i8*
  call void @free(i8* %59) #5
  br label %60

; <label>:60:                                     ; preds = %55, %38
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 85
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %209

; <label>:65:                                     ; preds = %60
  %66 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %67 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #5
  %72 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %73 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = bitcast i32** %74 to i8*
  call void @free(i8* %75) #5
  %76 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %77 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %76, i32 0, i32 4
  %78 = load i16**, i16*** %77, align 8
  %79 = getelementptr inbounds i16*, i16** %78, i64 0
  %80 = load i16*, i16** %79, align 8
  %81 = bitcast i16* %80 to i8*
  call void @free(i8* %81) #5
  %82 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %83 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %82, i32 0, i32 4
  %84 = load i16**, i16*** %83, align 8
  %85 = bitcast i16** %84 to i8*
  call void @free(i8* %85) #5
  store i32 0, i32* %2, align 4
  br label %86

; <label>:86:                                     ; preds = %175, %65
  %87 = load i32, i32* %2, align 4
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %89 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 97
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %178

; <label>:92:                                     ; preds = %86
  %93 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %94 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %93, i32 0, i32 1
  %95 = load i16***, i16**** %94, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i16**, i16*** %95, i64 %97
  %99 = load i16**, i16*** %98, align 8
  %100 = getelementptr inbounds i16*, i16** %99, i64 0
  %101 = load i16*, i16** %100, align 8
  %102 = bitcast i16* %101 to i8*
  call void @free(i8* %102) #5
  %103 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %104 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %103, i32 0, i32 1
  %105 = load i16***, i16**** %104, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i16**, i16*** %105, i64 %107
  %109 = load i16**, i16*** %108, align 8
  %110 = bitcast i16** %109 to i8*
  call void @free(i8* %110) #5
  %111 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %112 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %111, i32 0, i32 3
  %113 = load i16***, i16**** %112, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16**, i16*** %113, i64 %115
  %117 = load i16**, i16*** %116, align 8
  %118 = getelementptr inbounds i16*, i16** %117, i64 0
  %119 = load i16*, i16** %118, align 8
  %120 = bitcast i16* %119 to i8*
  call void @free(i8* %120) #5
  %121 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %122 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %121, i32 0, i32 3
  %123 = load i16***, i16**** %122, align 8
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16**, i16*** %123, i64 %125
  %127 = load i16**, i16*** %126, align 8
  %128 = bitcast i16** %127 to i8*
  call void @free(i8* %128) #5
  store i32 0, i32* %1, align 4
  br label %129

; <label>:129:                                    ; preds = %163, %92
  %130 = load i32, i32* %1, align 4
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %166

; <label>:136:                                    ; preds = %129
  %137 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %138 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %137, i32 0, i32 2
  %139 = load i16****, i16***** %138, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i16***, i16**** %139, i64 %141
  %143 = load i16***, i16**** %142, align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16**, i16*** %143, i64 %145
  %147 = load i16**, i16*** %146, align 8
  %148 = getelementptr inbounds i16*, i16** %147, i64 0
  %149 = load i16*, i16** %148, align 8
  %150 = bitcast i16* %149 to i8*
  call void @free(i8* %150) #5
  %151 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %152 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %151, i32 0, i32 2
  %153 = load i16****, i16***** %152, align 8
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16***, i16**** %153, i64 %155
  %157 = load i16***, i16**** %156, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i16**, i16*** %157, i64 %159
  %161 = load i16**, i16*** %160, align 8
  %162 = bitcast i16** %161 to i8*
  call void @free(i8* %162) #5
  br label %163

; <label>:163:                                    ; preds = %136
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %1, align 4
  br label %129

; <label>:166:                                    ; preds = %129
  %167 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %168 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %167, i32 0, i32 2
  %169 = load i16****, i16***** %168, align 8
  %170 = load i32, i32* %2, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i16***, i16**** %169, i64 %171
  %173 = load i16***, i16**** %172, align 8
  %174 = bitcast i16*** %173 to i8*
  call void @free(i8* %174) #5
  br label %175

; <label>:175:                                    ; preds = %166
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %86

; <label>:178:                                    ; preds = %86
  %179 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %180 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %179, i32 0, i32 1
  %181 = load i16***, i16**** %180, align 8
  %182 = bitcast i16*** %181 to i8*
  call void @free(i8* %182) #5
  %183 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %184 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %183, i32 0, i32 3
  %185 = load i16***, i16**** %184, align 8
  %186 = bitcast i16*** %185 to i8*
  call void @free(i8* %186) #5
  %187 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %188 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %187, i32 0, i32 2
  %189 = load i16****, i16***** %188, align 8
  %190 = bitcast i16**** %189 to i8*
  call void @free(i8* %190) #5
  %191 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %192 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %191, i32 0, i32 5
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  call void @free(i8* %195) #5
  %196 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %197 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %196, i32 0, i32 5
  %198 = load i8**, i8*** %197, align 8
  %199 = bitcast i8** %198 to i8*
  call void @free(i8* %199) #5
  %200 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %201 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %200, i32 0, i32 6
  %202 = load i8**, i8*** %201, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 0
  %204 = load i8*, i8** %203, align 8
  call void @free(i8* %204) #5
  %205 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %206 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %205, i32 0, i32 6
  %207 = load i8**, i8*** %206, align 8
  %208 = bitcast i8** %207 to i8*
  call void @free(i8* %208) #5
  br label %209

; <label>:209:                                    ; preds = %178, %60
  %210 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %211 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %210, i32 0, i32 98
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

; <label>:214:                                    ; preds = %209
  %215 = load i8**, i8*** @pixel_map, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  call void @free(i8* %217) #5
  %218 = load i8**, i8*** @pixel_map, align 8
  %219 = bitcast i8** %218 to i8*
  call void @free(i8* %219) #5
  %220 = load i8**, i8*** @refresh_map, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  call void @free(i8* %222) #5
  %223 = load i8**, i8*** @refresh_map, align 8
  %224 = bitcast i8** %223 to i8*
  call void @free(i8* %224) #5
  br label %225

; <label>:225:                                    ; preds = %214, %209
  %226 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %227 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %226, i32 0, i32 25
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %239, label %230

; <label>:230:                                    ; preds = %225
  %231 = load i16**, i16*** @imgY_com, align 8
  call void @free_mem2Dpel(i16** %231)
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %233 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 159
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

; <label>:236:                                    ; preds = %230
  %237 = load i16***, i16**** @imgUV_com, align 8
  call void @free_mem3Dpel(i16*** %237, i32 2)
  br label %238

; <label>:238:                                    ; preds = %236, %230
  br label %239

; <label>:239:                                    ; preds = %238, %225
  %240 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %240, i32 0, i32 28
  %242 = load i32***, i32**** %241, align 8
  %243 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %244 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %243, i32 0, i32 111
  %245 = load i32, i32* %244, align 8
  call void @free_mem3Dint(i32*** %242, i32 %245)
  %246 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %247 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %246, i32 0, i32 134
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %239
  call void (...) @free_mem_FME()
  br label %251

; <label>:251:                                    ; preds = %250, %239
  %252 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %253 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %252, i32 0, i32 127
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

; <label>:256:                                    ; preds = %251
  call void (...) @rc_free()
  br label %257

; <label>:257:                                    ; preds = %256, %251
  ret void
}

declare void @free_mem3Dint(i32***, i32) #1

declare void @free_mem4Dint(i32****, i32, i32) #1

declare void @free_mem3Dshort(i16***, i32) #1

declare void @free_mem2Dshort(i16**) #1

declare void @free_mem_FME(...) #1

declare void @rc_free(...) #1

; Function Attrs: noinline nounwind uwtable
define void @combine_field() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %51, %0
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 15
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %6, 2
  %8 = icmp slt i32 %3, %7
  br i1 %8, label %9, label %54

; <label>:9:                                      ; preds = %2
  %10 = load i16**, i16*** @imgY_com, align 8
  %11 = load i32, i32* %1, align 4
  %12 = mul nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16*, i16** %10, i64 %13
  %15 = load i16*, i16** %14, align 8
  %16 = bitcast i16* %15 to i8*
  %17 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 25
  %19 = load i16**, i16*** %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16*, i16** %19, i64 %21
  %23 = load i16*, i16** %22, align 8
  %24 = bitcast i16* %23 to i8*
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %24, i64 %29, i32 2, i1 false)
  %30 = load i16**, i16*** @imgY_com, align 8
  %31 = load i32, i32* %1, align 4
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16*, i16** %30, i64 %34
  %36 = load i16*, i16** %35, align 8
  %37 = bitcast i16* %36 to i8*
  %38 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 25
  %40 = load i16**, i16*** %39, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16*, i16** %40, i64 %42
  %44 = load i16*, i16** %43, align 8
  %45 = bitcast i16* %44 to i8*
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %45, i64 %50, i32 2, i1 false)
  br label %51

; <label>:51:                                     ; preds = %9
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %2

; <label>:54:                                     ; preds = %2
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 159
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %170

; <label>:59:                                     ; preds = %54
  store i32 0, i32* %1, align 4
  br label %60

; <label>:60:                                     ; preds = %166, %59
  %61 = load i32, i32* %1, align 4
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %64, 2
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %169

; <label>:67:                                     ; preds = %60
  %68 = load i16***, i16**** @imgUV_com, align 8
  %69 = getelementptr inbounds i16**, i16*** %68, i64 0
  %70 = load i16**, i16*** %69, align 8
  %71 = load i32, i32* %1, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16*, i16** %70, i64 %73
  %75 = load i16*, i16** %74, align 8
  %76 = bitcast i16* %75 to i8*
  %77 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %78 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 30
  %79 = load i16***, i16**** %78, align 8
  %80 = getelementptr inbounds i16**, i16*** %79, i64 0
  %81 = load i16**, i16*** %80, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16*, i16** %81, i64 %83
  %85 = load i16*, i16** %84, align 8
  %86 = bitcast i16* %85 to i8*
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %86, i64 %91, i32 2, i1 false)
  %92 = load i16***, i16**** @imgUV_com, align 8
  %93 = getelementptr inbounds i16**, i16*** %92, i64 0
  %94 = load i16**, i16*** %93, align 8
  %95 = load i32, i32* %1, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16*, i16** %94, i64 %98
  %100 = load i16*, i16** %99, align 8
  %101 = bitcast i16* %100 to i8*
  %102 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %103 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %102, i32 0, i32 30
  %104 = load i16***, i16**** %103, align 8
  %105 = getelementptr inbounds i16**, i16*** %104, i64 0
  %106 = load i16**, i16*** %105, align 8
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16*, i16** %106, i64 %108
  %110 = load i16*, i16** %109, align 8
  %111 = bitcast i16* %110 to i8*
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 14
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %111, i64 %116, i32 2, i1 false)
  %117 = load i16***, i16**** @imgUV_com, align 8
  %118 = getelementptr inbounds i16**, i16*** %117, i64 1
  %119 = load i16**, i16*** %118, align 8
  %120 = load i32, i32* %1, align 4
  %121 = mul nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16*, i16** %119, i64 %122
  %124 = load i16*, i16** %123, align 8
  %125 = bitcast i16* %124 to i8*
  %126 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %127 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 30
  %128 = load i16***, i16**** %127, align 8
  %129 = getelementptr inbounds i16**, i16*** %128, i64 1
  %130 = load i16**, i16*** %129, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i16*, i16** %130, i64 %132
  %134 = load i16*, i16** %133, align 8
  %135 = bitcast i16* %134 to i8*
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 14
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %135, i64 %140, i32 2, i1 false)
  %141 = load i16***, i16**** @imgUV_com, align 8
  %142 = getelementptr inbounds i16**, i16*** %141, i64 1
  %143 = load i16**, i16*** %142, align 8
  %144 = load i32, i32* %1, align 4
  %145 = mul nsw i32 %144, 2
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i16*, i16** %143, i64 %147
  %149 = load i16*, i16** %148, align 8
  %150 = bitcast i16* %149 to i8*
  %151 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %152 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %151, i32 0, i32 30
  %153 = load i16***, i16**** %152, align 8
  %154 = getelementptr inbounds i16**, i16*** %153, i64 1
  %155 = load i16**, i16*** %154, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16*, i16** %155, i64 %157
  %159 = load i16*, i16** %158, align 8
  %160 = bitcast i16* %159 to i8*
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* %160, i64 %165, i32 2, i1 false)
  br label %166

; <label>:166:                                    ; preds = %67
  %167 = load i32, i32* %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %1, align 4
  br label %60

; <label>:169:                                    ; preds = %60
  br label %170

; <label>:170:                                    ; preds = %169, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @decide_fld_frame(float, float, i32, i32, double) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = sitofp i32 %14 to double
  %16 = load double, double* %11, align 8
  %17 = fmul double %15, %16
  %18 = load float, float* %7, align 4
  %19 = fpext float %18 to double
  %20 = fadd double %17, %19
  store double %20, double* %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sitofp i32 %21 to double
  %23 = load double, double* %11, align 8
  %24 = fmul double %22, %23
  %25 = load float, float* %8, align 4
  %26 = fpext float %25 to double
  %27 = fadd double %24, %26
  store double %27, double* %13, align 8
  %28 = load double, double* %13, align 8
  %29 = load double, double* %12, align 8
  %30 = fcmp ogt double %28, %29
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %5
  store i32 0, i32* %6, align 4
  br label %33

; <label>:32:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define void @process_2nd_IGOP() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %0
  store i32 1, i32* %1, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %0
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 100
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  br label %49

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* @In2ndIGOP, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20, %17
  br label %49

; <label>:24:                                     ; preds = %20
  store i32 1, i32* @In2ndIGOP, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* @start_frame_no_in_this_IGOP, align 4
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %33 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = mul nsw i32 %31, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @start_tr_in_this_IGOP, align 4
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 100
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %24, %23, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SetImgType() #0 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 31
  %3 = load i32, i32* %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %39

; <label>:5:                                      ; preds = %0
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %10 = sub nsw i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %5
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 6
  store i32 2, i32* %14, align 8
  br label %38

; <label>:15:                                     ; preds = %5
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 6
  store i32 0, i32* %17, align 8
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 43
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %15
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 43
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %27, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %22
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 6
  store i32 3, i32* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %33, %22
  br label %37

; <label>:37:                                     ; preds = %36, %15
  br label %38

; <label>:38:                                     ; preds = %37, %12
  br label %77

; <label>:39:                                     ; preds = %0
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 31
  %47 = load i32, i32* %46, align 8
  %48 = srem i32 %44, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %39
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 6
  store i32 2, i32* %52, align 8
  br label %76

; <label>:53:                                     ; preds = %39
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 6
  store i32 0, i32* %55, align 8
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %57 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 43
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

; <label>:60:                                     ; preds = %53
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %67 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 43
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %65, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %60
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 6
  store i32 3, i32* %73, align 8
  br label %74

; <label>:74:                                     ; preds = %71, %60
  br label %75

; <label>:75:                                     ; preds = %74, %53
  br label %76

; <label>:76:                                     ; preds = %75, %50
  br label %77

; <label>:77:                                     ; preds = %76, %38
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
