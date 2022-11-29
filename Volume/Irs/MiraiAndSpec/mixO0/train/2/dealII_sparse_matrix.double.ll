; ModuleID = 'host/ir_O0/dealII_sparse_matrix.double.ll'
source_filename = "sparse_matrix.double.cc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.SparseMatrix<double>::ExcInvalidIndex" = type { %class.ExceptionBase, i32, i32 }
%class.ExceptionBase = type { %"class.std::exception", i8*, i32, i8*, i8*, i8* }
%"class.std::exception" = type { i32 (...)** }
%"class.SparseMatrix<double>::ExcInvalidIndex1" = type <{ %class.ExceptionBase, i32, [4 x i8] }>
%"class.SparseMatrix<double>::ExcIteratorRange" = type { %class.ExceptionBase, i32, i32 }
%class.SparseMatrix = type <{ i32 (...)**, %class.SmartPointer, double*, i32, [4 x i8], %class.Subscriptor }>
%class.SmartPointer = type { %class.SparsityPattern* }
%class.SparsityPattern = type <{ %class.Subscriptor, i32, i32, i32, i32, i32, [4 x i8], i32*, i32*, i8, i8, [6 x i8] }>
%class.Subscriptor = type { i32 (...)**, i32, %"class.std::type_info"* }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"class.std::binder2nd" = type { %"struct.std::not_equal_to", double }
%"struct.std::not_equal_to" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_pred" = type { %"class.std::binder2nd" }
%class.Vector = type { i32 (...)**, i32, i32, double* }
%"class.internals::SparseMatrixIterators::Iterator" = type { %"class.internals::SparseMatrixIterators::Accessor" }
%"class.internals::SparseMatrixIterators::Accessor" = type { %"class.internals::SparsityPatternIterators::Accessor", %class.SparseMatrix* }
%"class.internals::SparsityPatternIterators::Accessor" = type { %class.SparsityPattern*, i32, i32 }
%"class.internals::SparseMatrixIterators::Iterator.0" = type { %"class.internals::SparseMatrixIterators::Accessor.1" }
%"class.internals::SparseMatrixIterators::Accessor.1" = type { %"class.internals::SparsityPatternIterators::Accessor", %class.SparseMatrix* }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.StandardExceptions::ExcIO" = type { %class.ExceptionBase }
%"struct.std::_Setw" = type { i32 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%class.SparseMatrix.2 = type <{ i32 (...)**, %class.SmartPointer, float*, i32, [4 x i8], %class.Subscriptor }>
%class.FullMatrix = type { %class.Table.base, [4 x i8] }
%class.Table.base = type { %class.TableBase.base }
%class.TableBase.base = type <{ %class.Subscriptor, float*, i32, %class.TableIndices }>
%class.TableIndices = type { %class.TableIndicesBase }
%class.TableIndicesBase = type { [2 x i32] }
%class.Table = type { %class.TableBase.base, [4 x i8] }
%class.TableBase = type <{ %class.Subscriptor, float*, i32, %class.TableIndices, [4 x i8] }>
%class.FullMatrix.4 = type { %class.Table.base.8, [4 x i8] }
%class.Table.base.8 = type { %class.TableBase.base.7 }
%class.TableBase.base.7 = type <{ %class.Subscriptor, double*, i32, %class.TableIndices }>
%class.Table.5 = type { %class.TableBase.base.7, [4 x i8] }
%class.TableBase.6 = type <{ %class.Subscriptor, double*, i32, %class.TableIndices, [4 x i8] }>
%class.Vector.10 = type { i32 (...)**, i32, i32, float* }
%class.BlockVector = type <{ %"class.std::vector", %class.BlockIndices, i32, [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl" }
%"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl" = type { %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data" = type { %class.Vector.10*, %class.Vector.10*, %class.Vector.10* }
%class.BlockIndices = type { i32, %"class.std::vector.11" }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.internal::BlockVectorIterators::Iterator" = type <{ %class.BlockVector*, i32, i32, i32, i32, i32, [4 x i8] }>
%"struct.std::pair" = type { i32, i32 }
%class.BlockVector.16 = type <{ %"class.std::vector.17", %class.BlockIndices, i32, [4 x i8] }>
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl" }
%"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl" = type { %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data" = type { %class.Vector*, %class.Vector*, %class.Vector* }
%"class.internal::BlockVectorIterators::Iterator.23" = type <{ %class.BlockVector.16*, i32, i32, i32, i32, i32, [4 x i8] }>
%"class.SparseMatrix<double>::ExcNotCompressed" = type { %class.ExceptionBase }
%"class.SparseMatrix<double>::ExcMatrixNotInitialized" = type { %class.ExceptionBase }
%"class.SparseMatrix<double>::ExcMatrixNotSquare" = type { %class.ExceptionBase }
%"class.SparseMatrix<double>::ExcDifferentSparsityPatterns" = type { %class.ExceptionBase }
%"class.SparseMatrix<double>::ExcInvalidConstructorCall" = type { %class.ExceptionBase }
%"class.SparseMatrix<double>::ExcSourceEqualsDestination" = type { %class.ExceptionBase }
%"struct.std::unary_function" = type { i8 }
%"class.std::__pair_base" = type { i8 }
%"struct.std::iterator" = type { i8 }
%"struct.std::iterator.24" = type { i8 }

$_ZN12SparseMatrixIdEC2Ev = comdat any

$_ZN12SmartPointerIK15SparsityPatternEC2EPS1_ = comdat any

$_ZN12SparseMatrixIdEC1Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN12SparseMatrixIdEC2ERKS0_ = comdat any

$_ZN12SparseMatrixIdEC1ERKS0_ = comdat any

$_ZN12SparseMatrixIdEC2ERK15SparsityPattern = comdat any

$_ZN12SmartPointerIK15SparsityPatternED2Ev = comdat any

$_ZN12SparseMatrixIdEC1ERK15SparsityPattern = comdat any

$_ZN12SparseMatrixIdED2Ev = comdat any

$_ZN12SmartPointerIK15SparsityPatternEaSEPS1_ = comdat any

$_ZN12SparseMatrixIdED1Ev = comdat any

$_ZTv0_n24_N12SparseMatrixIdED1Ev = comdat any

$_ZN12SparseMatrixIdED0Ev = comdat any

$_ZTv0_n24_N12SparseMatrixIdED0Ev = comdat any

$_ZN12SparseMatrixIdEaSERKS0_ = comdat any

$_ZN12SparseMatrixIdEaSEd = comdat any

$_ZSt6fill_nIPdjdET_S1_T0_RKT1_ = comdat any

$_ZNK12SmartPointerIK15SparsityPatternEptEv = comdat any

$_ZNK15SparsityPattern18n_nonzero_elementsEv = comdat any

$_ZN12SparseMatrixIdE6reinitERK15SparsityPattern = comdat any

$_ZSt6fill_nIPdjiET_S1_T0_RKT1_ = comdat any

$_ZN12SparseMatrixIdE5clearEv = comdat any

$_ZNK12SparseMatrixIdE5emptyEv = comdat any

$_ZNK12SmartPointerIK15SparsityPatternEcvPS1_Ev = comdat any

$_ZNK12SparseMatrixIdE1mEv = comdat any

$_ZNK12SparseMatrixIdE1nEv = comdat any

$_ZNK12SparseMatrixIdE18n_nonzero_elementsEv = comdat any

$_ZNK12SparseMatrixIdE27n_actually_nonzero_elementsEv = comdat any

$_ZSt8count_ifIPdSt9binder2ndISt12not_equal_toIdEEENSt15iterator_traitsIT_E15difference_typeES6_S6_T0_ = comdat any

$_ZSt7bind2ndISt12not_equal_toIdEiESt9binder2ndIT_ERKS3_RKT0_ = comdat any

$_ZN12SparseMatrixIdE3setEjjd = comdat any

$_ZN12SparseMatrixIdEmLEd = comdat any

$_ZN12SparseMatrixIdEdVEd = comdat any

$_ZN12SparseMatrixIdE3addEjjd = comdat any

$_ZN12SparseMatrixIdE10symmetrizeEv = comdat any

$_ZNK15SparsityPattern17optimize_diagonalEv = comdat any

$_ZNK12SmartPointerIK15SparsityPatternEdeEv = comdat any

$_ZNK12SparseMatrixIdEclEjj = comdat any

$_ZN18deal_II_exceptions9internals17issue_error_throwIN12SparseMatrixIdE15ExcInvalidIndexEEEvPKciS6_S6_S6_T_ = comdat any

$_ZNK12SparseMatrixIdE2elEjj = comdat any

$_ZNK12SparseMatrixIdE12diag_elementEj = comdat any

$_ZN12SparseMatrixIdE12diag_elementEj = comdat any

$_ZNK12SparseMatrixIdE9raw_entryEjj = comdat any

$_ZNK12SparseMatrixIdE12global_entryEj = comdat any

$_ZN12SparseMatrixIdE12global_entryEj = comdat any

$_ZNK12SparseMatrixIdE7l1_normEv = comdat any

$_ZN6VectorIdEC2Ej = comdat any

$_ZN6VectorIdEclEj = comdat any

$_ZN6VectorIdED2Ev = comdat any

$_ZNK12SparseMatrixIdE11linfty_normEv = comdat any

$_ZNK12SparseMatrixIdE14frobenius_normEv = comdat any

$_ZNK12SparseMatrixIdE20get_sparsity_patternEv = comdat any

$_ZNK12SparseMatrixIdE5beginEv = comdat any

$_ZNK15SparsityPattern10row_lengthEj = comdat any

$_ZN9internals21SparseMatrixIterators8IteratorIdLb1EEC2EPK12SparseMatrixIdEjj = comdat any

$_ZNK12SparseMatrixIdE3endEv = comdat any

$_ZN12SparseMatrixIdE5beginEv = comdat any

$_ZN9internals21SparseMatrixIterators8IteratorIdLb0EEC2EP12SparseMatrixIdEjj = comdat any

$_ZN12SparseMatrixIdE3endEv = comdat any

$_ZNK12SparseMatrixIdE5beginEj = comdat any

$_ZNK12SparseMatrixIdE3endEj = comdat any

$_ZN12SparseMatrixIdE5beginEj = comdat any

$_ZN12SparseMatrixIdE3endEj = comdat any

$_ZNK12SparseMatrixIdE5printERSo = comdat any

$_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_ = comdat any

$_ZN18StandardExceptions5ExcIOC2Ev = comdat any

$_ZN18StandardExceptions5ExcIOD2Ev = comdat any

$_ZNK12SparseMatrixIdE15print_formattedERSojbjPKcd = comdat any

$_ZNKSt8ios_base5flagsEv = comdat any

$_ZNSt8ios_base9precisionEl = comdat any

$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_ = comdat any

$_ZSt4setwi = comdat any

$_ZNSt8ios_base5flagsESt13_Ios_Fmtflags = comdat any

$_ZNK12SparseMatrixIdE11block_writeERSo = comdat any

$_ZN12SparseMatrixIdE10block_readERSi = comdat any

$_ZNK12SparseMatrixIdE18memory_consumptionEv = comdat any

$_ZN12SparseMatrixIdE15ExcInvalidIndexC5Eii = comdat any

$_ZN12SparseMatrixIdE15ExcInvalidIndexD5Ev = comdat any

$_ZNK12SparseMatrixIdE15ExcInvalidIndex9PrintInfoERSo = comdat any

$_ZN12SparseMatrixIdE16ExcInvalidIndex1C5Ei = comdat any

$_ZN12SparseMatrixIdE16ExcInvalidIndex1D5Ev = comdat any

$_ZNK12SparseMatrixIdE16ExcInvalidIndex19PrintInfoERSo = comdat any

$_ZN12SparseMatrixIdE16ExcIteratorRangeC5Eii = comdat any

$_ZN12SparseMatrixIdE16ExcIteratorRangeD5Ev = comdat any

$_ZNK12SparseMatrixIdE16ExcIteratorRange9PrintInfoERSo = comdat any

$_ZN12SparseMatrixIdE9copy_fromIfEERS0_RKS_IT_E = comdat any

$_ZSt4copyIPfPdET0_T_S3_S2_ = comdat any

$_ZN12SparseMatrixIdE9copy_fromIfEEvRK10FullMatrixIT_E = comdat any

$_ZNK10FullMatrixIfE1mEv = comdat any

$_ZNK10FullMatrixIfE1nEv = comdat any

$_ZNK5TableILi2EfEclEjj = comdat any

$_ZN12SparseMatrixIdE10add_scaledIfEEvdRKS_IT_E = comdat any

$_ZN12SparseMatrixIdE9copy_fromIdEERS0_RKS_IT_E = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZN12SparseMatrixIdE9copy_fromIdEEvRK10FullMatrixIT_E = comdat any

$_ZNK10FullMatrixIdE1mEv = comdat any

$_ZNK10FullMatrixIdE1nEv = comdat any

$_ZNK5TableILi2EdEclEjj = comdat any

$_ZN12SparseMatrixIdE10add_scaledIdEEvdRKS_IT_E = comdat any

$_ZNK12SparseMatrixIdE5vmultI6VectorIfES3_EEvRT_RKT0_ = comdat any

$_ZN6VectorIfE5beginEv = comdat any

$_ZNK6VectorIfEclEj = comdat any

$_ZNK12SparseMatrixIdE6TvmultI6VectorIfES3_EEvRT_RKT0_ = comdat any

$_ZN6VectorIfEaSEf = comdat any

$_ZN6VectorIfEclEj = comdat any

$_ZNK12SparseMatrixIdE9vmult_addI6VectorIfES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE10Tvmult_addI6VectorIfES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE5vmultI11BlockVectorIfES3_EEvRT_RKT0_ = comdat any

$_ZNK11BlockVectorIfEclEj = comdat any

$_ZN8internal20BlockVectorIterators8IteratorIfLb0EEppEi = comdat any

$_ZNK8internal20BlockVectorIterators8IteratorIfLb0EEdeEv = comdat any

$_ZNK12SparseMatrixIdE6TvmultI11BlockVectorIfES3_EEvRT_RKT0_ = comdat any

$_ZN11BlockVectorIfEclEj = comdat any

$_ZNK12SparseMatrixIdE9vmult_addI11BlockVectorIfES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE10Tvmult_addI11BlockVectorIfES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE18matrix_norm_squareIfEET_RK6VectorIS2_E = comdat any

$_ZNK12SparseMatrixIdE21matrix_scalar_productIfEET_RK6VectorIS2_ES6_ = comdat any

$_ZNK12SparseMatrixIdE8residualIfEET_R6VectorIS2_ERKS4_S7_ = comdat any

$_ZSt4sqrtf = comdat any

$_ZNK12SparseMatrixIdE17precondition_SSORIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK6VectorIfE4sizeEv = comdat any

$_ZN15SparsityPattern21optimized_lower_boundEPKjS1_RS0_ = comdat any

$_ZNK12SparseMatrixIdE16precondition_SORIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE3SORIfEEvR6VectorIT_Ed = comdat any

$_ZNK12SparseMatrixIdE17precondition_TSORIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE4TSORIfEEvR6VectorIT_Ed = comdat any

$_ZNK12SparseMatrixIdE19precondition_JacobiIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK6VectorIfE5beginEv = comdat any

$_ZNK12SparseMatrixIdE4SSORIfEEvR6VectorIT_Ed = comdat any

$_ZNK12SparseMatrixIdE4PSORIfEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d = comdat any

$_ZNKSt6vectorIjSaIjEEixEm = comdat any

$_ZNK12SparseMatrixIdE5TPSORIfEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d = comdat any

$_ZNK12SparseMatrixIdE8SOR_stepIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE9TSOR_stepIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE9SSOR_stepIfEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE5vmultI6VectorIdES3_EEvRT_RKT0_ = comdat any

$_ZN6VectorIdE5beginEv = comdat any

$_ZNK6VectorIdEclEj = comdat any

$_ZNK12SparseMatrixIdE6TvmultI6VectorIdES3_EEvRT_RKT0_ = comdat any

$_ZN6VectorIdEaSEd = comdat any

$_ZNK12SparseMatrixIdE9vmult_addI6VectorIdES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE10Tvmult_addI6VectorIdES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE5vmultI11BlockVectorIdES3_EEvRT_RKT0_ = comdat any

$_ZNK11BlockVectorIdEclEj = comdat any

$_ZN8internal20BlockVectorIterators8IteratorIdLb0EEppEi = comdat any

$_ZNK8internal20BlockVectorIterators8IteratorIdLb0EEdeEv = comdat any

$_ZNK12SparseMatrixIdE6TvmultI11BlockVectorIdES3_EEvRT_RKT0_ = comdat any

$_ZN11BlockVectorIdEclEj = comdat any

$_ZNK12SparseMatrixIdE9vmult_addI11BlockVectorIdES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE10Tvmult_addI11BlockVectorIdES3_EEvRT_RKT0_ = comdat any

$_ZNK12SparseMatrixIdE18matrix_norm_squareIdEET_RK6VectorIS2_E = comdat any

$_ZNK12SparseMatrixIdE21matrix_scalar_productIdEET_RK6VectorIS2_ES6_ = comdat any

$_ZNK12SparseMatrixIdE8residualIdEET_R6VectorIS2_ERKS4_S7_ = comdat any

$_ZNK12SparseMatrixIdE17precondition_SSORIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK6VectorIdE4sizeEv = comdat any

$_ZNK12SparseMatrixIdE16precondition_SORIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE3SORIdEEvR6VectorIT_Ed = comdat any

$_ZNK12SparseMatrixIdE17precondition_TSORIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE4TSORIdEEvR6VectorIT_Ed = comdat any

$_ZNK12SparseMatrixIdE19precondition_JacobiIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK6VectorIdE5beginEv = comdat any

$_ZNK12SparseMatrixIdE4SSORIdEEvR6VectorIT_Ed = comdat any

$_ZNK12SparseMatrixIdE4PSORIdEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d = comdat any

$_ZNK12SparseMatrixIdE5TPSORIdEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d = comdat any

$_ZNK12SparseMatrixIdE8SOR_stepIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE9TSOR_stepIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZNK12SparseMatrixIdE9SSOR_stepIdEEvR6VectorIT_ERKS4_d = comdat any

$_ZN12SparseMatrixIdE16ExcNotCompressedD2Ev = comdat any

$_ZN12SparseMatrixIdE16ExcNotCompressedD0Ev = comdat any

$_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD2Ev = comdat any

$_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD0Ev = comdat any

$_ZN12SparseMatrixIdE18ExcMatrixNotSquareD2Ev = comdat any

$_ZN12SparseMatrixIdE18ExcMatrixNotSquareD0Ev = comdat any

$_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD2Ev = comdat any

$_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD0Ev = comdat any

$_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD2Ev = comdat any

$_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD0Ev = comdat any

$_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD2Ev = comdat any

$_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD0Ev = comdat any

$_ZN18StandardExceptions5ExcIOD0Ev = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZSt12__niter_wrapIPdET_RKS1_S1_ = comdat any

$_ZSt10__fill_n_aIPdjdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt10__fill_n_aIPdjiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZNSt9binder2ndISt12not_equal_toIdEEC2ERKS1_RKd = comdat any

$_ZSt10__count_ifIPdN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops11__pred_iterISt9binder2ndISt12not_equal_toIdEEEENS0_10_Iter_predIT_EES7_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEclIPdEEbT_ = comdat any

$_ZNKSt9binder2ndISt12not_equal_toIdEEclERd = comdat any

$_ZNKSt12not_equal_toIdEclERKdS2_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEC2ES5_ = comdat any

$_ZN12SparseMatrixIdE15ExcInvalidIndexC2ERKS1_ = comdat any

$_ZN13ExceptionBaseC2ERKS_ = comdat any

$_ZNSt9exceptionC2ERKS_ = comdat any

$_ZN6VectorIdE6reinitEjb = comdat any

$_ZN6VectorIdED0Ev = comdat any

$_ZN9internals21SparseMatrixIterators8AccessorIdLb1EEC2EPK12SparseMatrixIdEjj = comdat any

$_ZN9internals24SparsityPatternIterators8AccessorC2EPK15SparsityPatternjj = comdat any

$_ZN9internals21SparseMatrixIterators8AccessorIdLb0EEC2EP12SparseMatrixIdEjj = comdat any

$_ZN18StandardExceptions5ExcIOC2ERKS0_ = comdat any

$_ZSt14__copy_move_a2ILb0EPfPdET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIPfET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPfPdET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIPfET_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPfPdEET0_T_S6_S5_ = comdat any

$_ZNK5TableILi2EfE6n_rowsEv = comdat any

$_ZNK16TableIndicesBaseILi2EEixEj = comdat any

$_ZNK5TableILi2EfE6n_colsEv = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNK5TableILi2EdE6n_rowsEv = comdat any

$_ZNK5TableILi2EdE6n_colsEv = comdat any

$_ZSt4fillIPffEvT_S1_RKT0_ = comdat any

$_ZN6VectorIfE3endEv = comdat any

$_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNK12BlockIndices15global_to_localEj = comdat any

$_ZNKSt6vectorI6VectorIfESaIS1_EEixEm = comdat any

$_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_ = comdat any

$_ZNSt4pairIjjEC2ERKjS2_ = comdat any

$_ZN8internal20BlockVectorIterators8IteratorIfLb0EEC2ERKS2_ = comdat any

$_ZN11BlockVectorIfE5blockEj = comdat any

$_ZNSt6vectorI6VectorIfESaIS1_EEixEm = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZN6VectorIdE3endEv = comdat any

$_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNKSt6vectorI6VectorIdESaIS1_EEixEm = comdat any

$_ZN8internal20BlockVectorIterators8IteratorIdLb0EEC2ERKS2_ = comdat any

$_ZN11BlockVectorIdE5blockEj = comdat any

$_ZNSt6vectorI6VectorIdESaIS1_EEixEm = comdat any

$_ZTV12SparseMatrixIdE = comdat any

$_ZTT12SparseMatrixIdE = comdat any

$_ZTVN12SparseMatrixIdE15ExcInvalidIndexE = comdat any

$_ZTVN12SparseMatrixIdE16ExcInvalidIndex1E = comdat any

$_ZTVN12SparseMatrixIdE16ExcIteratorRangeE = comdat any

$_ZTS12SparseMatrixIdE = comdat any

$_ZTI12SparseMatrixIdE = comdat any

$_ZTVN12SparseMatrixIdE16ExcNotCompressedE = comdat any

$_ZTSN12SparseMatrixIdE16ExcNotCompressedE = comdat any

$_ZTIN12SparseMatrixIdE16ExcNotCompressedE = comdat any

$_ZTVN12SparseMatrixIdE23ExcMatrixNotInitializedE = comdat any

$_ZTSN12SparseMatrixIdE23ExcMatrixNotInitializedE = comdat any

$_ZTIN12SparseMatrixIdE23ExcMatrixNotInitializedE = comdat any

$_ZTSN12SparseMatrixIdE16ExcInvalidIndex1E = comdat any

$_ZTIN12SparseMatrixIdE16ExcInvalidIndex1E = comdat any

$_ZTVN12SparseMatrixIdE18ExcMatrixNotSquareE = comdat any

$_ZTSN12SparseMatrixIdE18ExcMatrixNotSquareE = comdat any

$_ZTIN12SparseMatrixIdE18ExcMatrixNotSquareE = comdat any

$_ZTVN12SparseMatrixIdE28ExcDifferentSparsityPatternsE = comdat any

$_ZTSN12SparseMatrixIdE28ExcDifferentSparsityPatternsE = comdat any

$_ZTIN12SparseMatrixIdE28ExcDifferentSparsityPatternsE = comdat any

$_ZTVN12SparseMatrixIdE25ExcInvalidConstructorCallE = comdat any

$_ZTSN12SparseMatrixIdE25ExcInvalidConstructorCallE = comdat any

$_ZTIN12SparseMatrixIdE25ExcInvalidConstructorCallE = comdat any

$_ZTSN12SparseMatrixIdE16ExcIteratorRangeE = comdat any

$_ZTIN12SparseMatrixIdE16ExcIteratorRangeE = comdat any

$_ZTVN12SparseMatrixIdE26ExcSourceEqualsDestinationE = comdat any

$_ZTSN12SparseMatrixIdE26ExcSourceEqualsDestinationE = comdat any

$_ZTIN12SparseMatrixIdE26ExcSourceEqualsDestinationE = comdat any

$_ZTSN12SparseMatrixIdE15ExcInvalidIndexE = comdat any

$_ZTIN12SparseMatrixIdE15ExcInvalidIndexE = comdat any

$_ZTVN18StandardExceptions5ExcIOE = comdat any

$_ZTSN18StandardExceptions5ExcIOE = comdat any

$_ZTIN18StandardExceptions5ExcIOE = comdat any

$_ZTV6VectorIdE = comdat any

$_ZTS6VectorIdE = comdat any

$_ZTI6VectorIdE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZTV12SparseMatrixIdE = weak_odr unnamed_addr constant { [7 x i8*], [5 x i8*] } { [7 x i8*] [i8* inttoptr (i64 32 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI12SparseMatrixIdE to i8*), i8* bitcast (void (%class.SparseMatrix*)* @_ZN12SparseMatrixIdED1Ev to i8*), i8* bitcast (void (%class.SparseMatrix*)* @_ZN12SparseMatrixIdED0Ev to i8*), i8* bitcast (void (%class.SparseMatrix*, %class.SparsityPattern*)* @_ZN12SparseMatrixIdE6reinitERK15SparsityPattern to i8*), i8* bitcast (void (%class.SparseMatrix*)* @_ZN12SparseMatrixIdE5clearEv to i8*)], [5 x i8*] [i8* inttoptr (i64 -32 to i8*), i8* inttoptr (i64 -32 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI12SparseMatrixIdE to i8*), i8* bitcast (void (%class.SparseMatrix*)* @_ZTv0_n24_N12SparseMatrixIdED1Ev to i8*), i8* bitcast (void (%class.SparseMatrix*)* @_ZTv0_n24_N12SparseMatrixIdED0Ev to i8*)] }, comdat, align 8
@_ZTT12SparseMatrixIdE = weak_odr unnamed_addr constant [2 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 1, i32 3) to i8*)], comdat
@.str = private unnamed_addr constant [28 x i8] c"include/lac/sparse_matrix.h\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"cols->operator()(i,j) != SparsityPattern::invalid_entry\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ExcInvalidIndex(i,j)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"include/lac/sparse_matrix.templates.h\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ExcIO()\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"][\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"c == '['\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"c == ']'\00", align 1
@_ZTVN12SparseMatrixIdE15ExcInvalidIndexE = linkonce_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE15ExcInvalidIndexE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex"*)* @_ZN12SparseMatrixIdE15ExcInvalidIndexD1Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex"*)* @_ZN12SparseMatrixIdE15ExcInvalidIndexD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.std::basic_ostream"*)* @_ZNK12SparseMatrixIdE15ExcInvalidIndex9PrintInfoERSo to i8*)] }, comdat, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"The entry with index <\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"> does not exist.\00", align 1
@_ZTVN12SparseMatrixIdE16ExcInvalidIndex1E = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE16ExcInvalidIndex1E to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*)* @_ZN12SparseMatrixIdE16ExcInvalidIndex1D1Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*)* @_ZN12SparseMatrixIdE16ExcInvalidIndex1D0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*, %"class.std::basic_ostream"*)* @_ZNK12SparseMatrixIdE16ExcInvalidIndex19PrintInfoERSo to i8*)] }, comdat, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"The index \00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c" is not in the allowed range.\00", align 1
@_ZTVN12SparseMatrixIdE16ExcIteratorRangeE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE16ExcIteratorRangeE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcIteratorRange"*)* @_ZN12SparseMatrixIdE16ExcIteratorRangeD1Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcIteratorRange"*)* @_ZN12SparseMatrixIdE16ExcIteratorRangeD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcIteratorRange"*, %"class.std::basic_ostream"*)* @_ZNK12SparseMatrixIdE16ExcIteratorRange9PrintInfoERSo to i8*)] }, comdat, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"The iterators denote a range of \00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c" elements, but the given number of rows was \00", align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTS12SparseMatrixIdE = weak_odr constant [18 x i8] c"12SparseMatrixIdE\00", comdat
@_ZTI11Subscriptor = external constant i8*
@_ZTI12SparseMatrixIdE = weak_odr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @_ZTS12SparseMatrixIdE, i32 0, i32 0), i32 0, i32 1, i8* bitcast (i8** @_ZTI11Subscriptor to i8*), i64 -6141 }, comdat
@_ZTVN12SparseMatrixIdE16ExcNotCompressedE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE16ExcNotCompressedE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcNotCompressed"*)* @_ZN12SparseMatrixIdE16ExcNotCompressedD2Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcNotCompressed"*)* @_ZN12SparseMatrixIdE16ExcNotCompressedD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN12SparseMatrixIdE16ExcNotCompressedE = weak_odr constant [38 x i8] c"N12SparseMatrixIdE16ExcNotCompressedE\00", comdat
@_ZTI13ExceptionBase = external constant i8*
@_ZTIN12SparseMatrixIdE16ExcNotCompressedE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @_ZTSN12SparseMatrixIdE16ExcNotCompressedE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN12SparseMatrixIdE23ExcMatrixNotInitializedE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE23ExcMatrixNotInitializedE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcMatrixNotInitialized"*)* @_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD2Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcMatrixNotInitialized"*)* @_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN12SparseMatrixIdE23ExcMatrixNotInitializedE = weak_odr constant [45 x i8] c"N12SparseMatrixIdE23ExcMatrixNotInitializedE\00", comdat
@_ZTIN12SparseMatrixIdE23ExcMatrixNotInitializedE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @_ZTSN12SparseMatrixIdE23ExcMatrixNotInitializedE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTSN12SparseMatrixIdE16ExcInvalidIndex1E = weak_odr constant [38 x i8] c"N12SparseMatrixIdE16ExcInvalidIndex1E\00", comdat
@_ZTIN12SparseMatrixIdE16ExcInvalidIndex1E = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @_ZTSN12SparseMatrixIdE16ExcInvalidIndex1E, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN12SparseMatrixIdE18ExcMatrixNotSquareE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE18ExcMatrixNotSquareE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcMatrixNotSquare"*)* @_ZN12SparseMatrixIdE18ExcMatrixNotSquareD2Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcMatrixNotSquare"*)* @_ZN12SparseMatrixIdE18ExcMatrixNotSquareD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN12SparseMatrixIdE18ExcMatrixNotSquareE = weak_odr constant [40 x i8] c"N12SparseMatrixIdE18ExcMatrixNotSquareE\00", comdat
@_ZTIN12SparseMatrixIdE18ExcMatrixNotSquareE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTSN12SparseMatrixIdE18ExcMatrixNotSquareE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN12SparseMatrixIdE28ExcDifferentSparsityPatternsE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE28ExcDifferentSparsityPatternsE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*)* @_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD2Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*)* @_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN12SparseMatrixIdE28ExcDifferentSparsityPatternsE = weak_odr constant [50 x i8] c"N12SparseMatrixIdE28ExcDifferentSparsityPatternsE\00", comdat
@_ZTIN12SparseMatrixIdE28ExcDifferentSparsityPatternsE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @_ZTSN12SparseMatrixIdE28ExcDifferentSparsityPatternsE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN12SparseMatrixIdE25ExcInvalidConstructorCallE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE25ExcInvalidConstructorCallE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidConstructorCall"*)* @_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD2Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidConstructorCall"*)* @_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN12SparseMatrixIdE25ExcInvalidConstructorCallE = weak_odr constant [47 x i8] c"N12SparseMatrixIdE25ExcInvalidConstructorCallE\00", comdat
@_ZTIN12SparseMatrixIdE25ExcInvalidConstructorCallE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @_ZTSN12SparseMatrixIdE25ExcInvalidConstructorCallE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTSN12SparseMatrixIdE16ExcIteratorRangeE = weak_odr constant [38 x i8] c"N12SparseMatrixIdE16ExcIteratorRangeE\00", comdat
@_ZTIN12SparseMatrixIdE16ExcIteratorRangeE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @_ZTSN12SparseMatrixIdE16ExcIteratorRangeE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN12SparseMatrixIdE26ExcSourceEqualsDestinationE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE26ExcSourceEqualsDestinationE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcSourceEqualsDestination"*)* @_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD2Ev to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcSourceEqualsDestination"*)* @_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN12SparseMatrixIdE26ExcSourceEqualsDestinationE = weak_odr constant [48 x i8] c"N12SparseMatrixIdE26ExcSourceEqualsDestinationE\00", comdat
@_ZTIN12SparseMatrixIdE26ExcSourceEqualsDestinationE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @_ZTSN12SparseMatrixIdE26ExcSourceEqualsDestinationE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTSN12SparseMatrixIdE15ExcInvalidIndexE = linkonce_odr constant [37 x i8] c"N12SparseMatrixIdE15ExcInvalidIndexE\00", comdat
@_ZTIN12SparseMatrixIdE15ExcInvalidIndexE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_ZTSN12SparseMatrixIdE15ExcInvalidIndexE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN18StandardExceptions5ExcIOE = linkonce_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN18StandardExceptions5ExcIOE to i8*), i8* bitcast (void (%"class.StandardExceptions::ExcIO"*)* @_ZN18StandardExceptions5ExcIOD2Ev to i8*), i8* bitcast (void (%"class.StandardExceptions::ExcIO"*)* @_ZN18StandardExceptions5ExcIOD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN18StandardExceptions5ExcIOE = linkonce_odr constant [29 x i8] c"N18StandardExceptions5ExcIOE\00", comdat
@_ZTIN18StandardExceptions5ExcIOE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN18StandardExceptions5ExcIOE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTV13ExceptionBase = external unnamed_addr constant { [6 x i8*] }
@_ZTVSt9exception = external unnamed_addr constant { [5 x i8*] }
@_ZTV6VectorIdE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI6VectorIdE to i8*), i8* bitcast (void (%class.Vector*)* @_ZN6VectorIdED2Ev to i8*), i8* bitcast (void (%class.Vector*)* @_ZN6VectorIdED0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS6VectorIdE = linkonce_odr constant [11 x i8] c"6VectorIdE\00", comdat
@_ZTI6VectorIdE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS6VectorIdE, i32 0, i32 0) }, comdat
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sparse_matrix.double.cc, i8* null }]

@_ZN12SparseMatrixIdE15ExcInvalidIndexC1Eii = weak_odr alias void (%"class.SparseMatrix<double>::ExcInvalidIndex"*, i32, i32), void (%"class.SparseMatrix<double>::ExcInvalidIndex"*, i32, i32)* @_ZN12SparseMatrixIdE15ExcInvalidIndexC2Eii
@_ZN12SparseMatrixIdE15ExcInvalidIndexD1Ev = weak_odr alias void (%"class.SparseMatrix<double>::ExcInvalidIndex"*), void (%"class.SparseMatrix<double>::ExcInvalidIndex"*)* @_ZN12SparseMatrixIdE15ExcInvalidIndexD2Ev
@_ZN12SparseMatrixIdE16ExcInvalidIndex1C1Ei = weak_odr alias void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*, i32), void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*, i32)* @_ZN12SparseMatrixIdE16ExcInvalidIndex1C2Ei
@_ZN12SparseMatrixIdE16ExcInvalidIndex1D1Ev = weak_odr alias void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*), void (%"class.SparseMatrix<double>::ExcInvalidIndex1"*)* @_ZN12SparseMatrixIdE16ExcInvalidIndex1D2Ev
@_ZN12SparseMatrixIdE16ExcIteratorRangeC1Eii = weak_odr alias void (%"class.SparseMatrix<double>::ExcIteratorRange"*, i32, i32), void (%"class.SparseMatrix<double>::ExcIteratorRange"*, i32, i32)* @_ZN12SparseMatrixIdE16ExcIteratorRangeC2Eii
@_ZN12SparseMatrixIdE16ExcIteratorRangeD1Ev = weak_odr alias void (%"class.SparseMatrix<double>::ExcIteratorRange"*), void (%"class.SparseMatrix<double>::ExcIteratorRange"*)* @_ZN12SparseMatrixIdE16ExcIteratorRangeD2Ev

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdEC2Ev(%class.SparseMatrix*, i8**) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i8**, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast %class.SparseMatrix* %5 to i32 (...)***
  %9 = bitcast i8* %7 to i32 (...)**
  store i32 (...)** %9, i32 (...)*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %6, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast %class.SparseMatrix* %5 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i64 -24
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %class.SparseMatrix* %5 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 %16
  %19 = bitcast i8* %18 to i32 (...)***
  %20 = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %20, i32 (...)*** %19, align 8
  %21 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  call void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer* %21, %class.SparsityPattern* null)
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  store double* null, double** %22, align 8
  %23 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 3
  store i32 0, i32* %23, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer*, %class.SparsityPattern*) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.SmartPointer*, align 8
  %4 = alloca %class.SparsityPattern*, align 8
  store %class.SmartPointer* %0, %class.SmartPointer** %3, align 8
  store %class.SparsityPattern* %1, %class.SparsityPattern** %4, align 8
  %5 = load %class.SmartPointer*, %class.SmartPointer** %3, align 8
  %6 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %5, i32 0, i32 0
  %7 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  store %class.SparsityPattern* %7, %class.SparsityPattern** %6, align 8
  %8 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  %9 = icmp ne %class.SparsityPattern* %8, null
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  %12 = bitcast %class.SparsityPattern* %11 to %class.Subscriptor*
  call void @_ZNK11Subscriptor9subscribeEv(%class.Subscriptor* %12)
  br label %13

; <label>:13:                                     ; preds = %10, %2
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdEC1Ev(%class.SparseMatrix*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %6 = bitcast %class.SparseMatrix* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 32
  %8 = bitcast i8* %7 to %class.Subscriptor*
  call void @_ZN11SubscriptorC2Ev(%class.Subscriptor* %8)
  %9 = bitcast %class.SparseMatrix* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = bitcast %class.SparseMatrix* %5 to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 32
  %12 = bitcast i8* %11 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %12, align 8
  %13 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  invoke void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer* %13, %class.SparsityPattern* null)
          to label %14 unwind label %17

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  store double* null, double** %15, align 8
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 3
  store i32 0, i32* %16, align 8
  ret void

; <label>:17:                                     ; preds = %1
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %3, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %4, align 4
  %21 = bitcast %class.SparseMatrix* %5 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 32
  %23 = bitcast i8* %22 to %class.Subscriptor*
  invoke void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %23)
          to label %24 unwind label %30

; <label>:24:                                     ; preds = %17
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

; <label>:30:                                     ; preds = %17
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #11
  unreachable
}

declare void @_ZN11SubscriptorC2Ev(%class.Subscriptor*) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11SubscriptorD2Ev(%class.Subscriptor*) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #11
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdEC2ERKS0_(%class.SparseMatrix*, i8**, %class.SparseMatrix* dereferenceable(56)) unnamed_addr #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %class.SparseMatrix* %2, %class.SparseMatrix** %6, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast %class.SparseMatrix* %7 to i32 (...)***
  %11 = bitcast i8* %9 to i32 (...)**
  store i32 (...)** %11, i32 (...)*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %8, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast %class.SparseMatrix* %7 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %class.SparseMatrix* %7 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  %21 = bitcast i8* %20 to i32 (...)***
  %22 = bitcast i8* %13 to i32 (...)**
  store i32 (...)** %22, i32 (...)*** %21, align 8
  %23 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  call void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer* %23, %class.SparsityPattern* null)
  %24 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  store double* null, double** %24, align 8
  %25 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  store i32 0, i32* %25, align 8
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdEC1ERKS0_(%class.SparseMatrix*, %class.SparseMatrix* dereferenceable(56)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = bitcast %class.SparseMatrix* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 32
  %10 = bitcast i8* %9 to %class.Subscriptor*
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %12 = bitcast %class.SparseMatrix* %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i64 -24
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %class.SparseMatrix* %11 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 %16
  %19 = bitcast i8* %18 to %class.Subscriptor*
  call void @_ZN11SubscriptorC2ERKS_(%class.Subscriptor* %10, %class.Subscriptor* dereferenceable(24) %19)
  %20 = bitcast %class.SparseMatrix* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %20, align 8
  %21 = bitcast %class.SparseMatrix* %7 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 32
  %23 = bitcast i8* %22 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %23, align 8
  %24 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  invoke void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer* %24, %class.SparsityPattern* null)
          to label %25 unwind label %28

; <label>:25:                                     ; preds = %2
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  store double* null, double** %26, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  store i32 0, i32* %27, align 8
  ret void

; <label>:28:                                     ; preds = %2
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %5, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %6, align 4
  %32 = bitcast %class.SparseMatrix* %7 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 32
  %34 = bitcast i8* %33 to %class.Subscriptor*
  invoke void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %34)
          to label %35 unwind label %41

; <label>:35:                                     ; preds = %28
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

; <label>:41:                                     ; preds = %28
  %42 = landingpad { i8*, i32 }
          catch i8* null
  %43 = extractvalue { i8*, i32 } %42, 0
  call void @__clang_call_terminate(i8* %43) #11
  unreachable
}

declare void @_ZN11SubscriptorC2ERKS_(%class.Subscriptor*, %class.Subscriptor* dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdEC2ERK15SparsityPattern(%class.SparseMatrix*, i8**, %class.SparsityPattern* dereferenceable(72)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %class.SparsityPattern*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %class.SparsityPattern* %2, %class.SparsityPattern** %6, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast %class.SparseMatrix* %9 to i32 (...)***
  %13 = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %13, i32 (...)*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %10, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast %class.SparseMatrix* %9 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr i8, i8* %17, i64 -24
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = bitcast %class.SparseMatrix* %9 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  %23 = bitcast i8* %22 to i32 (...)***
  %24 = bitcast i8* %15 to i32 (...)**
  store i32 (...)** %24, i32 (...)*** %23, align 8
  %25 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  call void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer* %25, %class.SparsityPattern* null)
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  store double* null, double** %26, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = bitcast %class.SparseMatrix* %9 to void (%class.SparseMatrix*, %class.SparsityPattern*)***
  %29 = load void (%class.SparseMatrix*, %class.SparsityPattern*)**, void (%class.SparseMatrix*, %class.SparsityPattern*)*** %28, align 8
  %30 = getelementptr inbounds void (%class.SparseMatrix*, %class.SparsityPattern*)*, void (%class.SparseMatrix*, %class.SparsityPattern*)** %29, i64 2
  %31 = load void (%class.SparseMatrix*, %class.SparsityPattern*)*, void (%class.SparseMatrix*, %class.SparsityPattern*)** %30, align 8
  %32 = load %class.SparsityPattern*, %class.SparsityPattern** %6, align 8
  invoke void %31(%class.SparseMatrix* %9, %class.SparsityPattern* dereferenceable(72) %32)
          to label %33 unwind label %34

; <label>:33:                                     ; preds = %3
  ret void

; <label>:34:                                     ; preds = %3
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %7, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %8, align 4
  invoke void @_ZN12SmartPointerIK15SparsityPatternED2Ev(%class.SmartPointer* %25)
          to label %38 unwind label %44

; <label>:38:                                     ; preds = %34
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

; <label>:44:                                     ; preds = %34
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #11
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12SmartPointerIK15SparsityPatternED2Ev(%class.SmartPointer*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.SmartPointer*, align 8
  store %class.SmartPointer* %0, %class.SmartPointer** %2, align 8
  %3 = load %class.SmartPointer*, %class.SmartPointer** %2, align 8
  %4 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %3, i32 0, i32 0
  %5 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  %6 = icmp ne %class.SparsityPattern* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %3, i32 0, i32 0
  %9 = load %class.SparsityPattern*, %class.SparsityPattern** %8, align 8
  %10 = bitcast %class.SparsityPattern* %9 to %class.Subscriptor*
  call void @_ZNK11Subscriptor11unsubscribeEv(%class.Subscriptor* %10)
  br label %11

; <label>:11:                                     ; preds = %7, %1
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdEC1ERK15SparsityPattern(%class.SparseMatrix*, %class.SparsityPattern* dereferenceable(72)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.SparsityPattern*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.SparsityPattern* %1, %class.SparsityPattern** %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = bitcast %class.SparseMatrix* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 32
  %10 = bitcast i8* %9 to %class.Subscriptor*
  call void @_ZN11SubscriptorC2Ev(%class.Subscriptor* %10)
  %11 = bitcast %class.SparseMatrix* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %11, align 8
  %12 = bitcast %class.SparseMatrix* %7 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 32
  %14 = bitcast i8* %13 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*], [5 x i8*] }, { [7 x i8*], [5 x i8*] }* @_ZTV12SparseMatrixIdE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %14, align 8
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  invoke void @_ZN12SmartPointerIK15SparsityPatternEC2EPS1_(%class.SmartPointer* %15, %class.SparsityPattern* null)
          to label %16 unwind label %25

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  store double* null, double** %17, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = bitcast %class.SparseMatrix* %7 to void (%class.SparseMatrix*, %class.SparsityPattern*)***
  %20 = load void (%class.SparseMatrix*, %class.SparsityPattern*)**, void (%class.SparseMatrix*, %class.SparsityPattern*)*** %19, align 8
  %21 = getelementptr inbounds void (%class.SparseMatrix*, %class.SparsityPattern*)*, void (%class.SparseMatrix*, %class.SparsityPattern*)** %20, i64 2
  %22 = load void (%class.SparseMatrix*, %class.SparsityPattern*)*, void (%class.SparseMatrix*, %class.SparsityPattern*)** %21, align 8
  %23 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  invoke void %22(%class.SparseMatrix* %7, %class.SparsityPattern* dereferenceable(72) %23)
          to label %24 unwind label %29

; <label>:24:                                     ; preds = %16
  ret void

; <label>:25:                                     ; preds = %2
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %5, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %6, align 4
  br label %34

; <label>:29:                                     ; preds = %16
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %5, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %6, align 4
  invoke void @_ZN12SmartPointerIK15SparsityPatternED2Ev(%class.SmartPointer* %15)
          to label %33 unwind label %44

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %33, %25
  %35 = bitcast %class.SparseMatrix* %7 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 32
  %37 = bitcast i8* %36 to %class.Subscriptor*
  invoke void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %37)
          to label %38 unwind label %44

; <label>:38:                                     ; preds = %34
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

; <label>:44:                                     ; preds = %34, %29
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #11
  unreachable
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdED2Ev(%class.SparseMatrix*, i8**) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast %class.SparseMatrix* %7 to i32 (...)***
  %11 = bitcast i8* %9 to i32 (...)**
  store i32 (...)** %11, i32 (...)*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %8, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast %class.SparseMatrix* %7 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %class.SparseMatrix* %7 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  %21 = bitcast i8* %20 to i32 (...)***
  %22 = bitcast i8* %13 to i32 (...)**
  store i32 (...)** %22, i32 (...)*** %21, align 8
  %23 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %24 = invoke dereferenceable(8) %class.SmartPointer* @_ZN12SmartPointerIK15SparsityPatternEaSEPS1_(%class.SmartPointer* %23, %class.SparsityPattern* null)
          to label %25 unwind label %36

; <label>:25:                                     ; preds = %2
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %27 = load double*, double** %26, align 8
  %28 = icmp ne double* %27, null
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %31 = load double*, double** %30, align 8
  %32 = icmp eq double* %31, null
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %29
  %34 = bitcast double* %31 to i8*
  call void @_ZdaPv(i8* %34) #12
  br label %35

; <label>:35:                                     ; preds = %33, %29
  br label %41

; <label>:36:                                     ; preds = %2
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %5, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %6, align 4
  %40 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  invoke void @_ZN12SmartPointerIK15SparsityPatternED2Ev(%class.SmartPointer* %40)
          to label %43 unwind label %49

; <label>:41:                                     ; preds = %35, %25
  %42 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  call void @_ZN12SmartPointerIK15SparsityPatternED2Ev(%class.SmartPointer* %42)
  ret void

; <label>:43:                                     ; preds = %36
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = insertvalue { i8*, i32 } undef, i8* %45, 0
  %48 = insertvalue { i8*, i32 } %47, i32 %46, 1
  resume { i8*, i32 } %48

; <label>:49:                                     ; preds = %36
  %50 = landingpad { i8*, i32 }
          catch i8* null
  %51 = extractvalue { i8*, i32 } %50, 0
  call void @__clang_call_terminate(i8* %51) #11
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %class.SmartPointer* @_ZN12SmartPointerIK15SparsityPatternEaSEPS1_(%class.SmartPointer*, %class.SparsityPattern*) #0 comdat align 2 {
  %3 = alloca %class.SmartPointer*, align 8
  %4 = alloca %class.SmartPointer*, align 8
  %5 = alloca %class.SparsityPattern*, align 8
  store %class.SmartPointer* %0, %class.SmartPointer** %4, align 8
  store %class.SparsityPattern* %1, %class.SparsityPattern** %5, align 8
  %6 = load %class.SmartPointer*, %class.SmartPointer** %4, align 8
  %7 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %6, i32 0, i32 0
  %8 = load %class.SparsityPattern*, %class.SparsityPattern** %7, align 8
  %9 = load %class.SparsityPattern*, %class.SparsityPattern** %5, align 8
  %10 = icmp eq %class.SparsityPattern* %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store %class.SmartPointer* %6, %class.SmartPointer** %3, align 8
  br label %29

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %6, i32 0, i32 0
  %14 = load %class.SparsityPattern*, %class.SparsityPattern** %13, align 8
  %15 = icmp ne %class.SparsityPattern* %14, null
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %6, i32 0, i32 0
  %18 = load %class.SparsityPattern*, %class.SparsityPattern** %17, align 8
  %19 = bitcast %class.SparsityPattern* %18 to %class.Subscriptor*
  call void @_ZNK11Subscriptor11unsubscribeEv(%class.Subscriptor* %19)
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = load %class.SparsityPattern*, %class.SparsityPattern** %5, align 8
  %22 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %6, i32 0, i32 0
  store %class.SparsityPattern* %21, %class.SparsityPattern** %22, align 8
  %23 = load %class.SparsityPattern*, %class.SparsityPattern** %5, align 8
  %24 = icmp ne %class.SparsityPattern* %23, null
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %20
  %26 = load %class.SparsityPattern*, %class.SparsityPattern** %5, align 8
  %27 = bitcast %class.SparsityPattern* %26 to %class.Subscriptor*
  call void @_ZNK11Subscriptor9subscribeEv(%class.Subscriptor* %27)
  br label %28

; <label>:28:                                     ; preds = %25, %20
  store %class.SmartPointer* %6, %class.SmartPointer** %3, align 8
  br label %29

; <label>:29:                                     ; preds = %28, %11
  %30 = load %class.SmartPointer*, %class.SmartPointer** %3, align 8
  ret %class.SmartPointer* %30
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdED1Ev(%class.SparseMatrix*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  invoke void @_ZN12SparseMatrixIdED2Ev(%class.SparseMatrix* %5, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_ZTT12SparseMatrixIdE, i64 0, i64 0))
          to label %6 unwind label %10

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.SparseMatrix* %5 to i8*
  %8 = getelementptr inbounds i8, i8* %7, i64 32
  %9 = bitcast i8* %8 to %class.Subscriptor*
  call void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %9)
  ret void

; <label>:10:                                     ; preds = %1
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %3, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %4, align 4
  %14 = bitcast %class.SparseMatrix* %5 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 32
  %16 = bitcast i8* %15 to %class.Subscriptor*
  invoke void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %16)
          to label %17 unwind label %23

; <label>:17:                                     ; preds = %10
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22

; <label>:23:                                     ; preds = %10
  %24 = landingpad { i8*, i32 }
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  call void @__clang_call_terminate(i8* %25) #11
  unreachable
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZTv0_n24_N12SparseMatrixIdED1Ev(%class.SparseMatrix*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = bitcast %class.SparseMatrix* %3 to i8*
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 %9
  %11 = bitcast i8* %10 to %class.SparseMatrix*
  tail call void @_ZN12SparseMatrixIdED1Ev(%class.SparseMatrix* %11)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdED0Ev(%class.SparseMatrix*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  invoke void @_ZN12SparseMatrixIdED1Ev(%class.SparseMatrix* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.SparseMatrix* %5 to i8*
  call void @_ZdlPv(i8* %7) #12
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.SparseMatrix* %5 to i8*
  call void @_ZdlPv(i8* %12) #12
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: noinline uwtable
define weak_odr void @_ZTv0_n24_N12SparseMatrixIdED0Ev(%class.SparseMatrix*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = bitcast %class.SparseMatrix* %3 to i8*
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 %9
  %11 = bitcast i8* %10 to %class.SparseMatrix*
  tail call void @_ZN12SparseMatrixIdED0Ev(%class.SparseMatrix* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak_odr dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdEaSERKS0_(%class.SparseMatrix*, %class.SparseMatrix* dereferenceable(56)) #5 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  ret %class.SparseMatrix* %5
}

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdEaSEd(%class.SparseMatrix*, double) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %7 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %8 = load double*, double** %7, align 8
  %9 = icmp ne double* %8, null
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %12 = load double*, double** %11, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 1
  %15 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %14)
  %16 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %15)
  store double 0.000000e+00, double* %5, align 8
  %17 = call double* @_ZSt6fill_nIPdjdET_S1_T0_RKT1_(double* %13, i32 %16, double* dereferenceable(8) %5)
  br label %18

; <label>:18:                                     ; preds = %10, %2
  ret %class.SparseMatrix* %6
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt6fill_nIPdjdET_S1_T0_RKT1_(double*, i32, double* dereferenceable(8)) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load double*, double** %6, align 8
  %11 = call double* @_ZSt10__fill_n_aIPdjdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %8, i32 %9, double* dereferenceable(8) %10)
  %12 = call double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8) %4, double* %11)
  ret double* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer*) #5 comdat align 2 {
  %2 = alloca %class.SmartPointer*, align 8
  store %class.SmartPointer* %0, %class.SmartPointer** %2, align 8
  %3 = load %class.SmartPointer*, %class.SmartPointer** %2, align 8
  %4 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %3, i32 0, i32 0
  %5 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  ret %class.SparsityPattern* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern*) #5 comdat align 2 {
  %2 = alloca %class.SparsityPattern*, align 8
  store %class.SparsityPattern* %0, %class.SparsityPattern** %2, align 8
  %3 = load %class.SparsityPattern*, %class.SparsityPattern** %2, align 8
  %4 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %3, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %3, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %10, %14
  ret i32 %15
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE6reinitERK15SparsityPattern(%class.SparseMatrix*, %class.SparsityPattern* dereferenceable(72)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.SparsityPattern*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.SparsityPattern* %1, %class.SparsityPattern** %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  %9 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %10 = call dereferenceable(8) %class.SmartPointer* @_ZN12SmartPointerIK15SparsityPatternEaSEPS1_(%class.SmartPointer* %9, %class.SparsityPattern* %8)
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %12 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %11)
  %13 = call zeroext i1 @_ZNK15SparsityPattern5emptyEv(%class.SparsityPattern* %12)
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %16 = load double*, double** %15, align 8
  %17 = icmp ne double* %16, null
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %20 = load double*, double** %19, align 8
  %21 = icmp eq double* %20, null
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = bitcast double* %20 to i8*
  call void @_ZdaPv(i8* %23) #12
  br label %24

; <label>:24:                                     ; preds = %22, %18
  br label %25

; <label>:25:                                     ; preds = %24, %14
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  store double* null, double** %26, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  store i32 0, i32* %27, align 8
  br label %73

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %30 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %29)
  %31 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %63

; <label>:40:                                     ; preds = %36, %28
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %42 = load double*, double** %41, align 8
  %43 = icmp ne double* %42, null
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = icmp eq double* %46, null
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %44
  %49 = bitcast double* %46 to i8*
  call void @_ZdaPv(i8* %49) #12
  br label %50

; <label>:50:                                     ; preds = %48, %44
  br label %51

; <label>:51:                                     ; preds = %50, %40
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %53, i64 8)
  %55 = extractvalue { i64, i1 } %54, 1
  %56 = extractvalue { i64, i1 } %54, 0
  %57 = select i1 %55, i64 -1, i64 %56
  %58 = call i8* @_Znam(i64 %57) #13
  %59 = bitcast i8* %58 to double*
  %60 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  store double* %59, double** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 3
  store i32 %61, i32* %62, align 8
  br label %63

; <label>:63:                                     ; preds = %51, %36
  %64 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %65 = load double*, double** %64, align 8
  %66 = icmp ne double* %65, null
  br i1 %66, label %67, label %73

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %69 = load double*, double** %68, align 8
  %70 = getelementptr inbounds double, double* %69, i64 0
  %71 = load i32, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %72 = call double* @_ZSt6fill_nIPdjiET_S1_T0_RKT1_(double* %70, i32 %71, i32* dereferenceable(4) %6)
  br label %73

; <label>:73:                                     ; preds = %67, %63, %25
  ret void
}

declare zeroext i1 @_ZNK15SparsityPattern5emptyEv(%class.SparsityPattern*) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt6fill_nIPdjiET_S1_T0_RKT1_(double*, i32, i32* dereferenceable(4)) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call double* @_ZSt10__fill_n_aIPdjiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %8, i32 %9, i32* dereferenceable(4) %10)
  %12 = call double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8) %4, double* %11)
  ret double* %12
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE5clearEv(%class.SparseMatrix*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 1
  %5 = call dereferenceable(8) %class.SmartPointer* @_ZN12SmartPointerIK15SparsityPatternEaSEPS1_(%class.SmartPointer* %4, %class.SparsityPattern* null)
  %6 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 2
  %7 = load double*, double** %6, align 8
  %8 = icmp ne double* %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 2
  %11 = load double*, double** %10, align 8
  %12 = icmp eq double* %11, null
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = bitcast double* %11 to i8*
  call void @_ZdaPv(i8* %14) #12
  br label %15

; <label>:15:                                     ; preds = %13, %9
  br label %16

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 2
  store double* null, double** %17, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 3
  store i32 0, i32* %18, align 8
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr zeroext i1 @_ZNK12SparseMatrixIdE5emptyEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca i1, align 1
  %3 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  %4 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %5 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %4, i32 0, i32 1
  %6 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEcvPS1_Ev(%class.SmartPointer* %5)
  %7 = icmp eq %class.SparsityPattern* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i1 true, i1* %2, align 1
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %4, i32 0, i32 1
  %11 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %10)
  %12 = call zeroext i1 @_ZNK15SparsityPattern5emptyEv(%class.SparsityPattern* %11)
  store i1 %12, i1* %2, align 1
  br label %13

; <label>:13:                                     ; preds = %9, %8
  %14 = load i1, i1* %2, align 1
  ret i1 %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEcvPS1_Ev(%class.SmartPointer*) #5 comdat align 2 {
  %2 = alloca %class.SmartPointer*, align 8
  store %class.SmartPointer* %0, %class.SmartPointer** %2, align 8
  %3 = load %class.SmartPointer*, %class.SmartPointer** %2, align 8
  %4 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %3, i32 0, i32 0
  %5 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  ret %class.SparsityPattern* %5
}

; Function Attrs: noinline uwtable
define weak_odr i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 1
  %5 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %4)
  %6 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline uwtable
define weak_odr i32 @_ZNK12SparseMatrixIdE1nEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 1
  %5 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %4)
  %6 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  ret i32 %7
}

; Function Attrs: noinline uwtable
define weak_odr i32 @_ZNK12SparseMatrixIdE18n_nonzero_elementsEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 1
  %5 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %4)
  %6 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %5)
  ret i32 %6
}

; Function Attrs: noinline uwtable
define weak_odr i32 @_ZNK12SparseMatrixIdE27n_actually_nonzero_elementsEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca %"class.std::binder2nd", align 8
  %4 = alloca %"struct.std::not_equal_to", align 1
  %5 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %6 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %7 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %8 = load double*, double** %7, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %11 = load double*, double** %10, align 8
  %12 = call i32 @_ZNK12SparseMatrixIdE18n_nonzero_elementsEv(%class.SparseMatrix* %6)
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds double, double* %11, i64 %13
  store i32 0, i32* %5, align 4
  %15 = call double @_ZSt7bind2ndISt12not_equal_toIdEiESt9binder2ndIT_ERKS3_RKT0_(%"struct.std::not_equal_to"* dereferenceable(1) %4, i32* dereferenceable(4) %5)
  %16 = bitcast %"class.std::binder2nd"* %3 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 8
  %18 = bitcast i8* %17 to double*
  store double %15, double* %18, align 8
  %19 = bitcast %"class.std::binder2nd"* %3 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  %21 = bitcast i8* %20 to double*
  %22 = load double, double* %21, align 8
  %23 = call i64 @_ZSt8count_ifIPdSt9binder2ndISt12not_equal_toIdEEENSt15iterator_traitsIT_E15difference_typeES6_S6_T0_(double* %9, double* %14, double %22)
  %24 = trunc i64 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt8count_ifIPdSt9binder2ndISt12not_equal_toIdEEENSt15iterator_traitsIT_E15difference_typeES6_S6_T0_(double*, double*, double) #0 comdat {
  %4 = alloca %"class.std::binder2nd", align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  %8 = alloca %"class.std::binder2nd", align 8
  %9 = bitcast %"class.std::binder2nd"* %4 to i8*
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to double*
  store double %2, double* %11, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  %12 = load double*, double** %5, align 8
  %13 = load double*, double** %6, align 8
  %14 = bitcast %"class.std::binder2nd"* %8 to i8*
  %15 = bitcast %"class.std::binder2nd"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %"class.std::binder2nd"* %8 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 8
  %18 = bitcast i8* %17 to double*
  %19 = load double, double* %18, align 8
  %20 = call double @_ZN9__gnu_cxx5__ops11__pred_iterISt9binder2ndISt12not_equal_toIdEEEENS0_10_Iter_predIT_EES7_(double %19)
  %21 = bitcast %"struct.__gnu_cxx::__ops::_Iter_pred"* %7 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 8
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_pred"* %7 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = bitcast i8* %25 to double*
  %27 = load double, double* %26, align 8
  %28 = call i64 @_ZSt10__count_ifIPdN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_(double* %12, double* %13, double %27)
  ret i64 %28
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZSt7bind2ndISt12not_equal_toIdEiESt9binder2ndIT_ERKS3_RKT0_(%"struct.std::not_equal_to"* dereferenceable(1), i32* dereferenceable(4)) #0 comdat {
  %3 = alloca %"class.std::binder2nd", align 8
  %4 = alloca %"struct.std::not_equal_to"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  store %"struct.std::not_equal_to"* %0, %"struct.std::not_equal_to"** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %"struct.std::not_equal_to"*, %"struct.std::not_equal_to"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  store double %10, double* %6, align 8
  call void @_ZNSt9binder2ndISt12not_equal_toIdEEC2ERKS1_RKd(%"class.std::binder2nd"* %3, %"struct.std::not_equal_to"* dereferenceable(1) %7, double* dereferenceable(8) %6)
  %11 = bitcast %"class.std::binder2nd"* %3 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %13 = bitcast i8* %12 to double*
  %14 = load double, double* %13, align 8
  ret double %14
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE3setEjjd(%class.SparseMatrix*, i32, i32, double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %12 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %4
  %19 = load double, double* %8, align 8
  %20 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  store double %19, double* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %4
  ret void
}

declare i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern*, i32, i32) #1

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdEmLEd(%class.SparseMatrix*, double) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store double %1, double* %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %9 = load double*, double** %8, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  store double* %10, double** %5, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %12 = load double*, double** %11, align 8
  %13 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %14 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %13)
  %15 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %14)
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %12, i64 %16
  store double* %17, double** %6, align 8
  br label %18

; <label>:18:                                     ; preds = %22, %2
  %19 = load double*, double** %5, align 8
  %20 = load double*, double** %6, align 8
  %21 = icmp ne double* %19, %20
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %18
  %23 = load double, double* %4, align 8
  %24 = load double*, double** %5, align 8
  %25 = getelementptr inbounds double, double* %24, i32 1
  store double* %25, double** %5, align 8
  %26 = load double, double* %24, align 8
  %27 = fmul double %26, %23
  store double %27, double* %24, align 8
  br label %18

; <label>:28:                                     ; preds = %18
  ret %class.SparseMatrix* %7
}

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdEdVEd(%class.SparseMatrix*, double) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store double %1, double* %4, align 8
  %8 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %9 = load double, double* %4, align 8
  %10 = fdiv double 1.000000e+00, %9
  store double %10, double* %5, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %8, i32 0, i32 2
  %12 = load double*, double** %11, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  store double* %13, double** %6, align 8
  %14 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %8, i32 0, i32 2
  %15 = load double*, double** %14, align 8
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %8, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %17)
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %15, i64 %19
  store double* %20, double** %7, align 8
  br label %21

; <label>:21:                                     ; preds = %25, %2
  %22 = load double*, double** %6, align 8
  %23 = load double*, double** %7, align 8
  %24 = icmp ne double* %22, %23
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %21
  %26 = load double, double* %5, align 8
  %27 = load double*, double** %6, align 8
  %28 = getelementptr inbounds double, double* %27, i32 1
  store double* %28, double** %6, align 8
  %29 = load double, double* %27, align 8
  %30 = fmul double %29, %26
  store double %30, double* %27, align 8
  br label %21

; <label>:31:                                     ; preds = %21
  ret %class.SparseMatrix* %8
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE3addEjjd(%class.SparseMatrix*, i32, i32, double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %12 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load double, double* %8, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %27

; <label>:18:                                     ; preds = %4
  %19 = load double, double* %8, align 8
  %20 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fadd double %25, %19
  store double %26, double* %24, align 8
  br label %27

; <label>:27:                                     ; preds = %18, %4
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE10symmetrizeEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %10 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %9)
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

; <label>:11:                                     ; preds = %101, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %104

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %17, i64 %26
  store double* %27, double** %5, align 8
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = call zeroext i1 @_ZNK15SparsityPattern17optimize_diagonalEv(%class.SparsityPattern* %29)
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %15
  %32 = load double*, double** %5, align 8
  %33 = getelementptr inbounds double, double* %32, i32 1
  store double* %33, double** %5, align 8
  br label %34

; <label>:34:                                     ; preds = %31, %15
  %35 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %36 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %35)
  %37 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %38, i64 %48
  store i32* %49, i32** %6, align 8
  %50 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %51 = load double*, double** %50, align 8
  %52 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %53 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %52)
  %54 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %51, i64 %61
  store double* %62, double** %7, align 8
  br label %63

; <label>:63:                                     ; preds = %74, %34
  %64 = load double*, double** %5, align 8
  %65 = load double*, double** %7, align 8
  %66 = icmp ne double* %64, %65
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ult i32 %69, %70
  br label %72

; <label>:72:                                     ; preds = %67, %63
  %73 = phi i1 [ false, %63 ], [ %71, %67 ]
  br i1 %73, label %74, label %100

; <label>:74:                                     ; preds = %72
  %75 = load double*, double** %5, align 8
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %78 = load double*, double** %77, align 8
  %79 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %80 = call dereferenceable(72) %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEdeEv(%class.SmartPointer* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %80, i32 %82, i32 %83)
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %78, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fadd double %76, %87
  %89 = fdiv double %88, 2.000000e+00
  store double %89, double* %8, align 8
  %90 = load double, double* %8, align 8
  %91 = load double*, double** %5, align 8
  store double %90, double* %91, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load double, double* %8, align 8
  call void @_ZN12SparseMatrixIdE3setEjjd(%class.SparseMatrix* %9, i32 %93, i32 %94, double %95)
  %96 = load double*, double** %5, align 8
  %97 = getelementptr inbounds double, double* %96, i32 1
  store double* %97, double** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %6, align 8
  br label %63

; <label>:100:                                    ; preds = %72
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %11

; <label>:104:                                    ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK15SparsityPattern17optimize_diagonalEv(%class.SparsityPattern*) #5 comdat align 2 {
  %2 = alloca %class.SparsityPattern*, align 8
  store %class.SparsityPattern* %0, %class.SparsityPattern** %2, align 8
  %3 = load %class.SparsityPattern*, %class.SparsityPattern** %2, align 8
  %4 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %3, i32 0, i32 10
  %5 = load i8, i8* %4, align 1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(72) %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEdeEv(%class.SmartPointer*) #5 comdat align 2 {
  %2 = alloca %class.SmartPointer*, align 8
  store %class.SmartPointer* %0, %class.SmartPointer** %2, align 8
  %3 = load %class.SmartPointer*, %class.SmartPointer** %2, align 8
  %4 = getelementptr inbounds %class.SmartPointer, %class.SmartPointer* %3, i32 0, i32 0
  %5 = load %class.SparsityPattern*, %class.SparsityPattern** %4, align 8
  ret %class.SparsityPattern* %5
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdEclEjj(%class.SparseMatrix*, i32, i32) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex", align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %12 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  call void @_ZN12SparseMatrixIdE15ExcInvalidIndexC1Eii(%"class.SparseMatrix<double>::ExcInvalidIndex"* %7, i32 %18, i32 %19)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN12SparseMatrixIdE15ExcInvalidIndexEEEvPKciS6_S6_S6_T_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 1768, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %"class.SparseMatrix<double>::ExcInvalidIndex"* %7)
          to label %20 unwind label %21

; <label>:20:                                     ; preds = %17
  call void @_ZN12SparseMatrixIdE15ExcInvalidIndexD1Ev(%"class.SparseMatrix<double>::ExcInvalidIndex"* %7) #2
  br label %25

; <label>:21:                                     ; preds = %17
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %8, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %9, align 4
  call void @_ZN12SparseMatrixIdE15ExcInvalidIndexD1Ev(%"class.SparseMatrix<double>::ExcInvalidIndex"* %7) #2
  br label %36

; <label>:25:                                     ; preds = %20, %3
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %29, i32 %30, i32 %31)
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %27, i64 %33
  %35 = load double, double* %34, align 8
  ret double %35

; <label>:36:                                     ; preds = %21
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN18deal_II_exceptions9internals17issue_error_throwIN12SparseMatrixIdE15ExcInvalidIndexEEEvPKciS6_S6_S6_T_(i8*, i32, i8*, i8*, i8*, %"class.SparseMatrix<double>::ExcInvalidIndex"*) #0 comdat {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %5 to %class.ExceptionBase*
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** %11, align 8
  call void @_ZN13ExceptionBase9SetFieldsEPKciS1_S1_S1_(%class.ExceptionBase* %12, i8* %13, i32 %14, i8* %15, i8* %16, i8* %17)
  %18 = call i8* @__cxa_allocate_exception(i64 56) #2
  %19 = bitcast i8* %18 to %"class.SparseMatrix<double>::ExcInvalidIndex"*
  call void @_ZN12SparseMatrixIdE15ExcInvalidIndexC2ERKS1_(%"class.SparseMatrix<double>::ExcInvalidIndex"* %19, %"class.SparseMatrix<double>::ExcInvalidIndex"* dereferenceable(56) %5) #2
  call void @__cxa_throw(i8* %18, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12SparseMatrixIdE15ExcInvalidIndexE to i8*), i8* bitcast (void (%"class.SparseMatrix<double>::ExcInvalidIndex"*)* @_ZN12SparseMatrixIdE15ExcInvalidIndexD1Ev to i8*)) #14
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE2elEjj(%class.SparseMatrix*, i32, i32) #0 comdat align 2 {
  %4 = alloca double, align 8
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %11 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %19 = load double*, double** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  store double %23, double* %4, align 8
  br label %25

; <label>:24:                                     ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %25

; <label>:25:                                     ; preds = %24, %17
  %26 = load double, double* %4, align 8
  ret double %26
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE12diag_elementEj(%class.SparseMatrix*, i32) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  %7 = load double*, double** %6, align 8
  %8 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  %9 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %8)
  %10 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %7, i64 %16
  %18 = load double, double* %17, align 8
  ret double %18
}

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(8) double* @_ZN12SparseMatrixIdE12diag_elementEj(%class.SparseMatrix*, i32) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  %7 = load double*, double** %6, align 8
  %8 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  %9 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %8)
  %10 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %7, i64 %16
  ret double* %17
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE9raw_entryEjj(%class.SparseMatrix*, i32, i32) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %8 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 2
  %9 = load double*, double** %8, align 8
  %10 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %11 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %10)
  %12 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %9, i64 %20
  %22 = load double, double* %21, align 8
  ret double %22
}

; Function Attrs: noinline nounwind uwtable
define weak_odr double @_ZNK12SparseMatrixIdE12global_entryEj(%class.SparseMatrix*, i32) #5 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  %11 = load double, double* %10, align 8
  ret double %11
}

; Function Attrs: noinline nounwind uwtable
define weak_odr dereferenceable(8) double* @_ZN12SparseMatrixIdE12global_entryEj(%class.SparseMatrix*, i32) #5 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  ret double* %10
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE7l1_normEv(%class.SparseMatrix*) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca %class.Vector, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*
  %6 = alloca i32
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %10 = call i32 @_ZNK12SparseMatrixIdE1nEv(%class.SparseMatrix* %9)
  call void @_ZN6VectorIdEC2Ej(%class.Vector* %3, i32 %10)
  %11 = invoke i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %9)
          to label %12 unwind label %64

; <label>:12:                                     ; preds = %1
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %69, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %72

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %19 = invoke %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
          to label %20 unwind label %64

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %61, %20
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %30 = invoke %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %29)
          to label %31 unwind label %64

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %30, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %28, %38
  br i1 %39, label %40, label %68

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %42 = load double*, double** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call double @fabs(double %46) #6
  %48 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %49 = invoke %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %48)
          to label %50 unwind label %64

; <label>:50:                                     ; preds = %40
  %51 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %49, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = invoke dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %3, i32 %56)
          to label %58 unwind label %64

; <label>:58:                                     ; preds = %50
  %59 = load double, double* %57, align 8
  %60 = fadd double %59, %47
  store double %60, double* %57, align 8
  br label %61

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %27

; <label>:64:                                     ; preds = %72, %50, %40, %27, %17, %1
  %65 = landingpad { i8*, i32 }
          cleanup
  %66 = extractvalue { i8*, i32 } %65, 0
  store i8* %66, i8** %5, align 8
  %67 = extractvalue { i8*, i32 } %65, 1
  store i32 %67, i32* %6, align 4
  invoke void @_ZN6VectorIdED2Ev(%class.Vector* %3)
          to label %75 unwind label %81

; <label>:68:                                     ; preds = %31
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %13

; <label>:72:                                     ; preds = %13
  %73 = invoke double @_ZNK6VectorIdE11linfty_normEv(%class.Vector* %3)
          to label %74 unwind label %64

; <label>:74:                                     ; preds = %72
  call void @_ZN6VectorIdED2Ev(%class.Vector* %3)
  ret double %73

; <label>:75:                                     ; preds = %64
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = insertvalue { i8*, i32 } undef, i8* %77, 0
  %80 = insertvalue { i8*, i32 } %79, i32 %78, 1
  resume { i8*, i32 } %80

; <label>:81:                                     ; preds = %64
  %82 = landingpad { i8*, i32 }
          catch i8* null
  %83 = extractvalue { i8*, i32 } %82, 0
  call void @__clang_call_terminate(i8* %83) #11
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6VectorIdEC2Ej(%class.Vector*, i32) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.Vector*, align 8
  %4 = alloca i32, align 4
  store %class.Vector* %0, %class.Vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Vector*, %class.Vector** %3, align 8
  %6 = bitcast %class.Vector* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV6VectorIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.Vector, %class.Vector* %5, i32 0, i32 1
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %class.Vector, %class.Vector* %5, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %class.Vector, %class.Vector* %5, i32 0, i32 3
  store double* null, double** %9, align 8
  %10 = load i32, i32* %4, align 4
  call void @_ZN6VectorIdE6reinitEjb(%class.Vector* %5, i32 %10, i1 zeroext false)
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector*, i32) #5 comdat align 2 {
  %3 = alloca %class.Vector*, align 8
  %4 = alloca i32, align 4
  store %class.Vector* %0, %class.Vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Vector*, %class.Vector** %3, align 8
  %6 = getelementptr inbounds %class.Vector, %class.Vector* %5, i32 0, i32 3
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  ret double* %10
}

declare double @_ZNK6VectorIdE11linfty_normEv(%class.Vector*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6VectorIdED2Ev(%class.Vector*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.Vector*, align 8
  store %class.Vector* %0, %class.Vector** %2, align 8
  %3 = load %class.Vector*, %class.Vector** %2, align 8
  %4 = bitcast %class.Vector* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV6VectorIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 3
  %6 = load double*, double** %5, align 8
  %7 = icmp ne double* %6, null
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 3
  %10 = load double*, double** %9, align 8
  %11 = icmp eq double* %10, null
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = bitcast double* %10 to i8*
  call void @_ZdaPv(i8* %13) #12
  br label %14

; <label>:14:                                     ; preds = %12, %8
  %15 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 3
  store double* null, double** %15, align 8
  br label %16

; <label>:16:                                     ; preds = %14, %1
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE11linfty_normEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %10 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %11 = load double*, double** %10, align 8
  %12 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %13 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %12)
  %14 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %11, i64 %18
  store double* %19, double** %3, align 8
  store double 0.000000e+00, double* %5, align 8
  %20 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %9)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %57, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %60

; <label>:25:                                     ; preds = %21
  store double 0.000000e+00, double* %4, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %27, i64 %37
  store double* %38, double** %8, align 8
  br label %39

; <label>:39:                                     ; preds = %43, %25
  %40 = load double*, double** %3, align 8
  %41 = load double*, double** %8, align 8
  %42 = icmp ne double* %40, %41
  br i1 %42, label %43, label %50

; <label>:43:                                     ; preds = %39
  %44 = load double*, double** %3, align 8
  %45 = getelementptr inbounds double, double* %44, i32 1
  store double* %45, double** %3, align 8
  %46 = load double, double* %44, align 8
  %47 = call double @fabs(double %46) #6
  %48 = load double, double* %4, align 8
  %49 = fadd double %48, %47
  store double %49, double* %4, align 8
  br label %39

; <label>:50:                                     ; preds = %39
  %51 = load double, double* %4, align 8
  %52 = load double, double* %5, align 8
  %53 = fcmp ogt double %51, %52
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %50
  %55 = load double, double* %4, align 8
  store double %55, double* %5, align 8
  br label %56

; <label>:56:                                     ; preds = %54, %50
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %21

; <label>:60:                                     ; preds = %21
  %61 = load double, double* %5, align 8
  ret double %61
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE14frobenius_normEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %6 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %7 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %6)
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %9 = load double*, double** %8, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  store double* %10, double** %5, align 8
  br label %11

; <label>:11:                                     ; preds = %34, %1
  %12 = load double*, double** %5, align 8
  %13 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %14 = load double*, double** %13, align 8
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 1
  %16 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %15)
  %17 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %14, i64 %23
  %25 = icmp ne double* %12, %24
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %11
  %27 = load double*, double** %5, align 8
  %28 = load double, double* %27, align 8
  %29 = load double*, double** %5, align 8
  %30 = load double, double* %29, align 8
  %31 = fmul double %28, %30
  %32 = load double, double* %3, align 8
  %33 = fadd double %32, %31
  store double %33, double* %3, align 8
  br label %34

; <label>:34:                                     ; preds = %26
  %35 = load double*, double** %5, align 8
  %36 = getelementptr inbounds double, double* %35, i32 1
  store double* %36, double** %5, align 8
  br label %11

; <label>:37:                                     ; preds = %11
  %38 = load double, double* %3, align 8
  %39 = call double @sqrt(double %38) #2
  ret double %39
}

; Function Attrs: nounwind
declare double @sqrt(double) #9

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(72) %class.SparsityPattern* @_ZNK12SparseMatrixIdE20get_sparsity_patternEv(%class.SparseMatrix*) #0 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 1
  %5 = call dereferenceable(72) %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEdeEv(%class.SmartPointer* %4)
  ret %class.SparsityPattern* %5
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5beginEv(%"class.internals::SparseMatrixIterators::Iterator"* noalias sret, %class.SparseMatrix*) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i32, align 4
  store %class.SparseMatrix* %1, %class.SparseMatrix** %3, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %19, %2
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %5)
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  %12 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern* %12, i32 %13)
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator"* %0, %class.SparseMatrix* %5, i32 %17, i32 0)
  br label %23

; <label>:18:                                     ; preds = %10
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %6

; <label>:22:                                     ; preds = %6
  call void @_ZNK12SparseMatrixIdE3endEv(%"class.internals::SparseMatrixIterators::Iterator"* sret %0, %class.SparseMatrix* %5)
  br label %23

; <label>:23:                                     ; preds = %22, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern*, i32) #5 comdat align 2 {
  %3 = alloca %class.SparsityPattern*, align 8
  %4 = alloca i32, align 4
  store %class.SparsityPattern* %0, %class.SparsityPattern** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.SparsityPattern*, %class.SparsityPattern** %3, align 8
  %6 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %5, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %12, %18
  ret i32 %19
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9internals21SparseMatrixIterators8IteratorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator"*, %class.SparseMatrix*, i32, i32) unnamed_addr #0 comdat align 2 {
  %5 = alloca %"class.internals::SparseMatrixIterators::Iterator"*, align 8
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %"class.internals::SparseMatrixIterators::Iterator"* %0, %"class.internals::SparseMatrixIterators::Iterator"** %5, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %"class.internals::SparseMatrixIterators::Iterator"*, %"class.internals::SparseMatrixIterators::Iterator"** %5, align 8
  %10 = getelementptr inbounds %"class.internals::SparseMatrixIterators::Iterator", %"class.internals::SparseMatrixIterators::Iterator"* %9, i32 0, i32 0
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  call void @_ZN9internals21SparseMatrixIterators8AccessorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Accessor"* %10, %class.SparseMatrix* %11, i32 %12, i32 %13)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE3endEv(%"class.internals::SparseMatrixIterators::Iterator"* noalias sret, %class.SparseMatrix*) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %3, align 8
  %4 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %5 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %4)
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator"* %0, %class.SparseMatrix* %4, i32 %5, i32 0)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE5beginEv(%"class.internals::SparseMatrixIterators::Iterator.0"* noalias sret, %class.SparseMatrix*) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca i32, align 4
  store %class.SparseMatrix* %1, %class.SparseMatrix** %3, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %19, %2
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %5)
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  %12 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern* %12, i32 %13)
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator.0"* %0, %class.SparseMatrix* %5, i32 %17, i32 0)
  br label %23

; <label>:18:                                     ; preds = %10
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %6

; <label>:22:                                     ; preds = %6
  call void @_ZN12SparseMatrixIdE3endEv(%"class.internals::SparseMatrixIterators::Iterator.0"* sret %0, %class.SparseMatrix* %5)
  br label %23

; <label>:23:                                     ; preds = %22, %16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9internals21SparseMatrixIterators8IteratorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator.0"*, %class.SparseMatrix*, i32, i32) unnamed_addr #0 comdat align 2 {
  %5 = alloca %"class.internals::SparseMatrixIterators::Iterator.0"*, align 8
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %"class.internals::SparseMatrixIterators::Iterator.0"* %0, %"class.internals::SparseMatrixIterators::Iterator.0"** %5, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %"class.internals::SparseMatrixIterators::Iterator.0"*, %"class.internals::SparseMatrixIterators::Iterator.0"** %5, align 8
  %10 = getelementptr inbounds %"class.internals::SparseMatrixIterators::Iterator.0", %"class.internals::SparseMatrixIterators::Iterator.0"* %9, i32 0, i32 0
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  call void @_ZN9internals21SparseMatrixIterators8AccessorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Accessor.1"* %10, %class.SparseMatrix* %11, i32 %12, i32 %13)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE3endEv(%"class.internals::SparseMatrixIterators::Iterator.0"* noalias sret, %class.SparseMatrix*) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %3, align 8
  %4 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %5 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %4)
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator.0"* %0, %class.SparseMatrix* %4, i32 %5, i32 0)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5beginEj(%"class.internals::SparseMatrixIterators::Iterator"* noalias sret, %class.SparseMatrix*, i32) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i32, align 4
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %7 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 1
  %8 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %7)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern* %8, i32 %9)
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %5, align 4
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator"* %0, %class.SparseMatrix* %6, i32 %13, i32 0)
  br label %16

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %5, align 4
  call void @_ZNK12SparseMatrixIdE3endEj(%"class.internals::SparseMatrixIterators::Iterator"* sret %0, %class.SparseMatrix* %6, i32 %15)
  br label %16

; <label>:16:                                     ; preds = %14, %12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE3endEj(%"class.internals::SparseMatrixIterators::Iterator"* noalias sret, %class.SparseMatrix*, i32) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  store i32 %2, i32* %5, align 4
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %6, align 4
  br label %10

; <label>:10:                                     ; preds = %23, %3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %7)
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %16 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern* %16, i32 %17)
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %6, align 4
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator"* %0, %class.SparseMatrix* %7, i32 %21, i32 0)
  br label %27

; <label>:22:                                     ; preds = %14
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

; <label>:26:                                     ; preds = %10
  call void @_ZNK12SparseMatrixIdE3endEv(%"class.internals::SparseMatrixIterators::Iterator"* sret %0, %class.SparseMatrix* %7)
  br label %27

; <label>:27:                                     ; preds = %26, %20
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE5beginEj(%"class.internals::SparseMatrixIterators::Iterator.0"* noalias sret, %class.SparseMatrix*, i32) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i32, align 4
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %7 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 1
  %8 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %7)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern* %8, i32 %9)
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %5, align 4
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator.0"* %0, %class.SparseMatrix* %6, i32 %13, i32 0)
  br label %16

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %5, align 4
  call void @_ZN12SparseMatrixIdE3endEj(%"class.internals::SparseMatrixIterators::Iterator.0"* sret %0, %class.SparseMatrix* %6, i32 %15)
  br label %16

; <label>:16:                                     ; preds = %14, %12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE3endEj(%"class.internals::SparseMatrixIterators::Iterator.0"* noalias sret, %class.SparseMatrix*, i32) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  store i32 %2, i32* %5, align 4
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %6, align 4
  br label %10

; <label>:10:                                     ; preds = %23, %3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %7)
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %7, i32 0, i32 1
  %16 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @_ZNK15SparsityPattern10row_lengthEj(%class.SparsityPattern* %16, i32 %17)
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %6, align 4
  call void @_ZN9internals21SparseMatrixIterators8IteratorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Iterator.0"* %0, %class.SparseMatrix* %7, i32 %21, i32 0)
  br label %27

; <label>:22:                                     ; preds = %14
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

; <label>:26:                                     ; preds = %10
  call void @_ZN12SparseMatrixIdE3endEv(%"class.internals::SparseMatrixIterators::Iterator.0"* sret %0, %class.SparseMatrix* %7)
  br label %27

; <label>:27:                                     ; preds = %26, %20
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5printERSo(%class.SparseMatrix*, %"class.std::basic_ostream"* dereferenceable(272)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %"class.std::basic_ostream"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.StandardExceptions::ExcIO", align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %4, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %67, %2
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %14 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %13)
  %15 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %70

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %20 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %19)
  %21 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %27

; <label>:27:                                     ; preds = %63, %18
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %30 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %29)
  %31 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %28, %37
  br i1 %38, label %39, label %66

; <label>:39:                                     ; preds = %27
  %40 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %41 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %42 = load i32, i32* %5, align 4
  %43 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %41, i32 %42)
  %44 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %46 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %45)
  %47 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %44, i32 %52)
  %54 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %55 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %56 = load double*, double** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %54, double %60)
  %62 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %61, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %63

; <label>:63:                                     ; preds = %39
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %27

; <label>:66:                                     ; preds = %27
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %11

; <label>:70:                                     ; preds = %11
  %71 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %72 = bitcast %"class.std::basic_ostream"* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr i8, i8* %73, i64 -24
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = bitcast %"class.std::basic_ostream"* %71 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  %79 = bitcast i8* %78 to %"class.std::basic_ios"*
  %80 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"* %79)
  br i1 %80, label %81, label %88

; <label>:81:                                     ; preds = %70
  %82 = bitcast %"class.StandardExceptions::ExcIO"* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %7)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1283, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %7)
          to label %83 unwind label %84

; <label>:83:                                     ; preds = %81
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %7) #2
  br label %88

; <label>:84:                                     ; preds = %81
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  store i8* %86, i8** %8, align 8
  %87 = extractvalue { i8*, i32 } %85, 1
  store i32 %87, i32* %9, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %7) #2
  br label %89

; <label>:88:                                     ; preds = %83, %70
  ret void

; <label>:89:                                     ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = insertvalue { i8*, i32 } undef, i8* %90, 0
  %93 = insertvalue { i8*, i32 } %92, i32 %91, 1
  resume { i8*, i32 } %93
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"*) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8*, i32, i8*, i8*, i8*, %"class.StandardExceptions::ExcIO"*) #0 comdat {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = bitcast %"class.StandardExceptions::ExcIO"* %5 to %class.ExceptionBase*
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** %11, align 8
  call void @_ZN13ExceptionBase9SetFieldsEPKciS1_S1_S1_(%class.ExceptionBase* %12, i8* %13, i32 %14, i8* %15, i8* %16, i8* %17)
  %18 = call i8* @__cxa_allocate_exception(i64 48) #2
  %19 = bitcast i8* %18 to %"class.StandardExceptions::ExcIO"*
  call void @_ZN18StandardExceptions5ExcIOC2ERKS0_(%"class.StandardExceptions::ExcIO"* %19, %"class.StandardExceptions::ExcIO"* dereferenceable(48) %5) #2
  call void @__cxa_throw(i8* %18, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN18StandardExceptions5ExcIOE to i8*), i8* bitcast (void (%"class.StandardExceptions::ExcIO"*)* @_ZN18StandardExceptions5ExcIOD2Ev to i8*)) #14
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.StandardExceptions::ExcIO"*, align 8
  store %"class.StandardExceptions::ExcIO"* %0, %"class.StandardExceptions::ExcIO"** %2, align 8
  %3 = load %"class.StandardExceptions::ExcIO"*, %"class.StandardExceptions::ExcIO"** %2, align 8
  %4 = bitcast %"class.StandardExceptions::ExcIO"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseC2Ev(%class.ExceptionBase* %4)
  %5 = bitcast %"class.StandardExceptions::ExcIO"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN18StandardExceptions5ExcIOE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.StandardExceptions::ExcIO"*, align 8
  store %"class.StandardExceptions::ExcIO"* %0, %"class.StandardExceptions::ExcIO"** %2, align 8
  %3 = load %"class.StandardExceptions::ExcIO"*, %"class.StandardExceptions::ExcIO"** %2, align 8
  %4 = bitcast %"class.StandardExceptions::ExcIO"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE15print_formattedERSojbjPKcd(%class.SparseMatrix*, %"class.std::basic_ostream"* dereferenceable(272), i32, i1 zeroext, i32, i8*, double) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %8 = alloca %class.SparseMatrix*, align 8
  %9 = alloca %"class.std::basic_ostream"*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %"struct.std::_Setw", align 4
  %21 = alloca %"struct.std::_Setw", align 4
  %22 = alloca %"class.StandardExceptions::ExcIO", align 8
  %23 = alloca i8*
  %24 = alloca i32
  store %class.SparseMatrix* %0, %class.SparseMatrix** %8, align 8
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %9, align 8
  store i32 %2, i32* %10, align 4
  %25 = zext i1 %3 to i8
  store i8 %25, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store double %6, double* %14, align 8
  %26 = load %class.SparseMatrix*, %class.SparseMatrix** %8, align 8
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %29 = bitcast %"class.std::basic_ostream"* %28 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr i8, i8* %30, i64 -24
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = bitcast %"class.std::basic_ostream"* %28 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  %36 = bitcast i8* %35 to %"class.std::ios_base"*
  %37 = call i32 @_ZNKSt8ios_base5flagsEv(%"class.std::ios_base"* %36)
  store i32 %37, i32* %16, align 4
  %38 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %39 = bitcast %"class.std::basic_ostream"* %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr i8, i8* %40, i64 -24
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = bitcast %"class.std::basic_ostream"* %38 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  %46 = bitcast i8* %45 to %"class.std::ios_base"*
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = call i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* %46, i64 %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %17, align 4
  %51 = load i8, i8* %11, align 1
  %52 = trunc i8 %51 to i1
  br i1 %52, label %53, label %70

; <label>:53:                                     ; preds = %7
  %54 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %55 = bitcast %"class.std::basic_ostream"* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = bitcast %"class.std::basic_ostream"* %54 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = bitcast i8* %61 to %"class.std::ios_base"*
  %63 = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %62, i32 256, i32 260)
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 7
  store i32 %68, i32* %15, align 4
  br label %69

; <label>:69:                                     ; preds = %66, %53
  br label %87

; <label>:70:                                     ; preds = %7
  %71 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %72 = bitcast %"class.std::basic_ostream"* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr i8, i8* %73, i64 -24
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = bitcast %"class.std::basic_ostream"* %71 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  %79 = bitcast i8* %78 to %"class.std::ios_base"*
  %80 = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %79, i32 4, i32 260)
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %70
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 2
  store i32 %85, i32* %15, align 4
  br label %86

; <label>:86:                                     ; preds = %83, %70
  br label %87

; <label>:87:                                     ; preds = %86, %69
  store i32 0, i32* %18, align 4
  br label %88

; <label>:88:                                     ; preds = %144, %87
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %26)
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %147

; <label>:92:                                     ; preds = %88
  store i32 0, i32* %19, align 4
  br label %93

; <label>:93:                                     ; preds = %138, %92
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @_ZNK12SparseMatrixIdE1nEv(%class.SparseMatrix* %26)
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %141

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %26, i32 0, i32 1
  %99 = call dereferenceable(72) %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEdeEv(%class.SmartPointer* %98)
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %99, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %126

; <label>:104:                                    ; preds = %97
  %105 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @_ZSt4setwi(i32 %106)
  %108 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %20, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %20, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %105, i32 %110)
  %112 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %26, i32 0, i32 2
  %113 = load double*, double** %112, align 8
  %114 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %26, i32 0, i32 1
  %115 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %114)
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @_ZNK15SparsityPatternclEjj(%class.SparsityPattern* %115, i32 %116, i32 %117)
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %113, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load double, double* %14, align 8
  %123 = fmul double %121, %122
  %124 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %111, double %123)
  %125 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %124, i8 signext 32)
  br label %137

; <label>:126:                                    ; preds = %97
  %127 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @_ZSt4setwi(i32 %128)
  %130 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %21, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %21, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %127, i32 %132)
  %134 = load i8*, i8** %13, align 8
  %135 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %133, i8* %134)
  %136 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %135, i8 signext 32)
  br label %137

; <label>:137:                                    ; preds = %126, %104
  br label %138

; <label>:138:                                    ; preds = %137
  %139 = load i32, i32* %19, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %93

; <label>:141:                                    ; preds = %93
  %142 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %143 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %142, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %144

; <label>:144:                                    ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %88

; <label>:147:                                    ; preds = %88
  %148 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %149 = bitcast %"class.std::basic_ostream"* %148 to i8**
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr i8, i8* %150, i64 -24
  %152 = bitcast i8* %151 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = bitcast %"class.std::basic_ostream"* %148 to i8*
  %155 = getelementptr inbounds i8, i8* %154, i64 %153
  %156 = bitcast i8* %155 to %"class.std::basic_ios"*
  %157 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"* %156)
  br i1 %157, label %158, label %165

; <label>:158:                                    ; preds = %147
  %159 = bitcast %"class.StandardExceptions::ExcIO"* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* %159, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %22)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %22)
          to label %160 unwind label %161

; <label>:160:                                    ; preds = %158
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %22) #2
  br label %165

; <label>:161:                                    ; preds = %158
  %162 = landingpad { i8*, i32 }
          cleanup
  %163 = extractvalue { i8*, i32 } %162, 0
  store i8* %163, i8** %23, align 8
  %164 = extractvalue { i8*, i32 } %162, 1
  store i32 %164, i32* %24, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %22) #2
  br label %189

; <label>:165:                                    ; preds = %160, %147
  %166 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %167 = bitcast %"class.std::basic_ostream"* %166 to i8**
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr i8, i8* %168, i64 -24
  %170 = bitcast i8* %169 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = bitcast %"class.std::basic_ostream"* %166 to i8*
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  %174 = bitcast i8* %173 to %"class.std::ios_base"*
  %175 = load i32, i32* %17, align 4
  %176 = zext i32 %175 to i64
  %177 = call i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* %174, i64 %176)
  %178 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %9, align 8
  %179 = bitcast %"class.std::basic_ostream"* %178 to i8**
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr i8, i8* %180, i64 -24
  %182 = bitcast i8* %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = bitcast %"class.std::basic_ostream"* %178 to i8*
  %185 = getelementptr inbounds i8, i8* %184, i64 %183
  %186 = bitcast i8* %185 to %"class.std::ios_base"*
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @_ZNSt8ios_base5flagsESt13_Ios_Fmtflags(%"class.std::ios_base"* %186, i32 %187)
  ret void

; <label>:189:                                    ; preds = %161
  %190 = load i8*, i8** %23, align 8
  %191 = load i32, i32* %24, align 4
  %192 = insertvalue { i8*, i32 } undef, i8* %190, 0
  %193 = insertvalue { i8*, i32 } %192, i32 %191, 1
  resume { i8*, i32 } %193
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNKSt8ios_base5flagsEv(%"class.std::ios_base"*) #5 comdat align 2 {
  %2 = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %0, %"class.std::ios_base"** %2, align 8
  %3 = load %"class.std::ios_base"*, %"class.std::ios_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"*, i64) #5 comdat align 2 {
  %3 = alloca %"class.std::ios_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %"class.std::ios_base"* %0, %"class.std::ios_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %"class.std::ios_base"*, %"class.std::ios_base"** %3, align 8
  %7 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %6, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  %11 = load i64, i64* %5, align 8
  ret i64 %11
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"*, i32, i32) #0 comdat align 2 {
  %4 = alloca %"class.std::ios_base"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %"class.std::ios_base"* %0, %"class.std::ios_base"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %"class.std::ios_base"*, %"class.std::ios_base"** %4, align 8
  %9 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %11)
  %13 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %8, i32 0, i32 3
  %14 = call dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %13, i32 %12)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %15, i32 %16)
  %18 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %8, i32 0, i32 3
  %19 = call dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %18, i32 %17)
  %20 = load i32, i32* %7, align 4
  ret i32 %20
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272), i8 signext) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272), i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZSt4setwi(i32) #5 comdat {
  %2 = alloca %"struct.std::_Setw", align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %2, i32 0, i32 0
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %2, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNSt8ios_base5flagsESt13_Ios_Fmtflags(%"class.std::ios_base"*, i32) #5 comdat align 2 {
  %3 = alloca %"class.std::ios_base"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %"class.std::ios_base"* %0, %"class.std::ios_base"** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %"class.std::ios_base"*, %"class.std::ios_base"** %3, align 8
  %7 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %6, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  ret i32 %11
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE11block_writeERSo(%class.SparseMatrix*, %"class.std::basic_ostream"* dereferenceable(272)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %"class.std::basic_ostream"*, align 8
  %5 = alloca %"class.StandardExceptions::ExcIO", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca %"class.StandardExceptions::ExcIO", align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %4, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %10 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %11 = bitcast %"class.std::basic_ostream"* %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr i8, i8* %12, i64 -24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %"class.std::basic_ostream"* %10 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  %18 = bitcast i8* %17 to %"class.std::basic_ios"*
  %19 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"* %18)
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %2
  %21 = bitcast %"class.StandardExceptions::ExcIO"* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %5)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1337, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %5)
          to label %22 unwind label %23

; <label>:22:                                     ; preds = %20
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %5) #2
  br label %27

; <label>:23:                                     ; preds = %20
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %6, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %5) #2
  br label %74

; <label>:27:                                     ; preds = %22, %2
  %28 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %28, i8 signext 91)
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %29, i32 %31)
  %33 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %34 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %35 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %36 = load double*, double** %35, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  %38 = bitcast double* %37 to i8*
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %40 = load double*, double** %39, align 8
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %40, i64 %43
  %45 = bitcast double* %44 to i8*
  %46 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %9, i32 0, i32 2
  %47 = load double*, double** %46, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = bitcast double* %48 to i8*
  %50 = ptrtoint i8* %45 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %34, i8* %38, i64 %52)
  %54 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %55 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %54, i8 signext 93)
  %56 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %57 = bitcast %"class.std::basic_ostream"* %56 to i8**
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr i8, i8* %58, i64 -24
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = bitcast %"class.std::basic_ostream"* %56 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"* %64)
  br i1 %65, label %66, label %73

; <label>:66:                                     ; preds = %27
  %67 = bitcast %"class.StandardExceptions::ExcIO"* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %8)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %8)
          to label %68 unwind label %69

; <label>:68:                                     ; preds = %66
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %8) #2
  br label %73

; <label>:69:                                     ; preds = %66
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %6, align 8
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %8) #2
  br label %74

; <label>:73:                                     ; preds = %68, %27
  ret void

; <label>:74:                                     ; preds = %69, %23
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = insertvalue { i8*, i32 } undef, i8* %75, 0
  %78 = insertvalue { i8*, i32 } %77, i32 %76, 1
  resume { i8*, i32 } %78
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"*, i8*, i64) #1

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE10block_readERSi(%class.SparseMatrix*, %"class.std::basic_istream"* dereferenceable(280)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %"class.std::basic_istream"*, align 8
  %5 = alloca %"class.StandardExceptions::ExcIO", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i8, align 1
  %9 = alloca %"class.StandardExceptions::ExcIO", align 8
  %10 = alloca %"class.StandardExceptions::ExcIO", align 8
  %11 = alloca %"class.StandardExceptions::ExcIO", align 8
  %12 = alloca %"class.StandardExceptions::ExcIO", align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %"class.std::basic_istream"* %1, %"class.std::basic_istream"** %4, align 8
  %13 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %14 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %15 = bitcast %"class.std::basic_istream"* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 -24
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = bitcast %"class.std::basic_istream"* %14 to i8*
  %21 = getelementptr inbounds i8, i8* %20, i64 %19
  %22 = bitcast i8* %21 to %"class.std::basic_ios"*
  %23 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"* %22)
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %2
  %25 = bitcast %"class.StandardExceptions::ExcIO"* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %5)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1357, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %5)
          to label %26 unwind label %27

; <label>:26:                                     ; preds = %24
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %5) #2
  br label %31

; <label>:27:                                     ; preds = %24
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %6, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %5) #2
  br label %123

; <label>:31:                                     ; preds = %26, %2
  %32 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %33 = call dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280) %32, i8* dereferenceable(1) %8)
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 91
  br i1 %36, label %44, label %37

; <label>:37:                                     ; preds = %31
  %38 = bitcast %"class.StandardExceptions::ExcIO"* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %9)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1363, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %9)
          to label %39 unwind label %40

; <label>:39:                                     ; preds = %37
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %9) #2
  br label %44

; <label>:40:                                     ; preds = %37
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %6, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %9) #2
  br label %123

; <label>:44:                                     ; preds = %39, %31
  %45 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %46 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 3
  %47 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERj(%"class.std::basic_istream"* %45, i32* dereferenceable(4) %46)
  %48 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %49 = call dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280) %48, i8* dereferenceable(1) %8)
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 93
  br i1 %52, label %60, label %53

; <label>:53:                                     ; preds = %44
  %54 = bitcast %"class.StandardExceptions::ExcIO"* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %10)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1367, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %10)
          to label %55 unwind label %56

; <label>:55:                                     ; preds = %53
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %10) #2
  br label %60

; <label>:56:                                     ; preds = %53
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %6, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %10) #2
  br label %123

; <label>:60:                                     ; preds = %55, %44
  %61 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %62 = call dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280) %61, i8* dereferenceable(1) %8)
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 91
  br i1 %65, label %73, label %66

; <label>:66:                                     ; preds = %60
  %67 = bitcast %"class.StandardExceptions::ExcIO"* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %11)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1369, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %11)
          to label %68 unwind label %69

; <label>:68:                                     ; preds = %66
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %11) #2
  br label %73

; <label>:69:                                     ; preds = %66
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %6, align 8
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %11) #2
  br label %123

; <label>:73:                                     ; preds = %68, %60
  %74 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 2
  %75 = load double*, double** %74, align 8
  %76 = icmp eq double* %75, null
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %73
  %78 = bitcast double* %75 to i8*
  call void @_ZdaPv(i8* %78) #12
  br label %79

; <label>:79:                                     ; preds = %77, %73
  %80 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %82, i64 8)
  %84 = extractvalue { i64, i1 } %83, 1
  %85 = extractvalue { i64, i1 } %83, 0
  %86 = select i1 %84, i64 -1, i64 %85
  %87 = call i8* @_Znam(i64 %86) #13
  %88 = bitcast i8* %87 to double*
  %89 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 2
  store double* %88, double** %89, align 8
  %90 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %91 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 2
  %92 = load double*, double** %91, align 8
  %93 = getelementptr inbounds double, double* %92, i64 0
  %94 = bitcast double* %93 to i8*
  %95 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 2
  %96 = load double*, double** %95, align 8
  %97 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = bitcast double* %100 to i8*
  %102 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %13, i32 0, i32 2
  %103 = load double*, double** %102, align 8
  %104 = getelementptr inbounds double, double* %103, i64 0
  %105 = bitcast double* %104 to i8*
  %106 = ptrtoint i8* %101 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %90, i8* %94, i64 %108)
  %110 = load %"class.std::basic_istream"*, %"class.std::basic_istream"** %4, align 8
  %111 = call dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280) %110, i8* dereferenceable(1) %8)
  %112 = load i8, i8* %8, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 93
  br i1 %114, label %122, label %115

; <label>:115:                                    ; preds = %79
  %116 = bitcast %"class.StandardExceptions::ExcIO"* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 48, i32 8, i1 false)
  call void @_ZN18StandardExceptions5ExcIOC2Ev(%"class.StandardExceptions::ExcIO"* %12)
  invoke void @_ZN18deal_II_exceptions9internals17issue_error_throwIN18StandardExceptions5ExcIOEEEvPKciS5_S5_S5_T_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %"class.StandardExceptions::ExcIO"* %12)
          to label %117 unwind label %118

; <label>:117:                                    ; preds = %115
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %12) #2
  br label %122

; <label>:118:                                    ; preds = %115
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  store i8* %120, i8** %6, align 8
  %121 = extractvalue { i8*, i32 } %119, 1
  store i32 %121, i32* %7, align 4
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %12) #2
  br label %123

; <label>:122:                                    ; preds = %117, %79
  ret void

; <label>:123:                                    ; preds = %118, %69, %56, %40, %27
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = insertvalue { i8*, i32 } undef, i8* %124, 0
  %127 = insertvalue { i8*, i32 } %126, i32 %125, 1
  resume { i8*, i32 } %127
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280), i8* dereferenceable(1)) #1

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERj(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define weak_odr i32 @_ZNK12SparseMatrixIdE18memory_consumptionEv(%class.SparseMatrix*) #5 comdat align 2 {
  %2 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %2, align 8
  %3 = load %class.SparseMatrix*, %class.SparseMatrix** %2, align 8
  %4 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, 8
  %8 = add i64 56, %7
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE15ExcInvalidIndexC2Eii(%"class.SparseMatrix<double>::ExcInvalidIndex"*, i32, i32) unnamed_addr #0 comdat($_ZN12SparseMatrixIdE15ExcInvalidIndexC5Eii) align 2 {
  %4 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"class.SparseMatrix<double>::ExcInvalidIndex"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %4, align 8
  %8 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %7 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseC2Ev(%class.ExceptionBase* %8)
  %9 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN12SparseMatrixIdE15ExcInvalidIndexE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex", %"class.SparseMatrix<double>::ExcInvalidIndex"* %7, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex", %"class.SparseMatrix<double>::ExcInvalidIndex"* %7, i32 0, i32 2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  ret void
}

declare void @_ZN13ExceptionBaseC2Ev(%class.ExceptionBase*) unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define weak_odr void @_ZN12SparseMatrixIdE15ExcInvalidIndexD2Ev(%"class.SparseMatrix<double>::ExcInvalidIndex"*) unnamed_addr #5 comdat($_ZN12SparseMatrixIdE15ExcInvalidIndexD5Ev) align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase*) unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define weak_odr void @_ZN12SparseMatrixIdE15ExcInvalidIndexD0Ev(%"class.SparseMatrix<double>::ExcInvalidIndex"*) unnamed_addr #5 comdat($_ZN12SparseMatrixIdE15ExcInvalidIndexD5Ev) align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %2, align 8
  call void @_ZN12SparseMatrixIdE15ExcInvalidIndexD1Ev(%"class.SparseMatrix<double>::ExcInvalidIndex"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE15ExcInvalidIndex9PrintInfoERSo(%"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.std::basic_ostream"* dereferenceable(272)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex"*, align 8
  %4 = alloca %"class.std::basic_ostream"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex"** %3, align 8
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %4, align 8
  %5 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %3, align 8
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  %8 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex", %"class.SparseMatrix<double>::ExcInvalidIndex"* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %7, i32 %9)
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %10, i8 signext 44)
  %12 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex", %"class.SparseMatrix<double>::ExcInvalidIndex"* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %11, i32 %13)
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0))
  %16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %15, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE16ExcInvalidIndex1C2Ei(%"class.SparseMatrix<double>::ExcInvalidIndex1"*, i32) unnamed_addr #0 comdat($_ZN12SparseMatrixIdE16ExcInvalidIndex1C5Ei) align 2 {
  %3 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex1"*, align 8
  %4 = alloca i32, align 4
  store %"class.SparseMatrix<double>::ExcInvalidIndex1"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.SparseMatrix<double>::ExcInvalidIndex1"*, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %3, align 8
  %6 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex1"* %5 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseC2Ev(%class.ExceptionBase* %6)
  %7 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex1"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN12SparseMatrixIdE16ExcInvalidIndex1E, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex1", %"class.SparseMatrix<double>::ExcInvalidIndex1"* %5, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak_odr void @_ZN12SparseMatrixIdE16ExcInvalidIndex1D2Ev(%"class.SparseMatrix<double>::ExcInvalidIndex1"*) unnamed_addr #5 comdat($_ZN12SparseMatrixIdE16ExcInvalidIndex1D5Ev) align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex1"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex1"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcInvalidIndex1"*, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex1"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak_odr void @_ZN12SparseMatrixIdE16ExcInvalidIndex1D0Ev(%"class.SparseMatrix<double>::ExcInvalidIndex1"*) unnamed_addr #5 comdat($_ZN12SparseMatrixIdE16ExcInvalidIndex1D5Ev) align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex1"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex1"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcInvalidIndex1"*, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %2, align 8
  call void @_ZN12SparseMatrixIdE16ExcInvalidIndex1D1Ev(%"class.SparseMatrix<double>::ExcInvalidIndex1"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex1"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE16ExcInvalidIndex19PrintInfoERSo(%"class.SparseMatrix<double>::ExcInvalidIndex1"*, %"class.std::basic_ostream"* dereferenceable(272)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex1"*, align 8
  %4 = alloca %"class.std::basic_ostream"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex1"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %3, align 8
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %4, align 8
  %5 = load %"class.SparseMatrix<double>::ExcInvalidIndex1"*, %"class.SparseMatrix<double>::ExcInvalidIndex1"** %3, align 8
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %8 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex1", %"class.SparseMatrix<double>::ExcInvalidIndex1"* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %7, i32 %9)
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  %12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %11, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE16ExcIteratorRangeC2Eii(%"class.SparseMatrix<double>::ExcIteratorRange"*, i32, i32) unnamed_addr #0 comdat($_ZN12SparseMatrixIdE16ExcIteratorRangeC5Eii) align 2 {
  %4 = alloca %"class.SparseMatrix<double>::ExcIteratorRange"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"class.SparseMatrix<double>::ExcIteratorRange"* %0, %"class.SparseMatrix<double>::ExcIteratorRange"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %"class.SparseMatrix<double>::ExcIteratorRange"*, %"class.SparseMatrix<double>::ExcIteratorRange"** %4, align 8
  %8 = bitcast %"class.SparseMatrix<double>::ExcIteratorRange"* %7 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseC2Ev(%class.ExceptionBase* %8)
  %9 = bitcast %"class.SparseMatrix<double>::ExcIteratorRange"* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN12SparseMatrixIdE16ExcIteratorRangeE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = getelementptr inbounds %"class.SparseMatrix<double>::ExcIteratorRange", %"class.SparseMatrix<double>::ExcIteratorRange"* %7, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %"class.SparseMatrix<double>::ExcIteratorRange", %"class.SparseMatrix<double>::ExcIteratorRange"* %7, i32 0, i32 2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak_odr void @_ZN12SparseMatrixIdE16ExcIteratorRangeD2Ev(%"class.SparseMatrix<double>::ExcIteratorRange"*) unnamed_addr #5 comdat($_ZN12SparseMatrixIdE16ExcIteratorRangeD5Ev) align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcIteratorRange"*, align 8
  store %"class.SparseMatrix<double>::ExcIteratorRange"* %0, %"class.SparseMatrix<double>::ExcIteratorRange"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcIteratorRange"*, %"class.SparseMatrix<double>::ExcIteratorRange"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcIteratorRange"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak_odr void @_ZN12SparseMatrixIdE16ExcIteratorRangeD0Ev(%"class.SparseMatrix<double>::ExcIteratorRange"*) unnamed_addr #5 comdat($_ZN12SparseMatrixIdE16ExcIteratorRangeD5Ev) align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcIteratorRange"*, align 8
  store %"class.SparseMatrix<double>::ExcIteratorRange"* %0, %"class.SparseMatrix<double>::ExcIteratorRange"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcIteratorRange"*, %"class.SparseMatrix<double>::ExcIteratorRange"** %2, align 8
  call void @_ZN12SparseMatrixIdE16ExcIteratorRangeD1Ev(%"class.SparseMatrix<double>::ExcIteratorRange"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcIteratorRange"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE16ExcIteratorRange9PrintInfoERSo(%"class.SparseMatrix<double>::ExcIteratorRange"*, %"class.std::basic_ostream"* dereferenceable(272)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.SparseMatrix<double>::ExcIteratorRange"*, align 8
  %4 = alloca %"class.std::basic_ostream"*, align 8
  store %"class.SparseMatrix<double>::ExcIteratorRange"* %0, %"class.SparseMatrix<double>::ExcIteratorRange"** %3, align 8
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %4, align 8
  %5 = load %"class.SparseMatrix<double>::ExcIteratorRange"*, %"class.SparseMatrix<double>::ExcIteratorRange"** %3, align 8
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %4, align 8
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  %8 = getelementptr inbounds %"class.SparseMatrix<double>::ExcIteratorRange", %"class.SparseMatrix<double>::ExcIteratorRange"* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %7, i32 %9)
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0))
  %12 = getelementptr inbounds %"class.SparseMatrix<double>::ExcIteratorRange", %"class.SparseMatrix<double>::ExcIteratorRange"* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %11, i32 %13)
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %14, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdE9copy_fromIfEERS0_RKS_IT_E(%class.SparseMatrix*, %class.SparseMatrix.2* dereferenceable(56)) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.SparseMatrix.2*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.SparseMatrix.2* %1, %class.SparseMatrix.2** %4, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = load %class.SparseMatrix.2*, %class.SparseMatrix.2** %4, align 8
  %7 = getelementptr inbounds %class.SparseMatrix.2, %class.SparseMatrix.2* %6, i32 0, i32 2
  %8 = load float*, float** %7, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load %class.SparseMatrix.2*, %class.SparseMatrix.2** %4, align 8
  %11 = getelementptr inbounds %class.SparseMatrix.2, %class.SparseMatrix.2* %10, i32 0, i32 2
  %12 = load float*, float** %11, align 8
  %13 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  %14 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %13)
  %15 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %14)
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %12, i64 %16
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  %19 = load double*, double** %18, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  %21 = call double* @_ZSt4copyIPfPdET0_T_S3_S2_(float* %9, float* %17, double* %20)
  ret %class.SparseMatrix* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt4copyIPfPdET0_T_S3_S2_(float*, float*, double*) #0 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca double*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load float*, float** %4, align 8
  %8 = call float* @_ZSt12__miter_baseIPfET_S1_(float* %7)
  %9 = load float*, float** %5, align 8
  %10 = call float* @_ZSt12__miter_baseIPfET_S1_(float* %9)
  %11 = load double*, double** %6, align 8
  %12 = call double* @_ZSt14__copy_move_a2ILb0EPfPdET1_T0_S3_S2_(float* %8, float* %10, double* %11)
  ret double* %12
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE9copy_fromIfEEvRK10FullMatrixIT_E(%class.SparseMatrix*, %class.FullMatrix* dereferenceable(48)) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.FullMatrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.FullMatrix* %1, %class.FullMatrix** %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = call dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdEaSEd(%class.SparseMatrix* %7, double 0.000000e+00)
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %43, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %class.FullMatrix*, %class.FullMatrix** %4, align 8
  %12 = call i32 @_ZNK10FullMatrixIfE1mEv(%class.FullMatrix* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %46

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %39, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %class.FullMatrix*, %class.FullMatrix** %4, align 8
  %18 = call i32 @_ZNK10FullMatrixIfE1nEv(%class.FullMatrix* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %42

; <label>:20:                                     ; preds = %15
  %21 = load %class.FullMatrix*, %class.FullMatrix** %4, align 8
  %22 = bitcast %class.FullMatrix* %21 to %class.Table*
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call dereferenceable(4) float* @_ZNK5TableILi2EfEclEjj(%class.Table* %22, i32 %23, i32 %24)
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %38

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %class.FullMatrix*, %class.FullMatrix** %4, align 8
  %32 = bitcast %class.FullMatrix* %31 to %class.Table*
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call dereferenceable(4) float* @_ZNK5TableILi2EfEclEjj(%class.Table* %32, i32 %33, i32 %34)
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  call void @_ZN12SparseMatrixIdE3setEjjd(%class.SparseMatrix* %7, i32 %29, i32 %30, double %37)
  br label %38

; <label>:38:                                     ; preds = %28, %20
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %15

; <label>:42:                                     ; preds = %15
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %9

; <label>:46:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNK10FullMatrixIfE1mEv(%class.FullMatrix*) #0 comdat align 2 {
  %2 = alloca %class.FullMatrix*, align 8
  store %class.FullMatrix* %0, %class.FullMatrix** %2, align 8
  %3 = load %class.FullMatrix*, %class.FullMatrix** %2, align 8
  %4 = bitcast %class.FullMatrix* %3 to %class.Table*
  %5 = call i32 @_ZNK5TableILi2EfE6n_rowsEv(%class.Table* %4)
  ret i32 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNK10FullMatrixIfE1nEv(%class.FullMatrix*) #0 comdat align 2 {
  %2 = alloca %class.FullMatrix*, align 8
  store %class.FullMatrix* %0, %class.FullMatrix** %2, align 8
  %3 = load %class.FullMatrix*, %class.FullMatrix** %2, align 8
  %4 = bitcast %class.FullMatrix* %3 to %class.Table*
  %5 = call i32 @_ZNK5TableILi2EfE6n_colsEv(%class.Table* %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) float* @_ZNK5TableILi2EfEclEjj(%class.Table*, i32, i32) #5 comdat align 2 {
  %4 = alloca %class.Table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.Table* %0, %class.Table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.Table*, %class.Table** %4, align 8
  %8 = bitcast %class.Table* %7 to %class.TableBase*
  %9 = getelementptr inbounds %class.TableBase, %class.TableBase* %8, i32 0, i32 1
  %10 = load float*, float** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = bitcast %class.Table* %7 to %class.TableBase*
  %13 = getelementptr inbounds %class.TableBase, %class.TableBase* %12, i32 0, i32 3
  %14 = bitcast %class.TableIndices* %13 to %class.TableIndicesBase*
  %15 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %14, i32 1)
  %16 = mul i32 %11, %15
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %10, i64 %19
  ret float* %20
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE10add_scaledIfEEvdRKS_IT_E(%class.SparseMatrix*, double, %class.SparseMatrix.2* dereferenceable(56)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca double, align 8
  %6 = alloca %class.SparseMatrix.2*, align 8
  %7 = alloca double*, align 8
  %8 = alloca float*, align 8
  %9 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store double %1, double* %5, align 8
  store %class.SparseMatrix.2* %2, %class.SparseMatrix.2** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %12 = load double*, double** %11, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  store double* %13, double** %7, align 8
  %14 = load %class.SparseMatrix.2*, %class.SparseMatrix.2** %6, align 8
  %15 = getelementptr inbounds %class.SparseMatrix.2, %class.SparseMatrix.2* %14, i32 0, i32 2
  %16 = load float*, float** %15, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float* %17, float** %8, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %19 = load double*, double** %18, align 8
  %20 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %21 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %20)
  %22 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %21)
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %19, i64 %23
  store double* %24, double** %9, align 8
  br label %25

; <label>:25:                                     ; preds = %29, %3
  %26 = load double*, double** %7, align 8
  %27 = load double*, double** %9, align 8
  %28 = icmp ne double* %26, %27
  br i1 %28, label %29, label %40

; <label>:29:                                     ; preds = %25
  %30 = load double, double* %5, align 8
  %31 = load float*, float** %8, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %8, align 8
  %33 = load float, float* %31, align 4
  %34 = fpext float %33 to double
  %35 = fmul double %30, %34
  %36 = load double*, double** %7, align 8
  %37 = getelementptr inbounds double, double* %36, i32 1
  store double* %37, double** %7, align 8
  %38 = load double, double* %36, align 8
  %39 = fadd double %38, %35
  store double %39, double* %36, align 8
  br label %25

; <label>:40:                                     ; preds = %25
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdE9copy_fromIdEERS0_RKS_IT_E(%class.SparseMatrix*, %class.SparseMatrix* dereferenceable(56)) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.SparseMatrix*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %4, align 8
  %5 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %6 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %7 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %6, i32 0, i32 2
  %8 = load double*, double** %7, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %12 = load double*, double** %11, align 8
  %13 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 1
  %14 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %13)
  %15 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %14)
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %12, i64 %16
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %5, i32 0, i32 2
  %19 = load double*, double** %18, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  %21 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %9, double* %17, double* %20)
  ret %class.SparseMatrix* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double*, double*, double*) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %7)
  %9 = load double*, double** %5, align 8
  %10 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %9)
  %11 = load double*, double** %6, align 8
  %12 = call double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %8, double* %10, double* %11)
  ret double* %12
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE9copy_fromIdEEvRK10FullMatrixIT_E(%class.SparseMatrix*, %class.FullMatrix.4* dereferenceable(48)) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.FullMatrix.4*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.FullMatrix.4* %1, %class.FullMatrix.4** %4, align 8
  %7 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %8 = call dereferenceable(56) %class.SparseMatrix* @_ZN12SparseMatrixIdEaSEd(%class.SparseMatrix* %7, double 0.000000e+00)
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %42, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %class.FullMatrix.4*, %class.FullMatrix.4** %4, align 8
  %12 = call i32 @_ZNK10FullMatrixIdE1mEv(%class.FullMatrix.4* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %45

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %38, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %class.FullMatrix.4*, %class.FullMatrix.4** %4, align 8
  %18 = call i32 @_ZNK10FullMatrixIdE1nEv(%class.FullMatrix.4* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %41

; <label>:20:                                     ; preds = %15
  %21 = load %class.FullMatrix.4*, %class.FullMatrix.4** %4, align 8
  %22 = bitcast %class.FullMatrix.4* %21 to %class.Table.5*
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call dereferenceable(8) double* @_ZNK5TableILi2EdEclEjj(%class.Table.5* %22, i32 %23, i32 %24)
  %26 = load double, double* %25, align 8
  %27 = fcmp une double %26, 0.000000e+00
  br i1 %27, label %28, label %37

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %class.FullMatrix.4*, %class.FullMatrix.4** %4, align 8
  %32 = bitcast %class.FullMatrix.4* %31 to %class.Table.5*
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call dereferenceable(8) double* @_ZNK5TableILi2EdEclEjj(%class.Table.5* %32, i32 %33, i32 %34)
  %36 = load double, double* %35, align 8
  call void @_ZN12SparseMatrixIdE3setEjjd(%class.SparseMatrix* %7, i32 %29, i32 %30, double %36)
  br label %37

; <label>:37:                                     ; preds = %28, %20
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %15

; <label>:41:                                     ; preds = %15
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

; <label>:45:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNK10FullMatrixIdE1mEv(%class.FullMatrix.4*) #0 comdat align 2 {
  %2 = alloca %class.FullMatrix.4*, align 8
  store %class.FullMatrix.4* %0, %class.FullMatrix.4** %2, align 8
  %3 = load %class.FullMatrix.4*, %class.FullMatrix.4** %2, align 8
  %4 = bitcast %class.FullMatrix.4* %3 to %class.Table.5*
  %5 = call i32 @_ZNK5TableILi2EdE6n_rowsEv(%class.Table.5* %4)
  ret i32 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNK10FullMatrixIdE1nEv(%class.FullMatrix.4*) #0 comdat align 2 {
  %2 = alloca %class.FullMatrix.4*, align 8
  store %class.FullMatrix.4* %0, %class.FullMatrix.4** %2, align 8
  %3 = load %class.FullMatrix.4*, %class.FullMatrix.4** %2, align 8
  %4 = bitcast %class.FullMatrix.4* %3 to %class.Table.5*
  %5 = call i32 @_ZNK5TableILi2EdE6n_colsEv(%class.Table.5* %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK5TableILi2EdEclEjj(%class.Table.5*, i32, i32) #5 comdat align 2 {
  %4 = alloca %class.Table.5*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.Table.5* %0, %class.Table.5** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.Table.5*, %class.Table.5** %4, align 8
  %8 = bitcast %class.Table.5* %7 to %class.TableBase.6*
  %9 = getelementptr inbounds %class.TableBase.6, %class.TableBase.6* %8, i32 0, i32 1
  %10 = load double*, double** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = bitcast %class.Table.5* %7 to %class.TableBase.6*
  %13 = getelementptr inbounds %class.TableBase.6, %class.TableBase.6* %12, i32 0, i32 3
  %14 = bitcast %class.TableIndices* %13 to %class.TableIndicesBase*
  %15 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %14, i32 1)
  %16 = mul i32 %11, %15
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %10, i64 %19
  ret double* %20
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN12SparseMatrixIdE10add_scaledIdEEvdRKS_IT_E(%class.SparseMatrix*, double, %class.SparseMatrix* dereferenceable(56)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca double, align 8
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store double %1, double* %5, align 8
  store %class.SparseMatrix* %2, %class.SparseMatrix** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %12 = load double*, double** %11, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  store double* %13, double** %7, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %15 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %16 = load double*, double** %15, align 8
  %17 = getelementptr inbounds double, double* %16, i64 0
  store double* %17, double** %8, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %19 = load double*, double** %18, align 8
  %20 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %21 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %20)
  %22 = call i32 @_ZNK15SparsityPattern18n_nonzero_elementsEv(%class.SparsityPattern* %21)
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %19, i64 %23
  store double* %24, double** %9, align 8
  br label %25

; <label>:25:                                     ; preds = %29, %3
  %26 = load double*, double** %7, align 8
  %27 = load double*, double** %9, align 8
  %28 = icmp ne double* %26, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %25
  %30 = load double, double* %5, align 8
  %31 = load double*, double** %8, align 8
  %32 = getelementptr inbounds double, double* %31, i32 1
  store double* %32, double** %8, align 8
  %33 = load double, double* %31, align 8
  %34 = fmul double %30, %33
  %35 = load double*, double** %7, align 8
  %36 = getelementptr inbounds double, double* %35, i32 1
  store double* %36, double** %7, align 8
  %37 = load double, double* %35, align 8
  %38 = fadd double %37, %34
  store double %38, double* %35, align 8
  br label %25

; <label>:39:                                     ; preds = %25
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5vmultI6VectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store %class.Vector.10* %2, %class.Vector.10** %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %14)
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double* %25, double** %8, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %31 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %30)
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %39 = call float* @_ZN6VectorIfE5beginEv(%class.Vector.10* %38)
  store float* %39, float** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %81, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %84

; <label>:44:                                     ; preds = %40
  store float 0.000000e+00, float* %12, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %66, i32 %69)
  %71 = fpext float %70 to double
  %72 = fmul double %65, %71
  %73 = load float, float* %12, align 4
  %74 = fpext float %73 to double
  %75 = fadd double %74, %72
  %76 = fptrunc double %75 to float
  store float %76, float* %12, align 4
  br label %58

; <label>:77:                                     ; preds = %58
  %78 = load float, float* %12, align 4
  %79 = load float*, float** %10, align 8
  %80 = getelementptr inbounds float, float* %79, i32 1
  store float* %80, float** %10, align 8
  store float %78, float* %79, align 4
  br label %81

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %40

; <label>:84:                                     ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float* @_ZN6VectorIfE5beginEv(%class.Vector.10*) #5 comdat align 2 {
  %2 = alloca %class.Vector.10*, align 8
  store %class.Vector.10* %0, %class.Vector.10** %2, align 8
  %3 = load %class.Vector.10*, %class.Vector.10** %2, align 8
  %4 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %3, i32 0, i32 3
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  ret float* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZNK6VectorIfEclEj(%class.Vector.10*, i32) #5 comdat align 2 {
  %3 = alloca %class.Vector.10*, align 8
  %4 = alloca i32, align 4
  store %class.Vector.10* %0, %class.Vector.10** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Vector.10*, %class.Vector.10** %3, align 8
  %6 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %5, i32 0, i32 3
  %7 = load float*, float** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds float, float* %7, i64 %9
  %11 = load float, float* %10, align 4
  ret float %11
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE6TvmultI6VectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store %class.Vector.10* %2, %class.Vector.10** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %12 = call dereferenceable(24) %class.Vector.10* @_ZN6VectorIfEaSEf(%class.Vector.10* %11, float 0.000000e+00)
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %69, %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %72

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

; <label>:26:                                     ; preds = %65, %17
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %27, %36
  br i1 %37, label %38, label %68

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %53, i32 %54)
  %56 = fpext float %55 to double
  %57 = fmul double %52, %56
  %58 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %58, i32 %59)
  %61 = load float, float* %60, align 4
  %62 = fpext float %61 to double
  %63 = fadd double %62, %57
  %64 = fptrunc double %63 to float
  store float %64, float* %60, align 4
  br label %65

; <label>:65:                                     ; preds = %38
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %26

; <label>:68:                                     ; preds = %26
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %13

; <label>:72:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.Vector.10* @_ZN6VectorIfEaSEf(%class.Vector.10*, float) #0 comdat align 2 {
  %3 = alloca %class.Vector.10*, align 8
  %4 = alloca float, align 4
  store %class.Vector.10* %0, %class.Vector.10** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %class.Vector.10*, %class.Vector.10** %3, align 8
  %6 = call float* @_ZN6VectorIfE5beginEv(%class.Vector.10* %5)
  %7 = call float* @_ZN6VectorIfE3endEv(%class.Vector.10* %5)
  call void @_ZSt4fillIPffEvT_S1_RKT0_(float* %6, float* %7, float* dereferenceable(4) %4)
  ret %class.Vector.10* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10*, i32) #5 comdat align 2 {
  %3 = alloca %class.Vector.10*, align 8
  %4 = alloca i32, align 4
  store %class.Vector.10* %0, %class.Vector.10** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Vector.10*, %class.Vector.10** %3, align 8
  %6 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %5, i32 0, i32 3
  %7 = load float*, float** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds float, float* %7, i64 %9
  ret float* %10
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9vmult_addI6VectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store %class.Vector.10* %2, %class.Vector.10** %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %14)
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double* %25, double** %8, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %31 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %30)
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %39 = call float* @_ZN6VectorIfE5beginEv(%class.Vector.10* %38)
  store float* %39, float** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %83, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %86

; <label>:44:                                     ; preds = %40
  store float 0.000000e+00, float* %12, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %66, i32 %69)
  %71 = fpext float %70 to double
  %72 = fmul double %65, %71
  %73 = load float, float* %12, align 4
  %74 = fpext float %73 to double
  %75 = fadd double %74, %72
  %76 = fptrunc double %75 to float
  store float %76, float* %12, align 4
  br label %58

; <label>:77:                                     ; preds = %58
  %78 = load float, float* %12, align 4
  %79 = load float*, float** %10, align 8
  %80 = getelementptr inbounds float, float* %79, i32 1
  store float* %80, float** %10, align 8
  %81 = load float, float* %79, align 4
  %82 = fadd float %81, %78
  store float %82, float* %79, align 4
  br label %83

; <label>:83:                                     ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %40

; <label>:86:                                     ; preds = %40
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE10Tvmult_addI6VectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store %class.Vector.10* %2, %class.Vector.10** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %67, %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %70

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %63, %15
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %25, %34
  br i1 %35, label %36, label %66

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %38 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %37)
  %39 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %51, i32 %52)
  %54 = fpext float %53 to double
  %55 = fmul double %50, %54
  %56 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %56, i32 %57)
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = fadd double %60, %55
  %62 = fptrunc double %61 to float
  store float %62, float* %58, align 4
  br label %63

; <label>:63:                                     ; preds = %36
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %24

; <label>:66:                                     ; preds = %24
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %11

; <label>:70:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5vmultI11BlockVectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector* dereferenceable(64), %class.BlockVector* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector*, align 8
  %6 = alloca %class.BlockVector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %"class.internal::BlockVectorIterators::Iterator", align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double*, align 8
  %14 = alloca %"class.internal::BlockVectorIterators::Iterator", align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector* %1, %class.BlockVector** %5, align 8
  store %class.BlockVector* %2, %class.BlockVector** %6, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %16 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %20 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %19)
  %21 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %18, i64 %25
  store double* %26, double** %8, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %28 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %27)
  %29 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = load %class.BlockVector*, %class.BlockVector** %5, align 8
  call void @_ZN11BlockVectorIfE5beginEv(%"class.internal::BlockVectorIterators::Iterator"* sret %10, %class.BlockVector* %39)
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %80, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %83

; <label>:44:                                     ; preds = %40
  store float 0.000000e+00, float* %12, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.BlockVector*, %class.BlockVector** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call float @_ZNK11BlockVectorIfEclEj(%class.BlockVector* %66, i32 %69)
  %71 = fpext float %70 to double
  %72 = fmul double %65, %71
  %73 = load float, float* %12, align 4
  %74 = fpext float %73 to double
  %75 = fadd double %74, %72
  %76 = fptrunc double %75 to float
  store float %76, float* %12, align 4
  br label %58

; <label>:77:                                     ; preds = %58
  %78 = load float, float* %12, align 4
  call void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EEppEi(%"class.internal::BlockVectorIterators::Iterator"* sret %14, %"class.internal::BlockVectorIterators::Iterator"* %10, i32 0)
  %79 = call dereferenceable(4) float* @_ZNK8internal20BlockVectorIterators8IteratorIfLb0EEdeEv(%"class.internal::BlockVectorIterators::Iterator"* %14)
  store float %78, float* %79, align 4
  br label %80

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %40

; <label>:83:                                     ; preds = %40
  ret void
}

declare void @_ZN11BlockVectorIfE5beginEv(%"class.internal::BlockVectorIterators::Iterator"* sret, %class.BlockVector*) #1

; Function Attrs: noinline uwtable
define linkonce_odr float @_ZNK11BlockVectorIfEclEj(%class.BlockVector*, i32) #0 comdat align 2 {
  %3 = alloca %class.BlockVector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::pair", align 4
  store %class.BlockVector* %0, %class.BlockVector** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.BlockVector*, %class.BlockVector** %3, align 8
  %7 = getelementptr inbounds %class.BlockVector, %class.BlockVector* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @_ZNK12BlockIndices15global_to_localEj(%class.BlockIndices* %7, i32 %8)
  %10 = bitcast %"struct.std::pair"* %5 to i64*
  store i64 %9, i64* %10, align 4
  %11 = getelementptr inbounds %class.BlockVector, %class.BlockVector* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = call dereferenceable(24) %class.Vector.10* @_ZNKSt6vectorI6VectorIfESaIS1_EEixEm(%"class.std::vector"* %11, i64 %14)
  %16 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %15, i32 %17)
  ret float %18
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EEppEi(%"class.internal::BlockVectorIterators::Iterator"* noalias sret, %"class.internal::BlockVectorIterators::Iterator"*, i32) #0 comdat align 2 {
  %4 = alloca %"class.internal::BlockVectorIterators::Iterator"*, align 8
  %5 = alloca i32, align 4
  store %"class.internal::BlockVectorIterators::Iterator"* %1, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  call void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EEC2ERKS2_(%"class.internal::BlockVectorIterators::Iterator"* %0, %"class.internal::BlockVectorIterators::Iterator"* dereferenceable(32) %6)
  call void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EE12move_forwardEv(%"class.internal::BlockVectorIterators::Iterator"* %6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) float* @_ZNK8internal20BlockVectorIterators8IteratorIfLb0EEdeEv(%"class.internal::BlockVectorIterators::Iterator"*) #0 comdat align 2 {
  %2 = alloca %"class.internal::BlockVectorIterators::Iterator"*, align 8
  %3 = alloca float*, align 8
  store %"class.internal::BlockVectorIterators::Iterator"* %0, %"class.internal::BlockVectorIterators::Iterator"** %2, align 8
  %4 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %2, align 8
  %5 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %4, i32 0, i32 0
  %6 = load %class.BlockVector*, %class.BlockVector** %5, align 8
  %7 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %4, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call dereferenceable(24) %class.Vector.10* @_ZN11BlockVectorIfE5blockEj(%class.BlockVector* %6, i32 %8)
  %10 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %4, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %9, i32 %11)
  store float* %12, float** %3, align 8
  %13 = load float*, float** %3, align 8
  ret float* %13
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE6TvmultI11BlockVectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector* dereferenceable(64), %class.BlockVector* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector*, align 8
  %6 = alloca %class.BlockVector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector* %1, %class.BlockVector** %5, align 8
  store %class.BlockVector* %2, %class.BlockVector** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = load %class.BlockVector*, %class.BlockVector** %5, align 8
  %12 = call dereferenceable(64) %class.BlockVector* @_ZN11BlockVectorIfEaSEf(%class.BlockVector* %11, float 0.000000e+00)
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %69, %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %72

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

; <label>:26:                                     ; preds = %65, %17
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %27, %36
  br i1 %37, label %38, label %68

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load %class.BlockVector*, %class.BlockVector** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call float @_ZNK11BlockVectorIfEclEj(%class.BlockVector* %53, i32 %54)
  %56 = fpext float %55 to double
  %57 = fmul double %52, %56
  %58 = load %class.BlockVector*, %class.BlockVector** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call dereferenceable(4) float* @_ZN11BlockVectorIfEclEj(%class.BlockVector* %58, i32 %59)
  %61 = load float, float* %60, align 4
  %62 = fpext float %61 to double
  %63 = fadd double %62, %57
  %64 = fptrunc double %63 to float
  store float %64, float* %60, align 4
  br label %65

; <label>:65:                                     ; preds = %38
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %26

; <label>:68:                                     ; preds = %26
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %13

; <label>:72:                                     ; preds = %13
  ret void
}

declare dereferenceable(64) %class.BlockVector* @_ZN11BlockVectorIfEaSEf(%class.BlockVector*, float) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) float* @_ZN11BlockVectorIfEclEj(%class.BlockVector*, i32) #0 comdat align 2 {
  %3 = alloca %class.BlockVector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::pair", align 4
  store %class.BlockVector* %0, %class.BlockVector** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.BlockVector*, %class.BlockVector** %3, align 8
  %7 = getelementptr inbounds %class.BlockVector, %class.BlockVector* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @_ZNK12BlockIndices15global_to_localEj(%class.BlockIndices* %7, i32 %8)
  %10 = bitcast %"struct.std::pair"* %5 to i64*
  store i64 %9, i64* %10, align 4
  %11 = getelementptr inbounds %class.BlockVector, %class.BlockVector* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = call dereferenceable(24) %class.Vector.10* @_ZNSt6vectorI6VectorIfESaIS1_EEixEm(%"class.std::vector"* %11, i64 %14)
  %16 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %15, i32 %17)
  ret float* %18
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9vmult_addI11BlockVectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector* dereferenceable(64), %class.BlockVector* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector*, align 8
  %6 = alloca %class.BlockVector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %"class.internal::BlockVectorIterators::Iterator", align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double*, align 8
  %14 = alloca %"class.internal::BlockVectorIterators::Iterator", align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector* %1, %class.BlockVector** %5, align 8
  store %class.BlockVector* %2, %class.BlockVector** %6, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %16 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %20 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %19)
  %21 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %18, i64 %25
  store double* %26, double** %8, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %28 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %27)
  %29 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = load %class.BlockVector*, %class.BlockVector** %5, align 8
  call void @_ZN11BlockVectorIfE5beginEv(%"class.internal::BlockVectorIterators::Iterator"* sret %10, %class.BlockVector* %39)
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %82, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %85

; <label>:44:                                     ; preds = %40
  store float 0.000000e+00, float* %12, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.BlockVector*, %class.BlockVector** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call float @_ZNK11BlockVectorIfEclEj(%class.BlockVector* %66, i32 %69)
  %71 = fpext float %70 to double
  %72 = fmul double %65, %71
  %73 = load float, float* %12, align 4
  %74 = fpext float %73 to double
  %75 = fadd double %74, %72
  %76 = fptrunc double %75 to float
  store float %76, float* %12, align 4
  br label %58

; <label>:77:                                     ; preds = %58
  %78 = load float, float* %12, align 4
  call void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EEppEi(%"class.internal::BlockVectorIterators::Iterator"* sret %14, %"class.internal::BlockVectorIterators::Iterator"* %10, i32 0)
  %79 = call dereferenceable(4) float* @_ZNK8internal20BlockVectorIterators8IteratorIfLb0EEdeEv(%"class.internal::BlockVectorIterators::Iterator"* %14)
  %80 = load float, float* %79, align 4
  %81 = fadd float %80, %78
  store float %81, float* %79, align 4
  br label %82

; <label>:82:                                     ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %40

; <label>:85:                                     ; preds = %40
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE10Tvmult_addI11BlockVectorIfES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector* dereferenceable(64), %class.BlockVector* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector*, align 8
  %6 = alloca %class.BlockVector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector* %1, %class.BlockVector** %5, align 8
  store %class.BlockVector* %2, %class.BlockVector** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %67, %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %70

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %63, %15
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %25, %34
  br i1 %35, label %36, label %66

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %38 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %37)
  %39 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load %class.BlockVector*, %class.BlockVector** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call float @_ZNK11BlockVectorIfEclEj(%class.BlockVector* %51, i32 %52)
  %54 = fpext float %53 to double
  %55 = fmul double %50, %54
  %56 = load %class.BlockVector*, %class.BlockVector** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call dereferenceable(4) float* @_ZN11BlockVectorIfEclEj(%class.BlockVector* %56, i32 %57)
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = fadd double %60, %55
  %62 = fptrunc double %61 to float
  store float %62, float* %58, align 4
  br label %63

; <label>:63:                                     ; preds = %36
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %24

; <label>:66:                                     ; preds = %24
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %11

; <label>:70:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr float @_ZNK12SparseMatrixIdE18matrix_norm_squareIfEET_RK6VectorIS2_E(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.Vector.10*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.Vector.10* %1, %class.Vector.10** %4, align 8
  %12 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %12)
  store i32 %13, i32* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  %14 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %15 = load double*, double** %14, align 8
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %15, i64 %22
  store double* %23, double** %7, align 8
  %24 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %25 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %24)
  %26 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %27, i64 %34
  store i32* %35, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %36

; <label>:36:                                     ; preds = %81, %2
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %84

; <label>:40:                                     ; preds = %36
  store float 0.000000e+00, float* %10, align 4
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %42, i64 %52
  store double* %53, double** %11, align 8
  br label %54

; <label>:54:                                     ; preds = %58, %40
  %55 = load double*, double** %7, align 8
  %56 = load double*, double** %11, align 8
  %57 = icmp ne double* %55, %56
  br i1 %57, label %58, label %73

; <label>:58:                                     ; preds = %54
  %59 = load double*, double** %7, align 8
  %60 = getelementptr inbounds double, double* %59, i32 1
  store double* %60, double** %7, align 8
  %61 = load double, double* %59, align 8
  %62 = load %class.Vector.10*, %class.Vector.10** %4, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %63, align 4
  %66 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %62, i32 %65)
  %67 = fpext float %66 to double
  %68 = fmul double %61, %67
  %69 = load float, float* %10, align 4
  %70 = fpext float %69 to double
  %71 = fadd double %70, %68
  %72 = fptrunc double %71 to float
  store float %72, float* %10, align 4
  br label %54

; <label>:73:                                     ; preds = %54
  %74 = load float, float* %10, align 4
  %75 = load %class.Vector.10*, %class.Vector.10** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %75, i32 %76)
  %78 = fmul float %74, %77
  %79 = load float, float* %6, align 4
  %80 = fadd float %79, %78
  store float %80, float* %6, align 4
  br label %81

; <label>:81:                                     ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %36

; <label>:84:                                     ; preds = %36
  %85 = load float, float* %6, align 4
  ret float %85
}

; Function Attrs: noinline uwtable
define weak_odr float @_ZNK12SparseMatrixIdE21matrix_scalar_productIfEET_RK6VectorIS2_ES6_(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store %class.Vector.10* %2, %class.Vector.10** %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %14)
  store i32 %15, i32* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double* %25, double** %9, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %31 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %30)
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %38

; <label>:38:                                     ; preds = %83, %3
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %86

; <label>:42:                                     ; preds = %38
  store float 0.000000e+00, float* %12, align 4
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %44 = load double*, double** %43, align 8
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %46 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %45)
  %47 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %44, i64 %54
  store double* %55, double** %13, align 8
  br label %56

; <label>:56:                                     ; preds = %60, %42
  %57 = load double*, double** %9, align 8
  %58 = load double*, double** %13, align 8
  %59 = icmp ne double* %57, %58
  br i1 %59, label %60, label %75

; <label>:60:                                     ; preds = %56
  %61 = load double*, double** %9, align 8
  %62 = getelementptr inbounds double, double* %61, i32 1
  store double* %62, double** %9, align 8
  %63 = load double, double* %61, align 8
  %64 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* %65, align 4
  %68 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %64, i32 %67)
  %69 = fpext float %68 to double
  %70 = fmul double %63, %69
  %71 = load float, float* %12, align 4
  %72 = fpext float %71 to double
  %73 = fadd double %72, %70
  %74 = fptrunc double %73 to float
  store float %74, float* %12, align 4
  br label %56

; <label>:75:                                     ; preds = %56
  %76 = load float, float* %12, align 4
  %77 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %77, i32 %78)
  %80 = fmul float %76, %79
  %81 = load float, float* %8, align 4
  %82 = fadd float %81, %80
  store float %82, float* %8, align 4
  br label %83

; <label>:83:                                     ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %38

; <label>:86:                                     ; preds = %38
  %87 = load float, float* %8, align 4
  ret float %87
}

; Function Attrs: noinline uwtable
define weak_odr float @_ZNK12SparseMatrixIdE8residualIfEET_R6VectorIS2_ERKS4_S7_(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24)) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca %class.Vector.10*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store %class.Vector.10* %3, %class.Vector.10** %8, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %16 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %15)
  store i32 %16, i32* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

; <label>:17:                                     ; preds = %88, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %91

; <label>:21:                                     ; preds = %17
  %22 = load %class.Vector.10*, %class.Vector.10** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %22, i32 %23)
  store float %24, float* %12, align 4
  %25 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %26 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %25)
  %27 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  br label %33

; <label>:33:                                     ; preds = %69, %21
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %36 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %35)
  %37 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %34, %43
  br i1 %44, label %45, label %72

; <label>:45:                                     ; preds = %33
  %46 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %47 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %46)
  %48 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %47, i32 0, i32 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %60, i32 %61)
  %63 = fpext float %62 to double
  %64 = fmul double %59, %63
  %65 = load float, float* %12, align 4
  %66 = fpext float %65 to double
  %67 = fsub double %66, %64
  %68 = fptrunc double %67 to float
  store float %68, float* %12, align 4
  br label %69

; <label>:69:                                     ; preds = %45
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %33

; <label>:72:                                     ; preds = %33
  %73 = load float, float* %12, align 4
  %74 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %74, i32 %75)
  store float %73, float* %76, align 4
  %77 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %77, i32 %78)
  %80 = load float, float* %79, align 4
  %81 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %81, i32 %82)
  %84 = load float, float* %83, align 4
  %85 = fmul float %80, %84
  %86 = load float, float* %10, align 4
  %87 = fadd float %86, %85
  store float %87, float* %10, align 4
  br label %88

; <label>:88:                                     ; preds = %72
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %17

; <label>:91:                                     ; preds = %17
  %92 = load float, float* %10, align 4
  %93 = call float @_ZSt4sqrtf(float %92)
  ret float %93
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZSt4sqrtf(float) #5 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call float @sqrtf(float %3) #6
  ret float %4
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE17precondition_SSORIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %20 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %21 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %22 = call i32 @_ZNK6VectorIfE4sizeEv(%class.Vector.10* %21)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %24 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %23)
  %25 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %10, align 8
  %28 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %29 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %28, i32 0)
  store float* %29, float** %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

; <label>:30:                                     ; preds = %118, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %125

; <label>:34:                                     ; preds = %30
  %35 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %35, i32 %36)
  %38 = load float*, float** %11, align 8
  store float %37, float* %38, align 4
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %49 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %48)
  %50 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = call i32* @_ZN15SparsityPattern21optimized_lower_boundEPKjS1_RS0_(i32* %47, i32* %56, i32* dereferenceable(4) %12)
  %58 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %59 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %58)
  %60 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = ptrtoint i32* %57 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %71

; <label>:71:                                     ; preds = %102, %34
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %105

; <label>:75:                                     ; preds = %71
  %76 = load double, double* %8, align 8
  %77 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %78 = load double*, double** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fmul double %76, %82
  %84 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %85 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %86 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %85)
  %87 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %84, i32 %92)
  %94 = load float, float* %93, align 4
  %95 = fpext float %94 to double
  %96 = fmul double %83, %95
  %97 = load float*, float** %11, align 8
  %98 = load float, float* %97, align 4
  %99 = fpext float %98 to double
  %100 = fsub double %99, %96
  %101 = fptrunc double %100 to float
  store float %101, float* %97, align 4
  br label %102

; <label>:102:                                    ; preds = %75
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %71

; <label>:105:                                    ; preds = %71
  %106 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %107 = load double*, double** %106, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  %112 = load double, double* %111, align 8
  %113 = load float*, float** %11, align 8
  %114 = load float, float* %113, align 4
  %115 = fpext float %114 to double
  %116 = fdiv double %115, %112
  %117 = fptrunc double %116 to float
  store float %117, float* %113, align 4
  br label %118

; <label>:118:                                    ; preds = %105
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  %121 = load float*, float** %11, align 8
  %122 = getelementptr inbounds float, float* %121, i32 1
  store float* %122, float** %11, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %10, align 8
  br label %30

; <label>:125:                                    ; preds = %30
  %126 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %127 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %126)
  %128 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32* %130, i32** %10, align 8
  %131 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %132 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %131, i32 0)
  store float* %132, float** %11, align 8
  store i32 0, i32* %15, align 4
  br label %133

; <label>:133:                                    ; preds = %153, %125
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %160

; <label>:137:                                    ; preds = %133
  %138 = load double, double* %8, align 8
  %139 = fsub double 2.000000e+00, %138
  %140 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %141 = load double*, double** %140, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %141, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fmul double %139, %146
  %148 = load float*, float** %11, align 8
  %149 = load float, float* %148, align 4
  %150 = fpext float %149 to double
  %151 = fmul double %150, %147
  %152 = fptrunc double %151 to float
  store float %152, float* %148, align 4
  br label %153

; <label>:153:                                    ; preds = %137
  %154 = load i32, i32* %15, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %10, align 8
  %158 = load float*, float** %11, align 8
  %159 = getelementptr inbounds float, float* %158, i32 1
  store float* %159, float** %11, align 8
  br label %133

; <label>:160:                                    ; preds = %133
  %161 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %162 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %161)
  %163 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sub i32 %165, 1
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32* %168, i32** %10, align 8
  %169 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sub i32 %170, 1
  %172 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %169, i32 %171)
  store float* %172, float** %11, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sub i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %175

; <label>:175:                                    ; preds = %271, %160
  %176 = load i32, i32* %16, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %278

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %180 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %179)
  %181 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %180, i32 0, i32 8
  %182 = load i32*, i32** %181, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, 1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %189 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %188)
  %190 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %189, i32 0, i32 8
  %191 = load i32*, i32** %190, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %16, align 4
  store i32 %197, i32* %18, align 4
  %198 = call i32* @_ZN15SparsityPattern21optimized_lower_boundEPKjS1_RS0_(i32* %187, i32* %196, i32* dereferenceable(4) %18)
  %199 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %200 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %199)
  %201 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %200, i32 0, i32 8
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = ptrtoint i32* %198 to i64
  %205 = ptrtoint i32* %203 to i64
  %206 = sub i64 %204, %205
  %207 = sdiv exact i64 %206, 4
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %19, align 4
  br label %210

; <label>:210:                                    ; preds = %255, %178
  %211 = load i32, i32* %19, align 4
  %212 = load i32*, i32** %10, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ult i32 %211, %214
  br i1 %215, label %216, label %258

; <label>:216:                                    ; preds = %210
  %217 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %218 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %217)
  %219 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %218, i32 0, i32 8
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %19, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp ugt i32 %224, %225
  br i1 %226, label %227, label %254

; <label>:227:                                    ; preds = %216
  %228 = load double, double* %8, align 8
  %229 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %230 = load double*, double** %229, align 8
  %231 = load i32, i32* %19, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %230, i64 %232
  %234 = load double, double* %233, align 8
  %235 = fmul double %228, %234
  %236 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %237 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %238 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %237)
  %239 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %238, i32 0, i32 8
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %19, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %236, i32 %244)
  %246 = load float, float* %245, align 4
  %247 = fpext float %246 to double
  %248 = fmul double %235, %247
  %249 = load float*, float** %11, align 8
  %250 = load float, float* %249, align 4
  %251 = fpext float %250 to double
  %252 = fsub double %251, %248
  %253 = fptrunc double %252 to float
  store float %253, float* %249, align 4
  br label %254

; <label>:254:                                    ; preds = %227, %216
  br label %255

; <label>:255:                                    ; preds = %254
  %256 = load i32, i32* %19, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %19, align 4
  br label %210

; <label>:258:                                    ; preds = %210
  %259 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %260 = load double*, double** %259, align 8
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds double, double* %260, i64 %263
  %265 = load double, double* %264, align 8
  %266 = load float*, float** %11, align 8
  %267 = load float, float* %266, align 4
  %268 = fpext float %267 to double
  %269 = fdiv double %268, %265
  %270 = fptrunc double %269 to float
  store float %270, float* %266, align 4
  br label %271

; <label>:271:                                    ; preds = %258
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %16, align 4
  %274 = load i32*, i32** %10, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 -1
  store i32* %275, i32** %10, align 8
  %276 = load float*, float** %11, align 8
  %277 = getelementptr inbounds float, float* %276, i32 -1
  store float* %277, float** %11, align 8
  br label %175

; <label>:278:                                    ; preds = %175
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK6VectorIfE4sizeEv(%class.Vector.10*) #5 comdat align 2 {
  %2 = alloca %class.Vector.10*, align 8
  store %class.Vector.10* %0, %class.Vector.10** %2, align 8
  %3 = load %class.Vector.10*, %class.Vector.10** %2, align 8
  %4 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32* @_ZN15SparsityPattern21optimized_lower_boundEPKjS1_RS0_(i32*, i32*, i32* dereferenceable(4)) #5 comdat align 2 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = ptrtoint i32* %11 to i64
  %14 = ptrtoint i32* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %3
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %4, align 8
  br label %129

; <label>:22:                                     ; preds = %3
  br label %23

; <label>:23:                                     ; preds = %128, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 8
  br i1 %25, label %26, label %107

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %105 [
    i32 7, label %28
    i32 6, label %39
    i32 5, label %50
    i32 4, label %61
    i32 3, label %72
    i32 2, label %83
    i32 1, label %94
  ]

; <label>:28:                                     ; preds = %26
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %30, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %28
  %35 = load i32*, i32** %5, align 8
  store i32* %35, i32** %4, align 8
  br label %129

; <label>:36:                                     ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  br label %39

; <label>:39:                                     ; preds = %36, %26
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %41, %43
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %39
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %4, align 8
  br label %129

; <label>:47:                                     ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  br label %50

; <label>:50:                                     ; preds = %47, %26
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %52, %54
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %50
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %4, align 8
  br label %129

; <label>:58:                                     ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  br label %61

; <label>:61:                                     ; preds = %58, %26
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp uge i32 %63, %65
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %61
  %68 = load i32*, i32** %5, align 8
  store i32* %68, i32** %4, align 8
  br label %129

; <label>:69:                                     ; preds = %61
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %26
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp uge i32 %74, %76
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %72
  %79 = load i32*, i32** %5, align 8
  store i32* %79, i32** %4, align 8
  br label %129

; <label>:80:                                     ; preds = %72
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %5, align 8
  br label %83

; <label>:83:                                     ; preds = %80, %26
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp uge i32 %85, %87
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %83
  %90 = load i32*, i32** %5, align 8
  store i32* %90, i32** %4, align 8
  br label %129

; <label>:91:                                     ; preds = %83
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %5, align 8
  br label %94

; <label>:94:                                     ; preds = %91, %26
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp uge i32 %96, %98
  br i1 %99, label %100, label %102

; <label>:100:                                    ; preds = %94
  %101 = load i32*, i32** %5, align 8
  store i32* %101, i32** %4, align 8
  br label %129

; <label>:102:                                    ; preds = %94
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32* %104, i32** %4, align 8
  br label %129

; <label>:105:                                    ; preds = %26
  br label %106

; <label>:106:                                    ; preds = %105
  br label %107

; <label>:107:                                    ; preds = %106, %23
  %108 = load i32, i32* %8, align 4
  %109 = lshr i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32* %113, i32** %10, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %119, label %126

; <label>:119:                                    ; preds = %107
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32* %121, i32** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  %124 = load i32, i32* %8, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %128

; <label>:126:                                    ; preds = %107
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %8, align 4
  br label %128

; <label>:128:                                    ; preds = %126, %119
  br label %23

; <label>:129:                                    ; preds = %102, %100, %89, %78, %67, %56, %45, %34, %20
  %130 = load i32*, i32** %4, align 8
  ret i32* %130
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE16precondition_SORIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %11 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %12 = call dereferenceable(24) %class.Vector.10* @_ZN6VectorIfEaSERKS0_(%class.Vector.10* %11, %class.Vector.10* dereferenceable(24) %10)
  %13 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %14 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE3SORIfEEvR6VectorIT_Ed(%class.SparseMatrix* %9, %class.Vector.10* dereferenceable(24) %13, double %14)
  ret void
}

declare dereferenceable(24) %class.Vector.10* @_ZN6VectorIfEaSERKS0_(%class.Vector.10*, %class.Vector.10* dereferenceable(24)) #1

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE3SORIfEEvR6VectorIT_Ed(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store double %2, double* %6, align 8
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %97, %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %11)
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %100

; <label>:16:                                     ; preds = %12
  %17 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %17, i32 %18)
  %20 = load float, float* %19, align 4
  store float %20, float* %8, align 4
  %21 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %22 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %21)
  %23 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %71, %16
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %30, %39
  br i1 %40, label %41, label %74

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %43 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %42)
  %44 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %70

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %60, i32 %61)
  %63 = load float, float* %62, align 4
  %64 = fpext float %63 to double
  %65 = fmul double %59, %64
  %66 = load float, float* %8, align 4
  %67 = fpext float %66 to double
  %68 = fsub double %67, %65
  %69 = fptrunc double %68 to float
  store float %69, float* %8, align 4
  br label %70

; <label>:70:                                     ; preds = %53, %41
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %29

; <label>:74:                                     ; preds = %29
  %75 = load float, float* %8, align 4
  %76 = fpext float %75 to double
  %77 = load double, double* %6, align 8
  %78 = fmul double %76, %77
  %79 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 2
  %80 = load double*, double** %79, align 8
  %81 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %82 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %81)
  %83 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %82, i32 0, i32 7
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %80, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fdiv double %78, %91
  %93 = fptrunc double %92 to float
  %94 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %94, i32 %95)
  store float %93, float* %96, align 4
  br label %97

; <label>:97:                                     ; preds = %74
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %12

; <label>:100:                                    ; preds = %12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE17precondition_TSORIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %11 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %12 = call dereferenceable(24) %class.Vector.10* @_ZN6VectorIfEaSERKS0_(%class.Vector.10* %11, %class.Vector.10* dereferenceable(24) %10)
  %13 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %14 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE4TSORIfEEvR6VectorIT_Ed(%class.SparseMatrix* %9, %class.Vector.10* dereferenceable(24) %13, double %14)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE4TSORIfEEvR6VectorIT_Ed(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store double %2, double* %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  store i32 %11, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %81, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %104

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %18, i32 %19)
  %21 = load float, float* %20, align 4
  store float %21, float* %8, align 4
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %78, %15
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %33 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %32)
  %34 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %81

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %77

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %61 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %62 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %61)
  %63 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %60, i32 %68)
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = fmul double %59, %71
  %73 = load float, float* %8, align 4
  %74 = fpext float %73 to double
  %75 = fsub double %74, %72
  %76 = fptrunc double %75 to float
  store float %76, float* %8, align 4
  br label %77

; <label>:77:                                     ; preds = %53, %42
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %30

; <label>:81:                                     ; preds = %30
  %82 = load float, float* %8, align 4
  %83 = fpext float %82 to double
  %84 = load double, double* %6, align 8
  %85 = fmul double %83, %84
  %86 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %87 = load double*, double** %86, align 8
  %88 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %89 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %88)
  %90 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %87, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fdiv double %85, %98
  %100 = fptrunc double %99 to float
  %101 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %101, i32 %102)
  store float %100, float* %103, align 4
  br label %12

; <label>:104:                                    ; preds = %12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE19precondition_JacobiIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %16 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %17 = call i32 @_ZNK6VectorIfE4sizeEv(%class.Vector.10* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %19 = call float* @_ZN6VectorIfE5beginEv(%class.Vector.10* %18)
  store float* %19, float** %10, align 8
  %20 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %21 = call float* @_ZNK6VectorIfE5beginEv(%class.Vector.10* %20)
  store float* %21, float** %11, align 8
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32* %26, i32** %12, align 8
  %27 = load double, double* %8, align 8
  %28 = fcmp une double %27, 1.000000e+00
  br i1 %28, label %29, label %60

; <label>:29:                                     ; preds = %4
  store i32 0, i32* %13, align 4
  br label %30

; <label>:30:                                     ; preds = %50, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %59

; <label>:34:                                     ; preds = %30
  %35 = load double, double* %8, align 8
  %36 = load float*, float** %11, align 8
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fmul double %35, %38
  %40 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %41 = load double*, double** %40, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %41, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fdiv double %39, %46
  %48 = fptrunc double %47 to float
  %49 = load float*, float** %10, align 8
  store float %48, float* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %34
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load float*, float** %10, align 8
  %54 = getelementptr inbounds float, float* %53, i32 1
  store float* %54, float** %10, align 8
  %55 = load float*, float** %11, align 8
  %56 = getelementptr inbounds float, float* %55, i32 1
  store float* %56, float** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %12, align 8
  br label %30

; <label>:59:                                     ; preds = %30
  br label %89

; <label>:60:                                     ; preds = %4
  store i32 0, i32* %14, align 4
  br label %61

; <label>:61:                                     ; preds = %79, %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %88

; <label>:65:                                     ; preds = %61
  %66 = load float*, float** %11, align 8
  %67 = load float, float* %66, align 4
  %68 = fpext float %67 to double
  %69 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %70 = load double*, double** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fdiv double %68, %75
  %77 = fptrunc double %76 to float
  %78 = load float*, float** %10, align 8
  store float %77, float* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %65
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load float*, float** %10, align 8
  %83 = getelementptr inbounds float, float* %82, i32 1
  store float* %83, float** %10, align 8
  %84 = load float*, float** %11, align 8
  %85 = getelementptr inbounds float, float* %84, i32 1
  store float* %85, float** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %12, align 8
  br label %61

; <label>:88:                                     ; preds = %61
  br label %89

; <label>:89:                                     ; preds = %88, %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float* @_ZNK6VectorIfE5beginEv(%class.Vector.10*) #5 comdat align 2 {
  %2 = alloca %class.Vector.10*, align 8
  store %class.Vector.10* %0, %class.Vector.10** %2, align 8
  %3 = load %class.Vector.10*, %class.Vector.10** %2, align 8
  %4 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %3, i32 0, i32 3
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  ret float* %6
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE4SSORIfEEvR6VectorIT_Ed(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector.10*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector.10* %1, %class.Vector.10** %5, align 8
  store double %2, double* %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %16 = call i32 @_ZNK6VectorIfE4sizeEv(%class.Vector.10* %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %111, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %114

; <label>:21:                                     ; preds = %17
  store float 0.000000e+00, float* %9, align 4
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %30

; <label>:30:                                     ; preds = %76, %21
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %33 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %32)
  %34 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %79

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %75

; <label>:53:                                     ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %74

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %59 = load double*, double** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %64, i32 %65)
  %67 = load float, float* %66, align 4
  %68 = fpext float %67 to double
  %69 = fmul double %63, %68
  %70 = load float, float* %9, align 4
  %71 = fpext float %70 to double
  %72 = fadd double %71, %69
  %73 = fptrunc double %72 to float
  store float %73, float* %9, align 4
  br label %74

; <label>:74:                                     ; preds = %57, %53
  br label %75

; <label>:75:                                     ; preds = %74, %42
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %30

; <label>:79:                                     ; preds = %30
  %80 = load float, float* %9, align 4
  %81 = fpext float %80 to double
  %82 = load double, double* %6, align 8
  %83 = fmul double %81, %82
  %84 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %84, i32 %85)
  %87 = load float, float* %86, align 4
  %88 = fpext float %87 to double
  %89 = fsub double %88, %83
  %90 = fptrunc double %89 to float
  store float %90, float* %86, align 4
  %91 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %92 = load double*, double** %91, align 8
  %93 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %94 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %93)
  %95 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %92, i64 %101
  %103 = load double, double* %102, align 8
  %104 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %104, i32 %105)
  %107 = load float, float* %106, align 4
  %108 = fpext float %107 to double
  %109 = fdiv double %108, %103
  %110 = fptrunc double %109 to float
  store float %110, float* %106, align 4
  br label %111

; <label>:111:                                    ; preds = %79
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %17

; <label>:114:                                    ; preds = %17
  %115 = load i32, i32* %7, align 4
  %116 = sub i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %117

; <label>:117:                                    ; preds = %204, %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %207

; <label>:120:                                    ; preds = %117
  store float 0.000000e+00, float* %9, align 4
  %121 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %122 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %121)
  %123 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %8, align 4
  br label %129

; <label>:129:                                    ; preds = %175, %120
  %130 = load i32, i32* %8, align 4
  %131 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %132 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %131)
  %133 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ult i32 %130, %139
  br i1 %140, label %141, label %178

; <label>:141:                                    ; preds = %129
  %142 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %143 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %142)
  %144 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %143, i32 0, i32 8
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, -1
  br i1 %151, label %152, label %174

; <label>:152:                                    ; preds = %141
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %173

; <label>:156:                                    ; preds = %152
  %157 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %158 = load double*, double** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %158, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %163, i32 %164)
  %166 = load float, float* %165, align 4
  %167 = fpext float %166 to double
  %168 = fmul double %162, %167
  %169 = load float, float* %9, align 4
  %170 = fpext float %169 to double
  %171 = fadd double %170, %168
  %172 = fptrunc double %171 to float
  store float %172, float* %9, align 4
  br label %173

; <label>:173:                                    ; preds = %156, %152
  br label %174

; <label>:174:                                    ; preds = %173, %141
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %129

; <label>:178:                                    ; preds = %129
  %179 = load float, float* %9, align 4
  %180 = fpext float %179 to double
  %181 = load double, double* %6, align 8
  %182 = fmul double %180, %181
  %183 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %184 = load double*, double** %183, align 8
  %185 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %186 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %185)
  %187 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %184, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fdiv double %182, %195
  %197 = load %class.Vector.10*, %class.Vector.10** %5, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %197, i32 %198)
  %200 = load float, float* %199, align 4
  %201 = fpext float %200 to double
  %202 = fsub double %201, %196
  %203 = fptrunc double %202 to float
  store float %203, float* %199, align 4
  br label %204

; <label>:204:                                    ; preds = %178
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %12, align 4
  br label %117

; <label>:207:                                    ; preds = %117
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE4PSORIfEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), double) #0 comdat align 2 {
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca %"class.std::vector.11"*, align 8
  %9 = alloca %"class.std::vector.11"*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %6, align 8
  store %class.Vector.10* %1, %class.Vector.10** %7, align 8
  store %"class.std::vector.11"* %2, %"class.std::vector.11"** %8, align 8
  store %"class.std::vector.11"* %3, %"class.std::vector.11"** %9, align 8
  store double %4, double* %10, align 8
  %16 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  store i32 0, i32* %11, align 4
  br label %17

; <label>:17:                                     ; preds = %111, %5
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %16)
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %114

; <label>:21:                                     ; preds = %17
  %22 = load %"class.std::vector.11"*, %"class.std::vector.11"** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %22, i64 %24)
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %27, i32 %28)
  %30 = load float, float* %29, align 4
  store float %30, float* %13, align 4
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  br label %39

; <label>:39:                                     ; preds = %85, %21
  %40 = load i32, i32* %14, align 4
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %42 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %41)
  %43 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %40, %49
  br i1 %50, label %51, label %88

; <label>:51:                                     ; preds = %39
  %52 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %53 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %52)
  %54 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %"class.std::vector.11"*, %"class.std::vector.11"** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = zext i32 %61 to i64
  %63 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %60, i64 %62)
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %84

; <label>:67:                                     ; preds = %51
  %68 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %69 = load double*, double** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %74, i32 %75)
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = fmul double %73, %78
  %80 = load float, float* %13, align 4
  %81 = fpext float %80 to double
  %82 = fsub double %81, %79
  %83 = fptrunc double %82 to float
  store float %83, float* %13, align 4
  br label %84

; <label>:84:                                     ; preds = %67, %51
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %39

; <label>:88:                                     ; preds = %39
  %89 = load float, float* %13, align 4
  %90 = fpext float %89 to double
  %91 = load double, double* %10, align 8
  %92 = fmul double %90, %91
  %93 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %94 = load double*, double** %93, align 8
  %95 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %96 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %95)
  %97 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %94, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fdiv double %92, %105
  %107 = fptrunc double %106 to float
  %108 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %108, i32 %109)
  store float %107, float* %110, align 4
  br label %111

; <label>:111:                                    ; preds = %88
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %17

; <label>:114:                                    ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"*, i64) #5 comdat align 2 {
  %3 = alloca %"class.std::vector.11"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.11"*, %"class.std::vector.11"** %3, align 8
  %6 = bitcast %"class.std::vector.11"* %5 to %"struct.std::_Vector_base.12"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %7 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  ret i32* %12
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5TPSORIfEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), double) #0 comdat align 2 {
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca %"class.std::vector.11"*, align 8
  %9 = alloca %"class.std::vector.11"*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %6, align 8
  store %class.Vector.10* %1, %class.Vector.10** %7, align 8
  store %"class.std::vector.11"* %2, %"class.std::vector.11"** %8, align 8
  store %"class.std::vector.11"* %3, %"class.std::vector.11"** %9, align 8
  store double %4, double* %10, align 8
  %16 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %17 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %16)
  store i32 %17, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %90, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %113

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %11, align 4
  %24 = load %"class.std::vector.11"*, %"class.std::vector.11"** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %24, i64 %26)
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %29, i32 %30)
  %32 = load float, float* %31, align 4
  store float %32, float* %13, align 4
  %33 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %34 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %33)
  %35 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %41

; <label>:41:                                     ; preds = %87, %21
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %42, %51
  br i1 %52, label %53, label %90

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %55 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %54)
  %56 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %"class.std::vector.11"*, %"class.std::vector.11"** %9, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %62, i64 %64)
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %86

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %76, i32 %77)
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = fmul double %75, %80
  %82 = load float, float* %13, align 4
  %83 = fpext float %82 to double
  %84 = fsub double %83, %81
  %85 = fptrunc double %84 to float
  store float %85, float* %13, align 4
  br label %86

; <label>:86:                                     ; preds = %69, %53
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %41

; <label>:90:                                     ; preds = %41
  %91 = load float, float* %13, align 4
  %92 = fpext float %91 to double
  %93 = load double, double* %10, align 8
  %94 = fmul double %92, %93
  %95 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %96 = load double*, double** %95, align 8
  %97 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %98 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %97)
  %99 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %96, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fdiv double %94, %107
  %109 = fptrunc double %108 to float
  %110 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %110, i32 %111)
  store float %109, float* %112, align 4
  br label %18

; <label>:113:                                    ; preds = %18
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE8SOR_stepIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %12 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %94, %4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %12)
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %97

; <label>:17:                                     ; preds = %13
  %18 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %18, i32 %19)
  store float %20, float* %10, align 4
  %21 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %22 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %21)
  %23 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %65, %17
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %30, %39
  br i1 %40, label %41, label %68

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %49 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %50 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %49)
  %51 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %48, i32 %56)
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fmul double %47, %59
  %61 = load float, float* %10, align 4
  %62 = fpext float %61 to double
  %63 = fsub double %62, %60
  %64 = fptrunc double %63 to float
  store float %64, float* %10, align 4
  br label %65

; <label>:65:                                     ; preds = %41
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %29

; <label>:68:                                     ; preds = %29
  %69 = load float, float* %10, align 4
  %70 = fpext float %69 to double
  %71 = load double, double* %8, align 8
  %72 = fmul double %70, %71
  %73 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %74 = load double*, double** %73, align 8
  %75 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %76 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %75)
  %77 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %74, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fdiv double %72, %85
  %87 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %87, i32 %88)
  %90 = load float, float* %89, align 4
  %91 = fpext float %90 to double
  %92 = fadd double %91, %86
  %93 = fptrunc double %92 to float
  store float %93, float* %89, align 4
  br label %94

; <label>:94:                                     ; preds = %68
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %13

; <label>:97:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9TSOR_stepIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %12 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %12)
  %14 = sub i32 %13, 1
  store i32 %14, i32* %9, align 4
  br label %15

; <label>:15:                                     ; preds = %95, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %98

; <label>:18:                                     ; preds = %15
  %19 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call float @_ZNK6VectorIfEclEj(%class.Vector.10* %19, i32 %20)
  store float %21, float* %10, align 4
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

; <label>:30:                                     ; preds = %66, %18
  %31 = load i32, i32* %11, align 4
  %32 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %33 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %32)
  %34 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %69

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %44 = load double*, double** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %50 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %51 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %50)
  %52 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %49, i32 %57)
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = fmul double %48, %60
  %62 = load float, float* %10, align 4
  %63 = fpext float %62 to double
  %64 = fsub double %63, %61
  %65 = fptrunc double %64 to float
  store float %65, float* %10, align 4
  br label %66

; <label>:66:                                     ; preds = %42
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %30

; <label>:69:                                     ; preds = %30
  %70 = load float, float* %10, align 4
  %71 = fpext float %70 to double
  %72 = load double, double* %8, align 8
  %73 = fmul double %71, %72
  %74 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %75 = load double*, double** %74, align 8
  %76 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %77 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %76)
  %78 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %75, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fdiv double %73, %86
  %88 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call dereferenceable(4) float* @_ZN6VectorIfEclEj(%class.Vector.10* %88, i32 %89)
  %91 = load float, float* %90, align 4
  %92 = fpext float %91 to double
  %93 = fadd double %92, %87
  %94 = fptrunc double %93 to float
  store float %94, float* %90, align 4
  br label %95

; <label>:95:                                     ; preds = %69
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  br label %15

; <label>:98:                                     ; preds = %15
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9SSOR_stepIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector.10* dereferenceable(24), %class.Vector.10* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector.10*, align 8
  %7 = alloca %class.Vector.10*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector.10* %1, %class.Vector.10** %6, align 8
  store %class.Vector.10* %2, %class.Vector.10** %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %11 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %12 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE8SOR_stepIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix* %9, %class.Vector.10* dereferenceable(24) %10, %class.Vector.10* dereferenceable(24) %11, double %12)
  %13 = load %class.Vector.10*, %class.Vector.10** %6, align 8
  %14 = load %class.Vector.10*, %class.Vector.10** %7, align 8
  %15 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE9TSOR_stepIfEEvR6VectorIT_ERKS4_d(%class.SparseMatrix* %9, %class.Vector.10* dereferenceable(24) %13, %class.Vector.10* dereferenceable(24) %14, double %15)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5vmultI6VectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store %class.Vector* %2, %class.Vector** %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %14)
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double* %25, double** %8, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %31 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %30)
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %class.Vector*, %class.Vector** %5, align 8
  %39 = call double* @_ZN6VectorIdE5beginEv(%class.Vector* %38)
  store double* %39, double** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %78, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %81

; <label>:44:                                     ; preds = %40
  store double 0.000000e+00, double* %12, align 8
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %74

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.Vector*, %class.Vector** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call double @_ZNK6VectorIdEclEj(%class.Vector* %66, i32 %69)
  %71 = fmul double %65, %70
  %72 = load double, double* %12, align 8
  %73 = fadd double %72, %71
  store double %73, double* %12, align 8
  br label %58

; <label>:74:                                     ; preds = %58
  %75 = load double, double* %12, align 8
  %76 = load double*, double** %10, align 8
  %77 = getelementptr inbounds double, double* %76, i32 1
  store double* %77, double** %10, align 8
  store double %75, double* %76, align 8
  br label %78

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %40

; <label>:81:                                     ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZN6VectorIdE5beginEv(%class.Vector*) #5 comdat align 2 {
  %2 = alloca %class.Vector*, align 8
  store %class.Vector* %0, %class.Vector** %2, align 8
  %3 = load %class.Vector*, %class.Vector** %2, align 8
  %4 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 3
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  ret double* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK6VectorIdEclEj(%class.Vector*, i32) #5 comdat align 2 {
  %3 = alloca %class.Vector*, align 8
  %4 = alloca i32, align 4
  store %class.Vector* %0, %class.Vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Vector*, %class.Vector** %3, align 8
  %6 = getelementptr inbounds %class.Vector, %class.Vector* %5, i32 0, i32 3
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  %11 = load double, double* %10, align 8
  ret double %11
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE6TvmultI6VectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store %class.Vector* %2, %class.Vector** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = load %class.Vector*, %class.Vector** %5, align 8
  %12 = call dereferenceable(24) %class.Vector* @_ZN6VectorIdEaSEd(%class.Vector* %11, double 0.000000e+00)
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %66, %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %69

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

; <label>:26:                                     ; preds = %62, %17
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %27, %36
  br i1 %37, label %38, label %65

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load %class.Vector*, %class.Vector** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call double @_ZNK6VectorIdEclEj(%class.Vector* %53, i32 %54)
  %56 = fmul double %52, %55
  %57 = load %class.Vector*, %class.Vector** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %57, i32 %58)
  %60 = load double, double* %59, align 8
  %61 = fadd double %60, %56
  store double %61, double* %59, align 8
  br label %62

; <label>:62:                                     ; preds = %38
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %26

; <label>:65:                                     ; preds = %26
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %13

; <label>:69:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.Vector* @_ZN6VectorIdEaSEd(%class.Vector*, double) #0 comdat align 2 {
  %3 = alloca %class.Vector*, align 8
  %4 = alloca double, align 8
  store %class.Vector* %0, %class.Vector** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %class.Vector*, %class.Vector** %3, align 8
  %6 = call double* @_ZN6VectorIdE5beginEv(%class.Vector* %5)
  %7 = call double* @_ZN6VectorIdE3endEv(%class.Vector* %5)
  call void @_ZSt4fillIPddEvT_S1_RKT0_(double* %6, double* %7, double* dereferenceable(8) %4)
  ret %class.Vector* %5
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9vmult_addI6VectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store %class.Vector* %2, %class.Vector** %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %14)
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double* %25, double** %8, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %31 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %30)
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %class.Vector*, %class.Vector** %5, align 8
  %39 = call double* @_ZN6VectorIdE5beginEv(%class.Vector* %38)
  store double* %39, double** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %80, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %83

; <label>:44:                                     ; preds = %40
  store double 0.000000e+00, double* %12, align 8
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %74

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.Vector*, %class.Vector** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call double @_ZNK6VectorIdEclEj(%class.Vector* %66, i32 %69)
  %71 = fmul double %65, %70
  %72 = load double, double* %12, align 8
  %73 = fadd double %72, %71
  store double %73, double* %12, align 8
  br label %58

; <label>:74:                                     ; preds = %58
  %75 = load double, double* %12, align 8
  %76 = load double*, double** %10, align 8
  %77 = getelementptr inbounds double, double* %76, i32 1
  store double* %77, double** %10, align 8
  %78 = load double, double* %76, align 8
  %79 = fadd double %78, %75
  store double %79, double* %76, align 8
  br label %80

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %40

; <label>:83:                                     ; preds = %40
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE10Tvmult_addI6VectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store %class.Vector* %2, %class.Vector** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %64, %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %67

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %60, %15
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %25, %34
  br i1 %35, label %36, label %63

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %38 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %37)
  %39 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load %class.Vector*, %class.Vector** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call double @_ZNK6VectorIdEclEj(%class.Vector* %51, i32 %52)
  %54 = fmul double %50, %53
  %55 = load %class.Vector*, %class.Vector** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %55, i32 %56)
  %58 = load double, double* %57, align 8
  %59 = fadd double %58, %54
  store double %59, double* %57, align 8
  br label %60

; <label>:60:                                     ; preds = %36
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %24

; <label>:63:                                     ; preds = %24
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %11

; <label>:67:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5vmultI11BlockVectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector.16* dereferenceable(64), %class.BlockVector.16* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector.16*, align 8
  %6 = alloca %class.BlockVector.16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %"class.internal::BlockVectorIterators::Iterator.23", align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca %"class.internal::BlockVectorIterators::Iterator.23", align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector.16* %1, %class.BlockVector.16** %5, align 8
  store %class.BlockVector.16* %2, %class.BlockVector.16** %6, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %16 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %20 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %19)
  %21 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %18, i64 %25
  store double* %26, double** %8, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %28 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %27)
  %29 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = load %class.BlockVector.16*, %class.BlockVector.16** %5, align 8
  call void @_ZN11BlockVectorIdE5beginEv(%"class.internal::BlockVectorIterators::Iterator.23"* sret %10, %class.BlockVector.16* %39)
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %77, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %80

; <label>:44:                                     ; preds = %40
  store double 0.000000e+00, double* %12, align 8
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %74

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.BlockVector.16*, %class.BlockVector.16** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call double @_ZNK11BlockVectorIdEclEj(%class.BlockVector.16* %66, i32 %69)
  %71 = fmul double %65, %70
  %72 = load double, double* %12, align 8
  %73 = fadd double %72, %71
  store double %73, double* %12, align 8
  br label %58

; <label>:74:                                     ; preds = %58
  %75 = load double, double* %12, align 8
  call void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EEppEi(%"class.internal::BlockVectorIterators::Iterator.23"* sret %14, %"class.internal::BlockVectorIterators::Iterator.23"* %10, i32 0)
  %76 = call dereferenceable(8) double* @_ZNK8internal20BlockVectorIterators8IteratorIdLb0EEdeEv(%"class.internal::BlockVectorIterators::Iterator.23"* %14)
  store double %75, double* %76, align 8
  br label %77

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %40

; <label>:80:                                     ; preds = %40
  ret void
}

declare void @_ZN11BlockVectorIdE5beginEv(%"class.internal::BlockVectorIterators::Iterator.23"* sret, %class.BlockVector.16*) #1

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK11BlockVectorIdEclEj(%class.BlockVector.16*, i32) #0 comdat align 2 {
  %3 = alloca %class.BlockVector.16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::pair", align 4
  store %class.BlockVector.16* %0, %class.BlockVector.16** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.BlockVector.16*, %class.BlockVector.16** %3, align 8
  %7 = getelementptr inbounds %class.BlockVector.16, %class.BlockVector.16* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @_ZNK12BlockIndices15global_to_localEj(%class.BlockIndices* %7, i32 %8)
  %10 = bitcast %"struct.std::pair"* %5 to i64*
  store i64 %9, i64* %10, align 4
  %11 = getelementptr inbounds %class.BlockVector.16, %class.BlockVector.16* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = call dereferenceable(24) %class.Vector* @_ZNKSt6vectorI6VectorIdESaIS1_EEixEm(%"class.std::vector.17"* %11, i64 %14)
  %16 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call double @_ZNK6VectorIdEclEj(%class.Vector* %15, i32 %17)
  ret double %18
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EEppEi(%"class.internal::BlockVectorIterators::Iterator.23"* noalias sret, %"class.internal::BlockVectorIterators::Iterator.23"*, i32) #0 comdat align 2 {
  %4 = alloca %"class.internal::BlockVectorIterators::Iterator.23"*, align 8
  %5 = alloca i32, align 4
  store %"class.internal::BlockVectorIterators::Iterator.23"* %1, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  call void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EEC2ERKS2_(%"class.internal::BlockVectorIterators::Iterator.23"* %0, %"class.internal::BlockVectorIterators::Iterator.23"* dereferenceable(32) %6)
  call void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EE12move_forwardEv(%"class.internal::BlockVectorIterators::Iterator.23"* %6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK8internal20BlockVectorIterators8IteratorIdLb0EEdeEv(%"class.internal::BlockVectorIterators::Iterator.23"*) #0 comdat align 2 {
  %2 = alloca %"class.internal::BlockVectorIterators::Iterator.23"*, align 8
  %3 = alloca double*, align 8
  store %"class.internal::BlockVectorIterators::Iterator.23"* %0, %"class.internal::BlockVectorIterators::Iterator.23"** %2, align 8
  %4 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %2, align 8
  %5 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %4, i32 0, i32 0
  %6 = load %class.BlockVector.16*, %class.BlockVector.16** %5, align 8
  %7 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %4, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call dereferenceable(24) %class.Vector* @_ZN11BlockVectorIdE5blockEj(%class.BlockVector.16* %6, i32 %8)
  %10 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %4, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %9, i32 %11)
  store double* %12, double** %3, align 8
  %13 = load double*, double** %3, align 8
  ret double* %13
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE6TvmultI11BlockVectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector.16* dereferenceable(64), %class.BlockVector.16* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector.16*, align 8
  %6 = alloca %class.BlockVector.16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector.16* %1, %class.BlockVector.16** %5, align 8
  store %class.BlockVector.16* %2, %class.BlockVector.16** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = load %class.BlockVector.16*, %class.BlockVector.16** %5, align 8
  %12 = call dereferenceable(64) %class.BlockVector.16* @_ZN11BlockVectorIdEaSEd(%class.BlockVector.16* %11, double 0.000000e+00)
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %66, %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %69

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

; <label>:26:                                     ; preds = %62, %17
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %27, %36
  br i1 %37, label %38, label %65

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load %class.BlockVector.16*, %class.BlockVector.16** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call double @_ZNK11BlockVectorIdEclEj(%class.BlockVector.16* %53, i32 %54)
  %56 = fmul double %52, %55
  %57 = load %class.BlockVector.16*, %class.BlockVector.16** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call dereferenceable(8) double* @_ZN11BlockVectorIdEclEj(%class.BlockVector.16* %57, i32 %58)
  %60 = load double, double* %59, align 8
  %61 = fadd double %60, %56
  store double %61, double* %59, align 8
  br label %62

; <label>:62:                                     ; preds = %38
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %26

; <label>:65:                                     ; preds = %26
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %13

; <label>:69:                                     ; preds = %13
  ret void
}

declare dereferenceable(64) %class.BlockVector.16* @_ZN11BlockVectorIdEaSEd(%class.BlockVector.16*, double) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZN11BlockVectorIdEclEj(%class.BlockVector.16*, i32) #0 comdat align 2 {
  %3 = alloca %class.BlockVector.16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::pair", align 4
  store %class.BlockVector.16* %0, %class.BlockVector.16** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.BlockVector.16*, %class.BlockVector.16** %3, align 8
  %7 = getelementptr inbounds %class.BlockVector.16, %class.BlockVector.16* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @_ZNK12BlockIndices15global_to_localEj(%class.BlockIndices* %7, i32 %8)
  %10 = bitcast %"struct.std::pair"* %5 to i64*
  store i64 %9, i64* %10, align 4
  %11 = getelementptr inbounds %class.BlockVector.16, %class.BlockVector.16* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = call dereferenceable(24) %class.Vector* @_ZNSt6vectorI6VectorIdESaIS1_EEixEm(%"class.std::vector.17"* %11, i64 %14)
  %16 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %15, i32 %17)
  ret double* %18
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9vmult_addI11BlockVectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector.16* dereferenceable(64), %class.BlockVector.16* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector.16*, align 8
  %6 = alloca %class.BlockVector.16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %"class.internal::BlockVectorIterators::Iterator.23", align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca %"class.internal::BlockVectorIterators::Iterator.23", align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector.16* %1, %class.BlockVector.16** %5, align 8
  store %class.BlockVector.16* %2, %class.BlockVector.16** %6, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %16 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %20 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %19)
  %21 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %18, i64 %25
  store double* %26, double** %8, align 8
  %27 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %28 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %27)
  %29 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = load %class.BlockVector.16*, %class.BlockVector.16** %5, align 8
  call void @_ZN11BlockVectorIdE5beginEv(%"class.internal::BlockVectorIterators::Iterator.23"* sret %10, %class.BlockVector.16* %39)
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %79, %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %82

; <label>:44:                                     ; preds = %40
  store double 0.000000e+00, double* %12, align 8
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %48 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %47)
  %49 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %46, i64 %56
  store double* %57, double** %13, align 8
  br label %58

; <label>:58:                                     ; preds = %62, %44
  %59 = load double*, double** %8, align 8
  %60 = load double*, double** %13, align 8
  %61 = icmp ne double* %59, %60
  br i1 %61, label %62, label %74

; <label>:62:                                     ; preds = %58
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %8, align 8
  %65 = load double, double* %63, align 8
  %66 = load %class.BlockVector.16*, %class.BlockVector.16** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call double @_ZNK11BlockVectorIdEclEj(%class.BlockVector.16* %66, i32 %69)
  %71 = fmul double %65, %70
  %72 = load double, double* %12, align 8
  %73 = fadd double %72, %71
  store double %73, double* %12, align 8
  br label %58

; <label>:74:                                     ; preds = %58
  %75 = load double, double* %12, align 8
  call void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EEppEi(%"class.internal::BlockVectorIterators::Iterator.23"* sret %14, %"class.internal::BlockVectorIterators::Iterator.23"* %10, i32 0)
  %76 = call dereferenceable(8) double* @_ZNK8internal20BlockVectorIterators8IteratorIdLb0EEdeEv(%"class.internal::BlockVectorIterators::Iterator.23"* %14)
  %77 = load double, double* %76, align 8
  %78 = fadd double %77, %75
  store double %78, double* %76, align 8
  br label %79

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %40

; <label>:82:                                     ; preds = %40
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE10Tvmult_addI11BlockVectorIdES3_EEvRT_RKT0_(%class.SparseMatrix*, %class.BlockVector.16* dereferenceable(64), %class.BlockVector.16* dereferenceable(64)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.BlockVector.16*, align 8
  %6 = alloca %class.BlockVector.16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.BlockVector.16* %1, %class.BlockVector.16** %5, align 8
  store %class.BlockVector.16* %2, %class.BlockVector.16** %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %64, %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %67

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %60, %15
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %25, %34
  br i1 %35, label %36, label %63

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %38 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %37)
  %39 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load %class.BlockVector.16*, %class.BlockVector.16** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call double @_ZNK11BlockVectorIdEclEj(%class.BlockVector.16* %51, i32 %52)
  %54 = fmul double %50, %53
  %55 = load %class.BlockVector.16*, %class.BlockVector.16** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call dereferenceable(8) double* @_ZN11BlockVectorIdEclEj(%class.BlockVector.16* %55, i32 %56)
  %58 = load double, double* %57, align 8
  %59 = fadd double %58, %54
  store double %59, double* %57, align 8
  br label %60

; <label>:60:                                     ; preds = %36
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %24

; <label>:63:                                     ; preds = %24
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %11

; <label>:67:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE18matrix_norm_squareIdEET_RK6VectorIS2_E(%class.SparseMatrix*, %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %3 = alloca %class.SparseMatrix*, align 8
  %4 = alloca %class.Vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %3, align 8
  store %class.Vector* %1, %class.Vector** %4, align 8
  %12 = load %class.SparseMatrix*, %class.SparseMatrix** %3, align 8
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %12)
  store i32 %13, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  %14 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %15 = load double*, double** %14, align 8
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %17 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %16)
  %18 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %15, i64 %22
  store double* %23, double** %7, align 8
  %24 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %25 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %24)
  %26 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %29 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %28)
  %30 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %27, i64 %34
  store i32* %35, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %36

; <label>:36:                                     ; preds = %78, %2
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %81

; <label>:40:                                     ; preds = %36
  store double 0.000000e+00, double* %10, align 8
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %42, i64 %52
  store double* %53, double** %11, align 8
  br label %54

; <label>:54:                                     ; preds = %58, %40
  %55 = load double*, double** %7, align 8
  %56 = load double*, double** %11, align 8
  %57 = icmp ne double* %55, %56
  br i1 %57, label %58, label %70

; <label>:58:                                     ; preds = %54
  %59 = load double*, double** %7, align 8
  %60 = getelementptr inbounds double, double* %59, i32 1
  store double* %60, double** %7, align 8
  %61 = load double, double* %59, align 8
  %62 = load %class.Vector*, %class.Vector** %4, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %63, align 4
  %66 = call double @_ZNK6VectorIdEclEj(%class.Vector* %62, i32 %65)
  %67 = fmul double %61, %66
  %68 = load double, double* %10, align 8
  %69 = fadd double %68, %67
  store double %69, double* %10, align 8
  br label %54

; <label>:70:                                     ; preds = %54
  %71 = load double, double* %10, align 8
  %72 = load %class.Vector*, %class.Vector** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call double @_ZNK6VectorIdEclEj(%class.Vector* %72, i32 %73)
  %75 = fmul double %71, %74
  %76 = load double, double* %6, align 8
  %77 = fadd double %76, %75
  store double %77, double* %6, align 8
  br label %78

; <label>:78:                                     ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %36

; <label>:81:                                     ; preds = %36
  %82 = load double, double* %6, align 8
  ret double %82
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE21matrix_scalar_productIdEET_RK6VectorIS2_ES6_(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store %class.Vector* %2, %class.Vector** %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %14)
  store i32 %15, i32* %7, align 4
  store double 0.000000e+00, double* %8, align 8
  %16 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %19 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %18)
  %20 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double* %25, double** %9, align 8
  %26 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %27 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %26)
  %28 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %31 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %30)
  %32 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %38

; <label>:38:                                     ; preds = %80, %3
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %83

; <label>:42:                                     ; preds = %38
  store double 0.000000e+00, double* %12, align 8
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %44 = load double*, double** %43, align 8
  %45 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %46 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %45)
  %47 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %44, i64 %54
  store double* %55, double** %13, align 8
  br label %56

; <label>:56:                                     ; preds = %60, %42
  %57 = load double*, double** %9, align 8
  %58 = load double*, double** %13, align 8
  %59 = icmp ne double* %57, %58
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = load double*, double** %9, align 8
  %62 = getelementptr inbounds double, double* %61, i32 1
  store double* %62, double** %9, align 8
  %63 = load double, double* %61, align 8
  %64 = load %class.Vector*, %class.Vector** %6, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* %65, align 4
  %68 = call double @_ZNK6VectorIdEclEj(%class.Vector* %64, i32 %67)
  %69 = fmul double %63, %68
  %70 = load double, double* %12, align 8
  %71 = fadd double %70, %69
  store double %71, double* %12, align 8
  br label %56

; <label>:72:                                     ; preds = %56
  %73 = load double, double* %12, align 8
  %74 = load %class.Vector*, %class.Vector** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call double @_ZNK6VectorIdEclEj(%class.Vector* %74, i32 %75)
  %77 = fmul double %73, %76
  %78 = load double, double* %8, align 8
  %79 = fadd double %78, %77
  store double %79, double* %8, align 8
  br label %80

; <label>:80:                                     ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %38

; <label>:83:                                     ; preds = %38
  %84 = load double, double* %8, align 8
  ret double %84
}

; Function Attrs: noinline uwtable
define weak_odr double @_ZNK12SparseMatrixIdE8residualIdEET_R6VectorIS2_ERKS4_S7_(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24)) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca %class.Vector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store %class.Vector* %3, %class.Vector** %8, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %16 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %15)
  store i32 %16, i32* %9, align 4
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

; <label>:17:                                     ; preds = %85, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %88

; <label>:21:                                     ; preds = %17
  %22 = load %class.Vector*, %class.Vector** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call double @_ZNK6VectorIdEclEj(%class.Vector* %22, i32 %23)
  store double %24, double* %12, align 8
  %25 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %26 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %25)
  %27 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  br label %33

; <label>:33:                                     ; preds = %66, %21
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %36 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %35)
  %37 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %34, %43
  br i1 %44, label %45, label %69

; <label>:45:                                     ; preds = %33
  %46 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %47 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %46)
  %48 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %47, i32 0, i32 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load %class.Vector*, %class.Vector** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call double @_ZNK6VectorIdEclEj(%class.Vector* %60, i32 %61)
  %63 = fmul double %59, %62
  %64 = load double, double* %12, align 8
  %65 = fsub double %64, %63
  store double %65, double* %12, align 8
  br label %66

; <label>:66:                                     ; preds = %45
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %33

; <label>:69:                                     ; preds = %33
  %70 = load double, double* %12, align 8
  %71 = load %class.Vector*, %class.Vector** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %71, i32 %72)
  store double %70, double* %73, align 8
  %74 = load %class.Vector*, %class.Vector** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %74, i32 %75)
  %77 = load double, double* %76, align 8
  %78 = load %class.Vector*, %class.Vector** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %78, i32 %79)
  %81 = load double, double* %80, align 8
  %82 = fmul double %77, %81
  %83 = load double, double* %10, align 8
  %84 = fadd double %83, %82
  store double %84, double* %10, align 8
  br label %85

; <label>:85:                                     ; preds = %69
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %17

; <label>:88:                                     ; preds = %17
  %89 = load double, double* %10, align 8
  %90 = call double @sqrt(double %89) #2
  ret double %90
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE17precondition_SSORIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %20 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %21 = load %class.Vector*, %class.Vector** %7, align 8
  %22 = call i32 @_ZNK6VectorIdE4sizeEv(%class.Vector* %21)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %24 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %23)
  %25 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %10, align 8
  %28 = load %class.Vector*, %class.Vector** %6, align 8
  %29 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %28, i32 0)
  store double* %29, double** %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

; <label>:30:                                     ; preds = %113, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %120

; <label>:34:                                     ; preds = %30
  %35 = load %class.Vector*, %class.Vector** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call double @_ZNK6VectorIdEclEj(%class.Vector* %35, i32 %36)
  %38 = load double*, double** %11, align 8
  store double %37, double* %38, align 8
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %40 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %39)
  %41 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %49 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %48)
  %50 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = call i32* @_ZN15SparsityPattern21optimized_lower_boundEPKjS1_RS0_(i32* %47, i32* %56, i32* dereferenceable(4) %12)
  %58 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %59 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %58)
  %60 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = ptrtoint i32* %57 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %71

; <label>:71:                                     ; preds = %99, %34
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %102

; <label>:75:                                     ; preds = %71
  %76 = load double, double* %8, align 8
  %77 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %78 = load double*, double** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fmul double %76, %82
  %84 = load %class.Vector*, %class.Vector** %6, align 8
  %85 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %86 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %85)
  %87 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %84, i32 %92)
  %94 = load double, double* %93, align 8
  %95 = fmul double %83, %94
  %96 = load double*, double** %11, align 8
  %97 = load double, double* %96, align 8
  %98 = fsub double %97, %95
  store double %98, double* %96, align 8
  br label %99

; <label>:99:                                     ; preds = %75
  %100 = load i32, i32* %14, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %71

; <label>:102:                                    ; preds = %71
  %103 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %104 = load double*, double** %103, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = load double, double* %108, align 8
  %110 = load double*, double** %11, align 8
  %111 = load double, double* %110, align 8
  %112 = fdiv double %111, %109
  store double %112, double* %110, align 8
  br label %113

; <label>:113:                                    ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = load double*, double** %11, align 8
  %117 = getelementptr inbounds double, double* %116, i32 1
  store double* %117, double** %11, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %10, align 8
  br label %30

; <label>:120:                                    ; preds = %30
  %121 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %122 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %121)
  %123 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32* %125, i32** %10, align 8
  %126 = load %class.Vector*, %class.Vector** %6, align 8
  %127 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %126, i32 0)
  store double* %127, double** %11, align 8
  store i32 0, i32* %15, align 4
  br label %128

; <label>:128:                                    ; preds = %146, %120
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %153

; <label>:132:                                    ; preds = %128
  %133 = load double, double* %8, align 8
  %134 = fsub double 2.000000e+00, %133
  %135 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %136 = load double*, double** %135, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %136, i64 %139
  %141 = load double, double* %140, align 8
  %142 = fmul double %134, %141
  %143 = load double*, double** %11, align 8
  %144 = load double, double* %143, align 8
  %145 = fmul double %144, %142
  store double %145, double* %143, align 8
  br label %146

; <label>:146:                                    ; preds = %132
  %147 = load i32, i32* %15, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %15, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %10, align 8
  %151 = load double*, double** %11, align 8
  %152 = getelementptr inbounds double, double* %151, i32 1
  store double* %152, double** %11, align 8
  br label %128

; <label>:153:                                    ; preds = %128
  %154 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %155 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %154)
  %156 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sub i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32* %161, i32** %10, align 8
  %162 = load %class.Vector*, %class.Vector** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sub i32 %163, 1
  %165 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %162, i32 %164)
  store double* %165, double** %11, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sub i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %168

; <label>:168:                                    ; preds = %259, %153
  %169 = load i32, i32* %16, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %266

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %173 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %172)
  %174 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %173, i32 0, i32 8
  %175 = load i32*, i32** %174, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %182 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %181)
  %183 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %182, i32 0, i32 8
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %18, align 4
  %191 = call i32* @_ZN15SparsityPattern21optimized_lower_boundEPKjS1_RS0_(i32* %180, i32* %189, i32* dereferenceable(4) %18)
  %192 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %193 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %192)
  %194 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %193, i32 0, i32 8
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = ptrtoint i32* %191 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %17, align 4
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %19, align 4
  br label %203

; <label>:203:                                    ; preds = %245, %171
  %204 = load i32, i32* %19, align 4
  %205 = load i32*, i32** %10, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ult i32 %204, %207
  br i1 %208, label %209, label %248

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %211 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %210)
  %212 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %211, i32 0, i32 8
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %19, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp ugt i32 %217, %218
  br i1 %219, label %220, label %244

; <label>:220:                                    ; preds = %209
  %221 = load double, double* %8, align 8
  %222 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %223 = load double*, double** %222, align 8
  %224 = load i32, i32* %19, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %223, i64 %225
  %227 = load double, double* %226, align 8
  %228 = fmul double %221, %227
  %229 = load %class.Vector*, %class.Vector** %6, align 8
  %230 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 1
  %231 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %230)
  %232 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %231, i32 0, i32 8
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %19, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %229, i32 %237)
  %239 = load double, double* %238, align 8
  %240 = fmul double %228, %239
  %241 = load double*, double** %11, align 8
  %242 = load double, double* %241, align 8
  %243 = fsub double %242, %240
  store double %243, double* %241, align 8
  br label %244

; <label>:244:                                    ; preds = %220, %209
  br label %245

; <label>:245:                                    ; preds = %244
  %246 = load i32, i32* %19, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %19, align 4
  br label %203

; <label>:248:                                    ; preds = %203
  %249 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %20, i32 0, i32 2
  %250 = load double*, double** %249, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %250, i64 %253
  %255 = load double, double* %254, align 8
  %256 = load double*, double** %11, align 8
  %257 = load double, double* %256, align 8
  %258 = fdiv double %257, %255
  store double %258, double* %256, align 8
  br label %259

; <label>:259:                                    ; preds = %248
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %16, align 4
  %262 = load i32*, i32** %10, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 -1
  store i32* %263, i32** %10, align 8
  %264 = load double*, double** %11, align 8
  %265 = getelementptr inbounds double, double* %264, i32 -1
  store double* %265, double** %11, align 8
  br label %168

; <label>:266:                                    ; preds = %168
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK6VectorIdE4sizeEv(%class.Vector*) #5 comdat align 2 {
  %2 = alloca %class.Vector*, align 8
  store %class.Vector* %0, %class.Vector** %2, align 8
  %3 = load %class.Vector*, %class.Vector** %2, align 8
  %4 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE16precondition_SORIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = load %class.Vector*, %class.Vector** %7, align 8
  %11 = load %class.Vector*, %class.Vector** %6, align 8
  %12 = call dereferenceable(24) %class.Vector* @_ZN6VectorIdEaSERKS0_(%class.Vector* %11, %class.Vector* dereferenceable(24) %10)
  %13 = load %class.Vector*, %class.Vector** %6, align 8
  %14 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE3SORIdEEvR6VectorIT_Ed(%class.SparseMatrix* %9, %class.Vector* dereferenceable(24) %13, double %14)
  ret void
}

declare dereferenceable(24) %class.Vector* @_ZN6VectorIdEaSERKS0_(%class.Vector*, %class.Vector* dereferenceable(24)) #1

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE3SORIdEEvR6VectorIT_Ed(%class.SparseMatrix*, %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store double %2, double* %6, align 8
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %92, %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %11)
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %95

; <label>:16:                                     ; preds = %12
  %17 = load %class.Vector*, %class.Vector** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %17, i32 %18)
  %20 = load double, double* %19, align 8
  store double %20, double* %8, align 8
  %21 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %22 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %21)
  %23 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %68, %16
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %30, %39
  br i1 %40, label %41, label %71

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %43 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %42)
  %44 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %67

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load %class.Vector*, %class.Vector** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %60, i32 %61)
  %63 = load double, double* %62, align 8
  %64 = fmul double %59, %63
  %65 = load double, double* %8, align 8
  %66 = fsub double %65, %64
  store double %66, double* %8, align 8
  br label %67

; <label>:67:                                     ; preds = %53, %41
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %29

; <label>:71:                                     ; preds = %29
  %72 = load double, double* %8, align 8
  %73 = load double, double* %6, align 8
  %74 = fmul double %72, %73
  %75 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 2
  %76 = load double*, double** %75, align 8
  %77 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %11, i32 0, i32 1
  %78 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %77)
  %79 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %76, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fdiv double %74, %87
  %89 = load %class.Vector*, %class.Vector** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %89, i32 %90)
  store double %88, double* %91, align 8
  br label %92

; <label>:92:                                     ; preds = %71
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %12

; <label>:95:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE17precondition_TSORIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = load %class.Vector*, %class.Vector** %7, align 8
  %11 = load %class.Vector*, %class.Vector** %6, align 8
  %12 = call dereferenceable(24) %class.Vector* @_ZN6VectorIdEaSERKS0_(%class.Vector* %11, %class.Vector* dereferenceable(24) %10)
  %13 = load %class.Vector*, %class.Vector** %6, align 8
  %14 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE4TSORIdEEvR6VectorIT_Ed(%class.SparseMatrix* %9, %class.Vector* dereferenceable(24) %13, double %14)
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE4TSORIdEEvR6VectorIT_Ed(%class.SparseMatrix*, %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store double %2, double* %6, align 8
  %10 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %11 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %10)
  store i32 %11, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %78, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %99

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = load %class.Vector*, %class.Vector** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %18, i32 %19)
  %21 = load double, double* %20, align 8
  store double %21, double* %8, align 8
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %75, %15
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %33 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %32)
  %34 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %78

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %74

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load %class.Vector*, %class.Vector** %5, align 8
  %61 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %62 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %61)
  %63 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %60, i32 %68)
  %70 = load double, double* %69, align 8
  %71 = fmul double %59, %70
  %72 = load double, double* %8, align 8
  %73 = fsub double %72, %71
  store double %73, double* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %53, %42
  br label %75

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %30

; <label>:78:                                     ; preds = %30
  %79 = load double, double* %8, align 8
  %80 = load double, double* %6, align 8
  %81 = fmul double %79, %80
  %82 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 2
  %83 = load double*, double** %82, align 8
  %84 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %10, i32 0, i32 1
  %85 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %84)
  %86 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %83, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fdiv double %81, %94
  %96 = load %class.Vector*, %class.Vector** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %96, i32 %97)
  store double %95, double* %98, align 8
  br label %12

; <label>:99:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE19precondition_JacobiIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %15 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %16 = load %class.Vector*, %class.Vector** %7, align 8
  %17 = call i32 @_ZNK6VectorIdE4sizeEv(%class.Vector* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %class.Vector*, %class.Vector** %6, align 8
  %19 = call double* @_ZN6VectorIdE5beginEv(%class.Vector* %18)
  store double* %19, double** %10, align 8
  %20 = load %class.Vector*, %class.Vector** %7, align 8
  %21 = call double* @_ZNK6VectorIdE5beginEv(%class.Vector* %20)
  store double* %21, double** %11, align 8
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32* %26, i32** %12, align 8
  %27 = load double, double* %8, align 8
  %28 = fcmp une double %27, 1.000000e+00
  br i1 %28, label %29, label %58

; <label>:29:                                     ; preds = %4
  store i32 0, i32* %13, align 4
  br label %30

; <label>:30:                                     ; preds = %48, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %57

; <label>:34:                                     ; preds = %30
  %35 = load double, double* %8, align 8
  %36 = load double*, double** %11, align 8
  %37 = load double, double* %36, align 8
  %38 = fmul double %35, %37
  %39 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %40 = load double*, double** %39, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %40, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fdiv double %38, %45
  %47 = load double*, double** %10, align 8
  store double %46, double* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %34
  %49 = load i32, i32* %13, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = load double*, double** %10, align 8
  %52 = getelementptr inbounds double, double* %51, i32 1
  store double* %52, double** %10, align 8
  %53 = load double*, double** %11, align 8
  %54 = getelementptr inbounds double, double* %53, i32 1
  store double* %54, double** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %12, align 8
  br label %30

; <label>:57:                                     ; preds = %30
  br label %85

; <label>:58:                                     ; preds = %4
  store i32 0, i32* %14, align 4
  br label %59

; <label>:59:                                     ; preds = %75, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %84

; <label>:63:                                     ; preds = %59
  %64 = load double*, double** %11, align 8
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %15, i32 0, i32 2
  %67 = load double*, double** %66, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %67, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fdiv double %65, %72
  %74 = load double*, double** %10, align 8
  store double %73, double* %74, align 8
  br label %75

; <label>:75:                                     ; preds = %63
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  %78 = load double*, double** %10, align 8
  %79 = getelementptr inbounds double, double* %78, i32 1
  store double* %79, double** %10, align 8
  %80 = load double*, double** %11, align 8
  %81 = getelementptr inbounds double, double* %80, i32 1
  store double* %81, double** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %12, align 8
  br label %59

; <label>:84:                                     ; preds = %59
  br label %85

; <label>:85:                                     ; preds = %84, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNK6VectorIdE5beginEv(%class.Vector*) #5 comdat align 2 {
  %2 = alloca %class.Vector*, align 8
  store %class.Vector* %0, %class.Vector** %2, align 8
  %3 = load %class.Vector*, %class.Vector** %2, align 8
  %4 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 3
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  ret double* %6
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE4SSORIdEEvR6VectorIT_Ed(%class.SparseMatrix*, %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %4 = alloca %class.SparseMatrix*, align 8
  %5 = alloca %class.Vector*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %4, align 8
  store %class.Vector* %1, %class.Vector** %5, align 8
  store double %2, double* %6, align 8
  %14 = load %class.SparseMatrix*, %class.SparseMatrix** %4, align 8
  %15 = load %class.Vector*, %class.Vector** %5, align 8
  %16 = call i32 @_ZNK6VectorIdE4sizeEv(%class.Vector* %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %103, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %106

; <label>:21:                                     ; preds = %17
  store double 0.000000e+00, double* %9, align 8
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %30

; <label>:30:                                     ; preds = %73, %21
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %33 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %32)
  %34 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %76

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %72

; <label>:53:                                     ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %71

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %59 = load double*, double** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load %class.Vector*, %class.Vector** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %64, i32 %65)
  %67 = load double, double* %66, align 8
  %68 = fmul double %63, %67
  %69 = load double, double* %9, align 8
  %70 = fadd double %69, %68
  store double %70, double* %9, align 8
  br label %71

; <label>:71:                                     ; preds = %57, %53
  br label %72

; <label>:72:                                     ; preds = %71, %42
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %30

; <label>:76:                                     ; preds = %30
  %77 = load double, double* %9, align 8
  %78 = load double, double* %6, align 8
  %79 = fmul double %77, %78
  %80 = load %class.Vector*, %class.Vector** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %80, i32 %81)
  %83 = load double, double* %82, align 8
  %84 = fsub double %83, %79
  store double %84, double* %82, align 8
  %85 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %86 = load double*, double** %85, align 8
  %87 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %88 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %87)
  %89 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %88, i32 0, i32 7
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %86, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load %class.Vector*, %class.Vector** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %98, i32 %99)
  %101 = load double, double* %100, align 8
  %102 = fdiv double %101, %97
  store double %102, double* %100, align 8
  br label %103

; <label>:103:                                    ; preds = %76
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %17

; <label>:106:                                    ; preds = %17
  %107 = load i32, i32* %7, align 4
  %108 = sub i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %109

; <label>:109:                                    ; preds = %190, %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %193

; <label>:112:                                    ; preds = %109
  store double 0.000000e+00, double* %9, align 8
  %113 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %114 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %113)
  %115 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  br label %121

; <label>:121:                                    ; preds = %164, %112
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %124 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %123)
  %125 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %124, i32 0, i32 7
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ult i32 %122, %131
  br i1 %132, label %133, label %167

; <label>:133:                                    ; preds = %121
  %134 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %135 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %134)
  %136 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %135, i32 0, i32 8
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %163

; <label>:144:                                    ; preds = %133
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %162

; <label>:148:                                    ; preds = %144
  %149 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %150 = load double*, double** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds double, double* %150, i64 %152
  %154 = load double, double* %153, align 8
  %155 = load %class.Vector*, %class.Vector** %5, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %155, i32 %156)
  %158 = load double, double* %157, align 8
  %159 = fmul double %154, %158
  %160 = load double, double* %9, align 8
  %161 = fadd double %160, %159
  store double %161, double* %9, align 8
  br label %162

; <label>:162:                                    ; preds = %148, %144
  br label %163

; <label>:163:                                    ; preds = %162, %133
  br label %164

; <label>:164:                                    ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %121

; <label>:167:                                    ; preds = %121
  %168 = load double, double* %9, align 8
  %169 = load double, double* %6, align 8
  %170 = fmul double %168, %169
  %171 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 2
  %172 = load double*, double** %171, align 8
  %173 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %14, i32 0, i32 1
  %174 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %173)
  %175 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %174, i32 0, i32 7
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %172, i64 %181
  %183 = load double, double* %182, align 8
  %184 = fdiv double %170, %183
  %185 = load %class.Vector*, %class.Vector** %5, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %185, i32 %186)
  %188 = load double, double* %187, align 8
  %189 = fsub double %188, %184
  store double %189, double* %187, align 8
  br label %190

; <label>:190:                                    ; preds = %167
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %12, align 4
  br label %109

; <label>:193:                                    ; preds = %109
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE4PSORIdEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), double) #0 comdat align 2 {
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca %"class.std::vector.11"*, align 8
  %9 = alloca %"class.std::vector.11"*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %6, align 8
  store %class.Vector* %1, %class.Vector** %7, align 8
  store %"class.std::vector.11"* %2, %"class.std::vector.11"** %8, align 8
  store %"class.std::vector.11"* %3, %"class.std::vector.11"** %9, align 8
  store double %4, double* %10, align 8
  %16 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  store i32 0, i32* %11, align 4
  br label %17

; <label>:17:                                     ; preds = %106, %5
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %16)
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %109

; <label>:21:                                     ; preds = %17
  %22 = load %"class.std::vector.11"*, %"class.std::vector.11"** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %22, i64 %24)
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %class.Vector*, %class.Vector** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %27, i32 %28)
  %30 = load double, double* %29, align 8
  store double %30, double* %13, align 8
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  br label %39

; <label>:39:                                     ; preds = %82, %21
  %40 = load i32, i32* %14, align 4
  %41 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %42 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %41)
  %43 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %40, %49
  br i1 %50, label %51, label %85

; <label>:51:                                     ; preds = %39
  %52 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %53 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %52)
  %54 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %"class.std::vector.11"*, %"class.std::vector.11"** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = zext i32 %61 to i64
  %63 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %60, i64 %62)
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %81

; <label>:67:                                     ; preds = %51
  %68 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %69 = load double*, double** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load %class.Vector*, %class.Vector** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %74, i32 %75)
  %77 = load double, double* %76, align 8
  %78 = fmul double %73, %77
  %79 = load double, double* %13, align 8
  %80 = fsub double %79, %78
  store double %80, double* %13, align 8
  br label %81

; <label>:81:                                     ; preds = %67, %51
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %39

; <label>:85:                                     ; preds = %39
  %86 = load double, double* %13, align 8
  %87 = load double, double* %10, align 8
  %88 = fmul double %86, %87
  %89 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %90 = load double*, double** %89, align 8
  %91 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %92 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %91)
  %93 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %92, i32 0, i32 7
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %90, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fdiv double %88, %101
  %103 = load %class.Vector*, %class.Vector** %7, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %103, i32 %104)
  store double %102, double* %105, align 8
  br label %106

; <label>:106:                                    ; preds = %85
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %17

; <label>:109:                                    ; preds = %17
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE5TPSORIdEEvR6VectorIT_ERKSt6vectorIjSaIjEESA_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), %"class.std::vector.11"* dereferenceable(24), double) #0 comdat align 2 {
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca %"class.std::vector.11"*, align 8
  %9 = alloca %"class.std::vector.11"*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %6, align 8
  store %class.Vector* %1, %class.Vector** %7, align 8
  store %"class.std::vector.11"* %2, %"class.std::vector.11"** %8, align 8
  store %"class.std::vector.11"* %3, %"class.std::vector.11"** %9, align 8
  store double %4, double* %10, align 8
  %16 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %17 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %16)
  store i32 %17, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %87, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %108

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %11, align 4
  %24 = load %"class.std::vector.11"*, %"class.std::vector.11"** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %24, i64 %26)
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %class.Vector*, %class.Vector** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %29, i32 %30)
  %32 = load double, double* %31, align 8
  store double %32, double* %13, align 8
  %33 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %34 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %33)
  %35 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %41

; <label>:41:                                     ; preds = %84, %21
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %44 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %43)
  %45 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %42, %51
  br i1 %52, label %53, label %87

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %55 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %54)
  %56 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %"class.std::vector.11"*, %"class.std::vector.11"** %9, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %62, i64 %64)
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %83

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = load %class.Vector*, %class.Vector** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %76, i32 %77)
  %79 = load double, double* %78, align 8
  %80 = fmul double %75, %79
  %81 = load double, double* %13, align 8
  %82 = fsub double %81, %80
  store double %82, double* %13, align 8
  br label %83

; <label>:83:                                     ; preds = %69, %53
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %41

; <label>:87:                                     ; preds = %41
  %88 = load double, double* %13, align 8
  %89 = load double, double* %10, align 8
  %90 = fmul double %88, %89
  %91 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 2
  %92 = load double*, double** %91, align 8
  %93 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %16, i32 0, i32 1
  %94 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %93)
  %95 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %92, i64 %101
  %103 = load double, double* %102, align 8
  %104 = fdiv double %90, %103
  %105 = load %class.Vector*, %class.Vector** %7, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %105, i32 %106)
  store double %104, double* %107, align 8
  br label %18

; <label>:108:                                    ; preds = %18
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE8SOR_stepIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %12 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %88, %4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %12)
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %91

; <label>:17:                                     ; preds = %13
  %18 = load %class.Vector*, %class.Vector** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call double @_ZNK6VectorIdEclEj(%class.Vector* %18, i32 %19)
  store double %20, double* %10, align 8
  %21 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %22 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %21)
  %23 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %62, %17
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %32 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %31)
  %33 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %30, %39
  br i1 %40, label %41, label %65

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load %class.Vector*, %class.Vector** %6, align 8
  %49 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %50 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %49)
  %51 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %48, i32 %56)
  %58 = load double, double* %57, align 8
  %59 = fmul double %47, %58
  %60 = load double, double* %10, align 8
  %61 = fsub double %60, %59
  store double %61, double* %10, align 8
  br label %62

; <label>:62:                                     ; preds = %41
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %29

; <label>:65:                                     ; preds = %29
  %66 = load double, double* %10, align 8
  %67 = load double, double* %8, align 8
  %68 = fmul double %66, %67
  %69 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %70 = load double*, double** %69, align 8
  %71 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %72 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %71)
  %73 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %70, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fdiv double %68, %81
  %83 = load %class.Vector*, %class.Vector** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %83, i32 %84)
  %86 = load double, double* %85, align 8
  %87 = fadd double %86, %82
  store double %87, double* %85, align 8
  br label %88

; <label>:88:                                     ; preds = %65
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %13

; <label>:91:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9TSOR_stepIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %12 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %13 = call i32 @_ZNK12SparseMatrixIdE1mEv(%class.SparseMatrix* %12)
  %14 = sub i32 %13, 1
  store i32 %14, i32* %9, align 4
  br label %15

; <label>:15:                                     ; preds = %89, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %92

; <label>:18:                                     ; preds = %15
  %19 = load %class.Vector*, %class.Vector** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call double @_ZNK6VectorIdEclEj(%class.Vector* %19, i32 %20)
  store double %21, double* %10, align 8
  %22 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %23 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %22)
  %24 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

; <label>:30:                                     ; preds = %63, %18
  %31 = load i32, i32* %11, align 4
  %32 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %33 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %32)
  %34 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %66

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %44 = load double*, double** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load %class.Vector*, %class.Vector** %6, align 8
  %50 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %51 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %50)
  %52 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %49, i32 %57)
  %59 = load double, double* %58, align 8
  %60 = fmul double %48, %59
  %61 = load double, double* %10, align 8
  %62 = fsub double %61, %60
  store double %62, double* %10, align 8
  br label %63

; <label>:63:                                     ; preds = %42
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %30

; <label>:66:                                     ; preds = %30
  %67 = load double, double* %10, align 8
  %68 = load double, double* %8, align 8
  %69 = fmul double %67, %68
  %70 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 2
  %71 = load double*, double** %70, align 8
  %72 = getelementptr inbounds %class.SparseMatrix, %class.SparseMatrix* %12, i32 0, i32 1
  %73 = call %class.SparsityPattern* @_ZNK12SmartPointerIK15SparsityPatternEptEv(%class.SmartPointer* %72)
  %74 = getelementptr inbounds %class.SparsityPattern, %class.SparsityPattern* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %71, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fdiv double %69, %82
  %84 = load %class.Vector*, %class.Vector** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call dereferenceable(8) double* @_ZN6VectorIdEclEj(%class.Vector* %84, i32 %85)
  %87 = load double, double* %86, align 8
  %88 = fadd double %87, %83
  store double %88, double* %86, align 8
  br label %89

; <label>:89:                                     ; preds = %66
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %9, align 4
  br label %15

; <label>:92:                                     ; preds = %15
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK12SparseMatrixIdE9SSOR_stepIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix*, %class.Vector* dereferenceable(24), %class.Vector* dereferenceable(24), double) #0 comdat align 2 {
  %5 = alloca %class.SparseMatrix*, align 8
  %6 = alloca %class.Vector*, align 8
  %7 = alloca %class.Vector*, align 8
  %8 = alloca double, align 8
  store %class.SparseMatrix* %0, %class.SparseMatrix** %5, align 8
  store %class.Vector* %1, %class.Vector** %6, align 8
  store %class.Vector* %2, %class.Vector** %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.SparseMatrix*, %class.SparseMatrix** %5, align 8
  %10 = load %class.Vector*, %class.Vector** %6, align 8
  %11 = load %class.Vector*, %class.Vector** %7, align 8
  %12 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE8SOR_stepIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix* %9, %class.Vector* dereferenceable(24) %10, %class.Vector* dereferenceable(24) %11, double %12)
  %13 = load %class.Vector*, %class.Vector** %6, align 8
  %14 = load %class.Vector*, %class.Vector** %7, align 8
  %15 = load double, double* %8, align 8
  call void @_ZNK12SparseMatrixIdE9TSOR_stepIdEEvR6VectorIT_ERKS4_d(%class.SparseMatrix* %9, %class.Vector* dereferenceable(24) %13, %class.Vector* dereferenceable(24) %14, double %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE16ExcNotCompressedD2Ev(%"class.SparseMatrix<double>::ExcNotCompressed"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcNotCompressed"*, align 8
  store %"class.SparseMatrix<double>::ExcNotCompressed"* %0, %"class.SparseMatrix<double>::ExcNotCompressed"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcNotCompressed"*, %"class.SparseMatrix<double>::ExcNotCompressed"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcNotCompressed"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE16ExcNotCompressedD0Ev(%"class.SparseMatrix<double>::ExcNotCompressed"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcNotCompressed"*, align 8
  store %"class.SparseMatrix<double>::ExcNotCompressed"* %0, %"class.SparseMatrix<double>::ExcNotCompressed"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcNotCompressed"*, %"class.SparseMatrix<double>::ExcNotCompressed"** %2, align 8
  call void @_ZN12SparseMatrixIdE16ExcNotCompressedD2Ev(%"class.SparseMatrix<double>::ExcNotCompressed"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcNotCompressed"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: nounwind
declare i8* @_ZNK13ExceptionBase4whatEv(%class.ExceptionBase*) unnamed_addr #9

declare void @_ZNK13ExceptionBase9PrintInfoERSo(%class.ExceptionBase*, %"class.std::basic_ostream"* dereferenceable(272)) unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD2Ev(%"class.SparseMatrix<double>::ExcMatrixNotInitialized"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcMatrixNotInitialized"*, align 8
  store %"class.SparseMatrix<double>::ExcMatrixNotInitialized"* %0, %"class.SparseMatrix<double>::ExcMatrixNotInitialized"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcMatrixNotInitialized"*, %"class.SparseMatrix<double>::ExcMatrixNotInitialized"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcMatrixNotInitialized"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD0Ev(%"class.SparseMatrix<double>::ExcMatrixNotInitialized"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcMatrixNotInitialized"*, align 8
  store %"class.SparseMatrix<double>::ExcMatrixNotInitialized"* %0, %"class.SparseMatrix<double>::ExcMatrixNotInitialized"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcMatrixNotInitialized"*, %"class.SparseMatrix<double>::ExcMatrixNotInitialized"** %2, align 8
  call void @_ZN12SparseMatrixIdE23ExcMatrixNotInitializedD2Ev(%"class.SparseMatrix<double>::ExcMatrixNotInitialized"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcMatrixNotInitialized"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE18ExcMatrixNotSquareD2Ev(%"class.SparseMatrix<double>::ExcMatrixNotSquare"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcMatrixNotSquare"*, align 8
  store %"class.SparseMatrix<double>::ExcMatrixNotSquare"* %0, %"class.SparseMatrix<double>::ExcMatrixNotSquare"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcMatrixNotSquare"*, %"class.SparseMatrix<double>::ExcMatrixNotSquare"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcMatrixNotSquare"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE18ExcMatrixNotSquareD0Ev(%"class.SparseMatrix<double>::ExcMatrixNotSquare"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcMatrixNotSquare"*, align 8
  store %"class.SparseMatrix<double>::ExcMatrixNotSquare"* %0, %"class.SparseMatrix<double>::ExcMatrixNotSquare"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcMatrixNotSquare"*, %"class.SparseMatrix<double>::ExcMatrixNotSquare"** %2, align 8
  call void @_ZN12SparseMatrixIdE18ExcMatrixNotSquareD2Ev(%"class.SparseMatrix<double>::ExcMatrixNotSquare"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcMatrixNotSquare"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD2Ev(%"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*, align 8
  store %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"* %0, %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*, %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD0Ev(%"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*, align 8
  store %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"* %0, %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"*, %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"** %2, align 8
  call void @_ZN12SparseMatrixIdE28ExcDifferentSparsityPatternsD2Ev(%"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcDifferentSparsityPatterns"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD2Ev(%"class.SparseMatrix<double>::ExcInvalidConstructorCall"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcInvalidConstructorCall"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidConstructorCall"* %0, %"class.SparseMatrix<double>::ExcInvalidConstructorCall"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcInvalidConstructorCall"*, %"class.SparseMatrix<double>::ExcInvalidConstructorCall"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcInvalidConstructorCall"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD0Ev(%"class.SparseMatrix<double>::ExcInvalidConstructorCall"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcInvalidConstructorCall"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidConstructorCall"* %0, %"class.SparseMatrix<double>::ExcInvalidConstructorCall"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcInvalidConstructorCall"*, %"class.SparseMatrix<double>::ExcInvalidConstructorCall"** %2, align 8
  call void @_ZN12SparseMatrixIdE25ExcInvalidConstructorCallD2Ev(%"class.SparseMatrix<double>::ExcInvalidConstructorCall"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcInvalidConstructorCall"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD2Ev(%"class.SparseMatrix<double>::ExcSourceEqualsDestination"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcSourceEqualsDestination"*, align 8
  store %"class.SparseMatrix<double>::ExcSourceEqualsDestination"* %0, %"class.SparseMatrix<double>::ExcSourceEqualsDestination"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcSourceEqualsDestination"*, %"class.SparseMatrix<double>::ExcSourceEqualsDestination"** %2, align 8
  %4 = bitcast %"class.SparseMatrix<double>::ExcSourceEqualsDestination"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD0Ev(%"class.SparseMatrix<double>::ExcSourceEqualsDestination"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.SparseMatrix<double>::ExcSourceEqualsDestination"*, align 8
  store %"class.SparseMatrix<double>::ExcSourceEqualsDestination"* %0, %"class.SparseMatrix<double>::ExcSourceEqualsDestination"** %2, align 8
  %3 = load %"class.SparseMatrix<double>::ExcSourceEqualsDestination"*, %"class.SparseMatrix<double>::ExcSourceEqualsDestination"** %2, align 8
  call void @_ZN12SparseMatrixIdE26ExcSourceEqualsDestinationD2Ev(%"class.SparseMatrix<double>::ExcSourceEqualsDestination"* %3) #2
  %4 = bitcast %"class.SparseMatrix<double>::ExcSourceEqualsDestination"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN18StandardExceptions5ExcIOD0Ev(%"class.StandardExceptions::ExcIO"*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.StandardExceptions::ExcIO"*, align 8
  store %"class.StandardExceptions::ExcIO"* %0, %"class.StandardExceptions::ExcIO"** %2, align 8
  %3 = load %"class.StandardExceptions::ExcIO"*, %"class.StandardExceptions::ExcIO"** %2, align 8
  call void @_ZN18StandardExceptions5ExcIOD2Ev(%"class.StandardExceptions::ExcIO"* %3) #2
  %4 = bitcast %"class.StandardExceptions::ExcIO"* %3 to i8*
  call void @_ZdlPv(i8* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* dereferenceable(4), i32) #0 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  ret i32* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZStcoSt13_Ios_Fmtflags(i32) #5 comdat {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* dereferenceable(4), i32) #0 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  ret i32* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZStanSt13_Ios_FmtflagsS_(i32, i32) #5 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZStorSt13_Ios_FmtflagsS_(i32, i32) #5 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = or i32 %5, %6
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @sqrtf(float) #8

declare void @_ZNK11Subscriptor9subscribeEv(%class.Subscriptor*) #1

declare void @_ZNK11Subscriptor11unsubscribeEv(%class.Subscriptor*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8), double*) #5 comdat {
  %3 = alloca double**, align 8
  %4 = alloca double*, align 8
  store double** %0, double*** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  ret double* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt10__fill_n_aIPdjdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double*, i32, double* dereferenceable(8)) #5 comdat {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %9 = load double*, double** %6, align 8
  %10 = load double, double* %9, align 8
  store double %10, double* %7, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  br label %12

; <label>:12:                                     ; preds = %18, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %12
  %16 = load double, double* %7, align 8
  %17 = load double*, double** %4, align 8
  store double %16, double* %17, align 8
  br label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = load double*, double** %4, align 8
  %22 = getelementptr inbounds double, double* %21, i32 1
  store double* %22, double** %4, align 8
  br label %12

; <label>:23:                                     ; preds = %12
  %24 = load double*, double** %4, align 8
  ret double* %24
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double*) #5 comdat {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt10__fill_n_aIPdjiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double*, i32, i32* dereferenceable(4)) #5 comdat {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  br label %12

; <label>:12:                                     ; preds = %19, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = sitofp i32 %16 to double
  %18 = load double*, double** %4, align 8
  store double %17, double* %18, align 8
  br label %19

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %8, align 4
  %22 = load double*, double** %4, align 8
  %23 = getelementptr inbounds double, double* %22, i32 1
  store double* %23, double** %4, align 8
  br label %12

; <label>:24:                                     ; preds = %12
  %25 = load double*, double** %4, align 8
  ret double* %25
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt9binder2ndISt12not_equal_toIdEEC2ERKS1_RKd(%"class.std::binder2nd"*, %"struct.std::not_equal_to"* dereferenceable(1), double* dereferenceable(8)) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"class.std::binder2nd"*, align 8
  %5 = alloca %"struct.std::not_equal_to"*, align 8
  %6 = alloca double*, align 8
  store %"class.std::binder2nd"* %0, %"class.std::binder2nd"** %4, align 8
  store %"struct.std::not_equal_to"* %1, %"struct.std::not_equal_to"** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load %"class.std::binder2nd"*, %"class.std::binder2nd"** %4, align 8
  %8 = bitcast %"class.std::binder2nd"* %7 to %"struct.std::unary_function"*
  %9 = getelementptr inbounds %"class.std::binder2nd", %"class.std::binder2nd"* %7, i32 0, i32 0
  %10 = load %"struct.std::not_equal_to"*, %"struct.std::not_equal_to"** %5, align 8
  %11 = getelementptr inbounds %"class.std::binder2nd", %"class.std::binder2nd"* %7, i32 0, i32 1
  %12 = load double*, double** %6, align 8
  %13 = load double, double* %12, align 8
  store double %13, double* %11, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt10__count_ifIPdN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_(double*, double*, double) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_pred"* %4 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = bitcast i8* %9 to double*
  store double %2, double* %10, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

; <label>:11:                                     ; preds = %22, %3
  %12 = load double*, double** %5, align 8
  %13 = load double*, double** %6, align 8
  %14 = icmp ne double* %12, %13
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %11
  %16 = load double*, double** %5, align 8
  %17 = call zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEclIPdEEbT_(%"struct.__gnu_cxx::__ops::_Iter_pred"* %4, double* %16)
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %7, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %15
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load double*, double** %5, align 8
  %24 = getelementptr inbounds double, double* %23, i32 1
  store double* %24, double** %5, align 8
  br label %11

; <label>:25:                                     ; preds = %11
  %26 = load i64, i64* %7, align 8
  ret i64 %26
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9__gnu_cxx5__ops11__pred_iterISt9binder2ndISt12not_equal_toIdEEEENS0_10_Iter_predIT_EES7_(double) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  %3 = alloca %"class.std::binder2nd", align 8
  %4 = alloca %"class.std::binder2nd", align 8
  %5 = bitcast %"class.std::binder2nd"* %3 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to double*
  store double %0, double* %7, align 8
  %8 = bitcast %"class.std::binder2nd"* %4 to i8*
  %9 = bitcast %"class.std::binder2nd"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = bitcast %"class.std::binder2nd"* %4 to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 8
  %12 = bitcast i8* %11 to double*
  %13 = load double, double* %12, align 8
  call void @_ZN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEC2ES5_(%"struct.__gnu_cxx::__ops::_Iter_pred"* %2, double %13)
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_pred"* %2 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  %16 = bitcast i8* %15 to double*
  %17 = load double, double* %16, align 8
  ret double %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEclIPdEEbT_(%"struct.__gnu_cxx::__ops::_Iter_pred"*, double*) #0 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred"*, align 8
  %4 = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_pred"* %0, %"struct.__gnu_cxx::__ops::_Iter_pred"** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_pred"*, %"struct.__gnu_cxx::__ops::_Iter_pred"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_pred", %"struct.__gnu_cxx::__ops::_Iter_pred"* %5, i32 0, i32 0
  %7 = load double*, double** %4, align 8
  %8 = call zeroext i1 @_ZNKSt9binder2ndISt12not_equal_toIdEEclERd(%"class.std::binder2nd"* %6, double* dereferenceable(8) %7)
  ret i1 %8
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZNKSt9binder2ndISt12not_equal_toIdEEclERd(%"class.std::binder2nd"*, double* dereferenceable(8)) #0 comdat align 2 {
  %3 = alloca %"class.std::binder2nd"*, align 8
  %4 = alloca double*, align 8
  store %"class.std::binder2nd"* %0, %"class.std::binder2nd"** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %"class.std::binder2nd"*, %"class.std::binder2nd"** %3, align 8
  %6 = getelementptr inbounds %"class.std::binder2nd", %"class.std::binder2nd"* %5, i32 0, i32 0
  %7 = load double*, double** %4, align 8
  %8 = getelementptr inbounds %"class.std::binder2nd", %"class.std::binder2nd"* %5, i32 0, i32 1
  %9 = call zeroext i1 @_ZNKSt12not_equal_toIdEclERKdS2_(%"struct.std::not_equal_to"* %6, double* dereferenceable(8) %7, double* dereferenceable(8) %8)
  ret i1 %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt12not_equal_toIdEclERKdS2_(%"struct.std::not_equal_to"*, double* dereferenceable(8), double* dereferenceable(8)) #5 comdat align 2 {
  %4 = alloca %"struct.std::not_equal_to"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store %"struct.std::not_equal_to"* %0, %"struct.std::not_equal_to"** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load %"struct.std::not_equal_to"*, %"struct.std::not_equal_to"** %4, align 8
  %8 = load double*, double** %5, align 8
  %9 = load double, double* %8, align 8
  %10 = load double*, double** %6, align 8
  %11 = load double, double* %10, align 8
  %12 = fcmp une double %9, %11
  ret i1 %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops10_Iter_predISt9binder2ndISt12not_equal_toIdEEEC2ES5_(%"struct.__gnu_cxx::__ops::_Iter_pred"*, double) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::binder2nd", align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred"*, align 8
  %5 = bitcast %"class.std::binder2nd"* %3 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to double*
  store double %1, double* %7, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_pred"* %0, %"struct.__gnu_cxx::__ops::_Iter_pred"** %4, align 8
  %8 = load %"struct.__gnu_cxx::__ops::_Iter_pred"*, %"struct.__gnu_cxx::__ops::_Iter_pred"** %4, align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_pred", %"struct.__gnu_cxx::__ops::_Iter_pred"* %8, i32 0, i32 0
  %10 = bitcast %"class.std::binder2nd"* %9 to i8*
  %11 = bitcast %"class.std::binder2nd"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  ret void
}

declare void @_ZN13ExceptionBase9SetFieldsEPKciS1_S1_S1_(%class.ExceptionBase*, i8*, i32, i8*, i8*, i8*) #1

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12SparseMatrixIdE15ExcInvalidIndexC2ERKS1_(%"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"* dereferenceable(56)) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex"*, align 8
  %4 = alloca %"class.SparseMatrix<double>::ExcInvalidIndex"*, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex"* %0, %"class.SparseMatrix<double>::ExcInvalidIndex"** %3, align 8
  store %"class.SparseMatrix<double>::ExcInvalidIndex"* %1, %"class.SparseMatrix<double>::ExcInvalidIndex"** %4, align 8
  %5 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %3, align 8
  %6 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %5 to %class.ExceptionBase*
  %7 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %4, align 8
  %8 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %7 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseC2ERKS_(%class.ExceptionBase* %6, %class.ExceptionBase* dereferenceable(48) %8) #2
  %9 = bitcast %"class.SparseMatrix<double>::ExcInvalidIndex"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN12SparseMatrixIdE15ExcInvalidIndexE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex", %"class.SparseMatrix<double>::ExcInvalidIndex"* %5, i32 0, i32 1
  %11 = load %"class.SparseMatrix<double>::ExcInvalidIndex"*, %"class.SparseMatrix<double>::ExcInvalidIndex"** %4, align 8
  %12 = getelementptr inbounds %"class.SparseMatrix<double>::ExcInvalidIndex", %"class.SparseMatrix<double>::ExcInvalidIndex"* %11, i32 0, i32 1
  %13 = bitcast i32* %10 to i8*
  %14 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  ret void
}

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN13ExceptionBaseC2ERKS_(%class.ExceptionBase*, %class.ExceptionBase* dereferenceable(48)) unnamed_addr #5 comdat align 2 {
  %3 = alloca %class.ExceptionBase*, align 8
  %4 = alloca %class.ExceptionBase*, align 8
  store %class.ExceptionBase* %0, %class.ExceptionBase** %3, align 8
  store %class.ExceptionBase* %1, %class.ExceptionBase** %4, align 8
  %5 = load %class.ExceptionBase*, %class.ExceptionBase** %3, align 8
  %6 = bitcast %class.ExceptionBase* %5 to %"class.std::exception"*
  %7 = load %class.ExceptionBase*, %class.ExceptionBase** %4, align 8
  %8 = bitcast %class.ExceptionBase* %7 to %"class.std::exception"*
  call void @_ZNSt9exceptionC2ERKS_(%"class.std::exception"* %6, %"class.std::exception"* dereferenceable(8) %8) #2
  %9 = bitcast %class.ExceptionBase* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTV13ExceptionBase, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = getelementptr inbounds %class.ExceptionBase, %class.ExceptionBase* %5, i32 0, i32 1
  %11 = load %class.ExceptionBase*, %class.ExceptionBase** %4, align 8
  %12 = getelementptr inbounds %class.ExceptionBase, %class.ExceptionBase* %11, i32 0, i32 1
  %13 = bitcast i8** %10 to i8*
  %14 = bitcast i8** %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 40, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt9exceptionC2ERKS_(%"class.std::exception"*, %"class.std::exception"* dereferenceable(8)) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::exception"*, align 8
  %4 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %3, align 8
  store %"class.std::exception"* %1, %"class.std::exception"** %4, align 8
  %5 = load %"class.std::exception"*, %"class.std::exception"** %3, align 8
  %6 = bitcast %"class.std::exception"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9exception, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6VectorIdE6reinitEjb(%class.Vector*, i32, i1 zeroext) #0 comdat align 2 {
  %4 = alloca %class.Vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %class.Vector* %0, %class.Vector** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  %8 = load %class.Vector*, %class.Vector** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 3
  %13 = load double*, double** %12, align 8
  %14 = icmp ne double* %13, null
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 3
  %17 = load double*, double** %16, align 8
  %18 = icmp eq double* %17, null
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %15
  %20 = bitcast double* %17 to i8*
  call void @_ZdaPv(i8* %20) #12
  br label %21

; <label>:21:                                     ; preds = %19, %15
  br label %22

; <label>:22:                                     ; preds = %21, %11
  %23 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 3
  store double* null, double** %23, align 8
  %24 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 2
  store i32 0, i32* %25, align 4
  br label %63

; <label>:26:                                     ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %54

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 3
  %33 = load double*, double** %32, align 8
  %34 = icmp ne double* %33, null
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 3
  %37 = load double*, double** %36, align 8
  %38 = icmp eq double* %37, null
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %35
  %40 = bitcast double* %37 to i8*
  call void @_ZdaPv(i8* %40) #12
  br label %41

; <label>:41:                                     ; preds = %39, %35
  br label %42

; <label>:42:                                     ; preds = %41, %31
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %44, i64 8)
  %46 = extractvalue { i64, i1 } %45, 1
  %47 = extractvalue { i64, i1 } %45, 0
  %48 = select i1 %46, i64 -1, i64 %47
  %49 = call i8* @_Znam(i64 %48) #13
  %50 = bitcast i8* %49 to double*
  %51 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 3
  store double* %50, double** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  br label %54

; <label>:54:                                     ; preds = %42, %26
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds %class.Vector, %class.Vector* %8, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = load i8, i8* %6, align 1
  %58 = trunc i8 %57 to i1
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %54
  %62 = call dereferenceable(24) %class.Vector* @_ZN6VectorIdEaSEd(%class.Vector* %8, double 0.000000e+00)
  br label %63

; <label>:63:                                     ; preds = %61, %54, %22
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6VectorIdED0Ev(%class.Vector*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.Vector*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.Vector* %0, %class.Vector** %2, align 8
  %5 = load %class.Vector*, %class.Vector** %2, align 8
  invoke void @_ZN6VectorIdED2Ev(%class.Vector* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.Vector* %5 to i8*
  call void @_ZdlPv(i8* %7) #12
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.Vector* %5 to i8*
  call void @_ZdlPv(i8* %12) #12
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9internals21SparseMatrixIterators8AccessorIdLb1EEC2EPK12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Accessor"*, %class.SparseMatrix*, i32, i32) unnamed_addr #0 comdat align 2 {
  %5 = alloca %"class.internals::SparseMatrixIterators::Accessor"*, align 8
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %"class.internals::SparseMatrixIterators::Accessor"* %0, %"class.internals::SparseMatrixIterators::Accessor"** %5, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %"class.internals::SparseMatrixIterators::Accessor"*, %"class.internals::SparseMatrixIterators::Accessor"** %5, align 8
  %10 = bitcast %"class.internals::SparseMatrixIterators::Accessor"* %9 to %"class.internals::SparsityPatternIterators::Accessor"*
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %12 = call dereferenceable(72) %class.SparsityPattern* @_ZNK12SparseMatrixIdE20get_sparsity_patternEv(%class.SparseMatrix* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  call void @_ZN9internals24SparsityPatternIterators8AccessorC2EPK15SparsityPatternjj(%"class.internals::SparsityPatternIterators::Accessor"* %10, %class.SparsityPattern* %12, i32 %13, i32 %14)
  %15 = getelementptr inbounds %"class.internals::SparseMatrixIterators::Accessor", %"class.internals::SparseMatrixIterators::Accessor"* %9, i32 0, i32 1
  %16 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  store %class.SparseMatrix* %16, %class.SparseMatrix** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9internals24SparsityPatternIterators8AccessorC2EPK15SparsityPatternjj(%"class.internals::SparsityPatternIterators::Accessor"*, %class.SparsityPattern*, i32, i32) unnamed_addr #5 comdat align 2 {
  %5 = alloca %"class.internals::SparsityPatternIterators::Accessor"*, align 8
  %6 = alloca %class.SparsityPattern*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %"class.internals::SparsityPatternIterators::Accessor"* %0, %"class.internals::SparsityPatternIterators::Accessor"** %5, align 8
  store %class.SparsityPattern* %1, %class.SparsityPattern** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %"class.internals::SparsityPatternIterators::Accessor"*, %"class.internals::SparsityPatternIterators::Accessor"** %5, align 8
  %10 = getelementptr inbounds %"class.internals::SparsityPatternIterators::Accessor", %"class.internals::SparsityPatternIterators::Accessor"* %9, i32 0, i32 0
  %11 = load %class.SparsityPattern*, %class.SparsityPattern** %6, align 8
  store %class.SparsityPattern* %11, %class.SparsityPattern** %10, align 8
  %12 = getelementptr inbounds %"class.internals::SparsityPatternIterators::Accessor", %"class.internals::SparsityPatternIterators::Accessor"* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %"class.internals::SparsityPatternIterators::Accessor", %"class.internals::SparsityPatternIterators::Accessor"* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9internals21SparseMatrixIterators8AccessorIdLb0EEC2EP12SparseMatrixIdEjj(%"class.internals::SparseMatrixIterators::Accessor.1"*, %class.SparseMatrix*, i32, i32) unnamed_addr #0 comdat align 2 {
  %5 = alloca %"class.internals::SparseMatrixIterators::Accessor.1"*, align 8
  %6 = alloca %class.SparseMatrix*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %"class.internals::SparseMatrixIterators::Accessor.1"* %0, %"class.internals::SparseMatrixIterators::Accessor.1"** %5, align 8
  store %class.SparseMatrix* %1, %class.SparseMatrix** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %"class.internals::SparseMatrixIterators::Accessor.1"*, %"class.internals::SparseMatrixIterators::Accessor.1"** %5, align 8
  %10 = bitcast %"class.internals::SparseMatrixIterators::Accessor.1"* %9 to %"class.internals::SparsityPatternIterators::Accessor"*
  %11 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  %12 = call dereferenceable(72) %class.SparsityPattern* @_ZNK12SparseMatrixIdE20get_sparsity_patternEv(%class.SparseMatrix* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  call void @_ZN9internals24SparsityPatternIterators8AccessorC2EPK15SparsityPatternjj(%"class.internals::SparsityPatternIterators::Accessor"* %10, %class.SparsityPattern* %12, i32 %13, i32 %14)
  %15 = getelementptr inbounds %"class.internals::SparseMatrixIterators::Accessor.1", %"class.internals::SparseMatrixIterators::Accessor.1"* %9, i32 0, i32 1
  %16 = load %class.SparseMatrix*, %class.SparseMatrix** %6, align 8
  store %class.SparseMatrix* %16, %class.SparseMatrix** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN18StandardExceptions5ExcIOC2ERKS0_(%"class.StandardExceptions::ExcIO"*, %"class.StandardExceptions::ExcIO"* dereferenceable(48)) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.StandardExceptions::ExcIO"*, align 8
  %4 = alloca %"class.StandardExceptions::ExcIO"*, align 8
  store %"class.StandardExceptions::ExcIO"* %0, %"class.StandardExceptions::ExcIO"** %3, align 8
  store %"class.StandardExceptions::ExcIO"* %1, %"class.StandardExceptions::ExcIO"** %4, align 8
  %5 = load %"class.StandardExceptions::ExcIO"*, %"class.StandardExceptions::ExcIO"** %3, align 8
  %6 = bitcast %"class.StandardExceptions::ExcIO"* %5 to %class.ExceptionBase*
  %7 = load %"class.StandardExceptions::ExcIO"*, %"class.StandardExceptions::ExcIO"** %4, align 8
  %8 = bitcast %"class.StandardExceptions::ExcIO"* %7 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseC2ERKS_(%class.ExceptionBase* %6, %class.ExceptionBase* dereferenceable(48) %8) #2
  %9 = bitcast %"class.StandardExceptions::ExcIO"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN18StandardExceptions5ExcIOE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt14__copy_move_a2ILb0EPfPdET1_T0_S3_S2_(float*, float*, double*) #0 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca double*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load float*, float** %4, align 8
  %8 = call float* @_ZSt12__niter_baseIPfET_S1_(float* %7)
  %9 = load float*, float** %5, align 8
  %10 = call float* @_ZSt12__niter_baseIPfET_S1_(float* %9)
  %11 = load double*, double** %6, align 8
  %12 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %11)
  %13 = call double* @_ZSt13__copy_move_aILb0EPfPdET1_T0_S3_S2_(float* %8, float* %10, double* %12)
  %14 = call double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8) %6, double* %13)
  ret double* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float* @_ZSt12__miter_baseIPfET_S1_(float*) #5 comdat {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  ret float* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13__copy_move_aILb0EPfPdET1_T0_S3_S2_(float*, float*, double*) #0 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8, align 1
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store double* %2, double** %6, align 8
  store i8 0, i8* %7, align 1
  %8 = load float*, float** %4, align 8
  %9 = load float*, float** %5, align 8
  %10 = load double*, double** %6, align 8
  %11 = call double* @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPfPdEET0_T_S6_S5_(float* %8, float* %9, double* %10)
  ret double* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float* @_ZSt12__niter_baseIPfET_S1_(float*) #5 comdat {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  ret float* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPfPdEET0_T_S6_S5_(float*, float*, double*) #5 comdat align 2 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store double* %2, double** %6, align 8
  %8 = load float*, float** %5, align 8
  %9 = load float*, float** %4, align 8
  %10 = ptrtoint float* %8 to i64
  %11 = ptrtoint float* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 4
  store i64 %13, i64* %7, align 8
  br label %14

; <label>:14:                                     ; preds = %26, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %14
  %18 = load float*, float** %4, align 8
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = load double*, double** %6, align 8
  store double %20, double* %21, align 8
  %22 = load float*, float** %4, align 8
  %23 = getelementptr inbounds float, float* %22, i32 1
  store float* %23, float** %4, align 8
  %24 = load double*, double** %6, align 8
  %25 = getelementptr inbounds double, double* %24, i32 1
  store double* %25, double** %6, align 8
  br label %26

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %7, align 8
  br label %14

; <label>:29:                                     ; preds = %14
  %30 = load double*, double** %6, align 8
  ret double* %30
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNK5TableILi2EfE6n_rowsEv(%class.Table*) #0 comdat align 2 {
  %2 = alloca %class.Table*, align 8
  store %class.Table* %0, %class.Table** %2, align 8
  %3 = load %class.Table*, %class.Table** %2, align 8
  %4 = bitcast %class.Table* %3 to %class.TableBase*
  %5 = getelementptr inbounds %class.TableBase, %class.TableBase* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 0)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase*, i32) #5 comdat align 2 {
  %3 = alloca %class.TableIndicesBase*, align 8
  %4 = alloca i32, align 4
  store %class.TableIndicesBase* %0, %class.TableIndicesBase** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.TableIndicesBase*, %class.TableIndicesBase** %3, align 8
  %6 = getelementptr inbounds %class.TableIndicesBase, %class.TableIndicesBase* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK5TableILi2EfE6n_colsEv(%class.Table*) #5 comdat align 2 {
  %2 = alloca %class.Table*, align 8
  store %class.Table* %0, %class.Table** %2, align 8
  %3 = load %class.Table*, %class.Table** %2, align 8
  %4 = bitcast %class.Table* %3 to %class.TableBase*
  %5 = getelementptr inbounds %class.TableBase, %class.TableBase* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 1)
  ret i32 %7
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double*, double*, double*) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %7)
  %9 = load double*, double** %5, align 8
  %10 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %9)
  %11 = load double*, double** %6, align 8
  %12 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %11)
  %13 = call double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double* %8, double* %10, double* %12)
  %14 = call double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8) %6, double* %13)
  ret double* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__miter_baseIPdET_S1_(double*) #5 comdat {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  ret double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double*, double*, double*) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8, align 1
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load double*, double** %4, align 8
  %9 = load double*, double** %5, align 8
  %10 = load double*, double** %6, align 8
  %11 = call double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %8, double* %9, double* %10)
  ret double* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double*, double*, double*) #5 comdat align 2 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %8 = load double*, double** %5, align 8
  %9 = load double*, double** %4, align 8
  %10 = ptrtoint double* %8 to i64
  %11 = ptrtoint double* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %3
  %17 = load double*, double** %6, align 8
  %18 = bitcast double* %17 to i8*
  %19 = load double*, double** %4, align 8
  %20 = bitcast double* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %22, i32 8, i1 false)
  br label %23

; <label>:23:                                     ; preds = %16, %3
  %24 = load double*, double** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds double, double* %24, i64 %25
  ret double* %26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK5TableILi2EdE6n_rowsEv(%class.Table.5*) #5 comdat align 2 {
  %2 = alloca %class.Table.5*, align 8
  store %class.Table.5* %0, %class.Table.5** %2, align 8
  %3 = load %class.Table.5*, %class.Table.5** %2, align 8
  %4 = bitcast %class.Table.5* %3 to %class.TableBase.6*
  %5 = getelementptr inbounds %class.TableBase.6, %class.TableBase.6* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 0)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK5TableILi2EdE6n_colsEv(%class.Table.5*) #5 comdat align 2 {
  %2 = alloca %class.Table.5*, align 8
  store %class.Table.5* %0, %class.Table.5** %2, align 8
  %3 = load %class.Table.5*, %class.Table.5** %2, align 8
  %4 = bitcast %class.Table.5* %3 to %class.TableBase.6*
  %5 = getelementptr inbounds %class.TableBase.6, %class.TableBase.6* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 1)
  ret i32 %7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIPffEvT_S1_RKT0_(float*, float*, float* dereferenceable(4)) #0 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %4, align 8
  %8 = call float* @_ZSt12__niter_baseIPfET_S1_(float* %7)
  %9 = load float*, float** %5, align 8
  %10 = call float* @_ZSt12__niter_baseIPfET_S1_(float* %9)
  %11 = load float*, float** %6, align 8
  call void @_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(float* %8, float* %10, float* dereferenceable(4) %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float* @_ZN6VectorIfE3endEv(%class.Vector.10*) #5 comdat align 2 {
  %2 = alloca %class.Vector.10*, align 8
  store %class.Vector.10* %0, %class.Vector.10** %2, align 8
  %3 = load %class.Vector.10*, %class.Vector.10** %2, align 8
  %4 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %3, i32 0, i32 3
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds float, float* %5, i64 %8
  ret float* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(float*, float*, float* dereferenceable(4)) #5 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %8 = load float*, float** %6, align 8
  %9 = load float, float* %8, align 4
  store float %9, float* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %17, %3
  %11 = load float*, float** %4, align 8
  %12 = load float*, float** %5, align 8
  %13 = icmp ne float* %11, %12
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %10
  %15 = load float, float* %7, align 4
  %16 = load float*, float** %4, align 8
  store float %15, float* %16, align 4
  br label %17

; <label>:17:                                     ; preds = %14
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i32 1
  store float* %19, float** %4, align 8
  br label %10

; <label>:20:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK12BlockIndices15global_to_localEj(%class.BlockIndices*, i32) #0 comdat align 2 {
  %3 = alloca %"struct.std::pair", align 4
  %4 = alloca %class.BlockIndices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.BlockIndices* %0, %class.BlockIndices** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %class.BlockIndices*, %class.BlockIndices** %4, align 8
  %8 = getelementptr inbounds %class.BlockIndices, %class.BlockIndices* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub i32 %9, 1
  store i32 %10, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %19, %2
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %class.BlockIndices, %class.BlockIndices* %7, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %13, i64 %15)
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %6, align 4
  br label %11

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %class.BlockIndices, %class.BlockIndices* %7, i32 0, i32 1
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = call dereferenceable(4) i32* @_ZNKSt6vectorIjSaIjEEixEm(%"class.std::vector.11"* %25, i64 %27)
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %24, %29
  %31 = call i64 @_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_(i32 %23, i32 %30)
  %32 = bitcast %"struct.std::pair"* %3 to i64*
  store i64 %31, i64* %32, align 4
  %33 = bitcast %"struct.std::pair"* %3 to i64*
  %34 = load i64, i64* %33, align 4
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Vector.10* @_ZNKSt6vectorI6VectorIfESaIS1_EEixEm(%"class.std::vector"*, i64) #5 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data", %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Vector.10*, %class.Vector.10** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %10, i64 %11
  ret %class.Vector.10* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_(i32, i32) #0 comdat {
  %3 = alloca %"struct.std::pair", align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  call void @_ZNSt4pairIjjEC2ERKjS2_(%"struct.std::pair"* %3, i32* dereferenceable(4) %4, i32* dereferenceable(4) %5)
  %6 = bitcast %"struct.std::pair"* %3 to i64*
  %7 = load i64, i64* %6, align 4
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairIjjEC2ERKjS2_(%"struct.std::pair"*, i32* dereferenceable(4), i32* dereferenceable(4)) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %8 = bitcast %"struct.std::pair"* %7 to %"class.std::__pair_base"*
  %9 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %7, i32 0, i32 0
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %7, i32 0, i32 1
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EEC2ERKS2_(%"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"* dereferenceable(32)) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.internal::BlockVectorIterators::Iterator"*, align 8
  %4 = alloca %"class.internal::BlockVectorIterators::Iterator"*, align 8
  store %"class.internal::BlockVectorIterators::Iterator"* %0, %"class.internal::BlockVectorIterators::Iterator"** %3, align 8
  store %"class.internal::BlockVectorIterators::Iterator"* %1, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %5 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %3, align 8
  %6 = bitcast %"class.internal::BlockVectorIterators::Iterator"* %5 to %"struct.std::iterator"*
  %7 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %5, i32 0, i32 0
  %8 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %9 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %8, i32 0, i32 0
  %10 = load %class.BlockVector*, %class.BlockVector** %9, align 8
  store %class.BlockVector* %10, %class.BlockVector** %7, align 8
  %11 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %5, i32 0, i32 1
  %12 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %13 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %5, i32 0, i32 2
  %16 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %17 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %5, i32 0, i32 3
  %20 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %21 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %5, i32 0, i32 4
  %24 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %25 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %5, i32 0, i32 5
  %28 = load %"class.internal::BlockVectorIterators::Iterator"*, %"class.internal::BlockVectorIterators::Iterator"** %4, align 8
  %29 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator", %"class.internal::BlockVectorIterators::Iterator"* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 8
  ret void
}

declare void @_ZN8internal20BlockVectorIterators8IteratorIfLb0EE12move_forwardEv(%"class.internal::BlockVectorIterators::Iterator"*) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.Vector.10* @_ZN11BlockVectorIfE5blockEj(%class.BlockVector*, i32) #0 comdat align 2 {
  %3 = alloca %class.BlockVector*, align 8
  %4 = alloca i32, align 4
  store %class.BlockVector* %0, %class.BlockVector** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.BlockVector*, %class.BlockVector** %3, align 8
  %6 = getelementptr inbounds %class.BlockVector, %class.BlockVector* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = call dereferenceable(24) %class.Vector.10* @_ZNSt6vectorI6VectorIfESaIS1_EEixEm(%"class.std::vector"* %6, i64 %8)
  ret %class.Vector.10* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Vector.10* @_ZNSt6vectorI6VectorIfESaIS1_EEixEm(%"class.std::vector"*, i64) #5 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data", %"struct.std::_Vector_base<Vector<float>, std::allocator<Vector<float> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Vector.10*, %class.Vector.10** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Vector.10, %class.Vector.10* %10, i64 %11
  ret %class.Vector.10* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIPddEvT_S1_RKT0_(double*, double*, double* dereferenceable(8)) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %7)
  %9 = load double*, double** %5, align 8
  %10 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %9)
  %11 = load double*, double** %6, align 8
  call void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double* %8, double* %10, double* dereferenceable(8) %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZN6VectorIdE3endEv(%class.Vector*) #5 comdat align 2 {
  %2 = alloca %class.Vector*, align 8
  store %class.Vector* %0, %class.Vector** %2, align 8
  %3 = load %class.Vector*, %class.Vector** %2, align 8
  %4 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 3
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds %class.Vector, %class.Vector* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, double* %5, i64 %8
  ret double* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double*, double*, double* dereferenceable(8)) #5 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %8 = load double*, double** %6, align 8
  %9 = load double, double* %8, align 8
  store double %9, double* %7, align 8
  br label %10

; <label>:10:                                     ; preds = %17, %3
  %11 = load double*, double** %4, align 8
  %12 = load double*, double** %5, align 8
  %13 = icmp ne double* %11, %12
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %10
  %15 = load double, double* %7, align 8
  %16 = load double*, double** %4, align 8
  store double %15, double* %16, align 8
  br label %17

; <label>:17:                                     ; preds = %14
  %18 = load double*, double** %4, align 8
  %19 = getelementptr inbounds double, double* %18, i32 1
  store double* %19, double** %4, align 8
  br label %10

; <label>:20:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Vector* @_ZNKSt6vectorI6VectorIdESaIS1_EEixEm(%"class.std::vector.17"*, i64) #5 comdat align 2 {
  %3 = alloca %"class.std::vector.17"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.17"* %0, %"class.std::vector.17"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.17"*, %"class.std::vector.17"** %3, align 8
  %6 = bitcast %"class.std::vector.17"* %5 to %"struct.std::_Vector_base.18"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.18", %"struct.std::_Vector_base.18"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data", %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Vector*, %class.Vector** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Vector, %class.Vector* %10, i64 %11
  ret %class.Vector* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EEC2ERKS2_(%"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"* dereferenceable(32)) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.internal::BlockVectorIterators::Iterator.23"*, align 8
  %4 = alloca %"class.internal::BlockVectorIterators::Iterator.23"*, align 8
  store %"class.internal::BlockVectorIterators::Iterator.23"* %0, %"class.internal::BlockVectorIterators::Iterator.23"** %3, align 8
  store %"class.internal::BlockVectorIterators::Iterator.23"* %1, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %5 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %3, align 8
  %6 = bitcast %"class.internal::BlockVectorIterators::Iterator.23"* %5 to %"struct.std::iterator.24"*
  %7 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %5, i32 0, i32 0
  %8 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %9 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %8, i32 0, i32 0
  %10 = load %class.BlockVector.16*, %class.BlockVector.16** %9, align 8
  store %class.BlockVector.16* %10, %class.BlockVector.16** %7, align 8
  %11 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %5, i32 0, i32 1
  %12 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %13 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %5, i32 0, i32 2
  %16 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %17 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %5, i32 0, i32 3
  %20 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %21 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %5, i32 0, i32 4
  %24 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %25 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %5, i32 0, i32 5
  %28 = load %"class.internal::BlockVectorIterators::Iterator.23"*, %"class.internal::BlockVectorIterators::Iterator.23"** %4, align 8
  %29 = getelementptr inbounds %"class.internal::BlockVectorIterators::Iterator.23", %"class.internal::BlockVectorIterators::Iterator.23"* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 8
  ret void
}

declare void @_ZN8internal20BlockVectorIterators8IteratorIdLb0EE12move_forwardEv(%"class.internal::BlockVectorIterators::Iterator.23"*) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.Vector* @_ZN11BlockVectorIdE5blockEj(%class.BlockVector.16*, i32) #0 comdat align 2 {
  %3 = alloca %class.BlockVector.16*, align 8
  %4 = alloca i32, align 4
  store %class.BlockVector.16* %0, %class.BlockVector.16** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.BlockVector.16*, %class.BlockVector.16** %3, align 8
  %6 = getelementptr inbounds %class.BlockVector.16, %class.BlockVector.16* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = call dereferenceable(24) %class.Vector* @_ZNSt6vectorI6VectorIdESaIS1_EEixEm(%"class.std::vector.17"* %6, i64 %8)
  ret %class.Vector* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Vector* @_ZNSt6vectorI6VectorIdESaIS1_EEixEm(%"class.std::vector.17"*, i64) #5 comdat align 2 {
  %3 = alloca %"class.std::vector.17"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.17"* %0, %"class.std::vector.17"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.17"*, %"class.std::vector.17"** %3, align 8
  %6 = bitcast %"class.std::vector.17"* %5 to %"struct.std::_Vector_base.18"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.18", %"struct.std::_Vector_base.18"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data", %"struct.std::_Vector_base<Vector<double>, std::allocator<Vector<double> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Vector*, %class.Vector** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Vector, %class.Vector* %10, i64 %11
  ret %class.Vector* %12
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_sparse_matrix.double.cc() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { builtin }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
