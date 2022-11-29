; ModuleID = 'host/ir_O0/dealII_fe_nedelec.ll'
source_filename = "fe_nedelec.cc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.FE_Nedelec = type { %class.FiniteElement.base, i32 }
%class.FiniteElement.base = type { %class.FiniteElementBase.base }
%class.FiniteElementBase.base = type <{ %class.Subscriptor, %class.FiniteElementData, [4 x i8], [8 x %class.FullMatrix], [8 x %class.FullMatrix], %class.FullMatrix, %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector", %"class.std::vector.7", %"class.std::vector.11", %"class.std::vector.16", %"class.std::vector.23", %"class.std::vector.28", i8 }>
%class.Subscriptor = type { i32 (...)**, i32, %"class.std::type_info"* }
%"class.std::type_info" = type { i32 (...)**, i8* }
%class.FiniteElementData = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%class.FullMatrix = type { %class.Table.base, [4 x i8] }
%class.Table.base = type { %class.TableBase.base }
%class.TableBase.base = type <{ %class.Subscriptor, double*, i32, %class.TableIndices }>
%class.TableIndices = type { %class.TableIndicesBase }
%class.TableIndicesBase = type { [2 x i32] }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::pair<std::pair<unsigned int, unsigned int>, unsigned int>, std::allocator<std::pair<std::pair<unsigned int, unsigned int>, unsigned int> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::pair<unsigned int, unsigned int>, unsigned int>, std::allocator<std::pair<std::pair<unsigned int, unsigned int>, unsigned int> > >::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::pair<unsigned int, unsigned int>, unsigned int>, std::allocator<std::pair<std::pair<unsigned int, unsigned int>, unsigned int> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::pair<unsigned int, unsigned int>, unsigned int>, std::allocator<std::pair<std::pair<unsigned int, unsigned int>, unsigned int> > >::_Vector_impl_data" = type { %"struct.std::pair.5"*, %"struct.std::pair.5"*, %"struct.std::pair.5"* }
%"struct.std::pair.5" = type { %"struct.std::pair", i32 }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"* }
%"class.std::vector.7" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", i64* }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ i64*, i32 }>
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl" }
%"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl" = type { %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data" = type { %class.Point*, %class.Point*, %class.Point* }
%class.Point = type { %class.Tensor }
%class.Tensor = type { [3 x double] }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl" }
%"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl" = type { %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data" = type { %class.Point.21*, %class.Point.21*, %class.Point.21* }
%class.Point.21 = type { %class.Tensor.22 }
%class.Tensor.22 = type { [2 x double] }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data" = type { %"class.std::vector.7"*, %"class.std::vector.7"*, %"class.std::vector.7"* }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data" = type { i32*, i32*, i32* }
%class.Tensor.33 = type { [3 x %class.Tensor] }
%"class.std::allocator.34" = type { i8 }
%"class.std::allocator.25" = type { i8 }
%class.FiniteElement = type { %class.FiniteElementBase.base, [7 x i8] }
%class.FiniteElementBase = type <{ %class.Subscriptor, %class.FiniteElementData, [4 x i8], [8 x %class.FullMatrix], [8 x %class.FullMatrix], %class.FullMatrix, %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector", %"class.std::vector.7", %"class.std::vector.11", %"class.std::vector.16", %"class.std::vector.23", %"class.std::vector.28", i8, [7 x i8] }>
%"class.std::allocator.30" = type { i8 }
%"class.__gnu_cxx::new_allocator.35" = type { i8 }
%"class.__gnu_cxx::new_allocator.26" = type { i8 }
%class.TableBase = type <{ %class.Subscriptor, double*, i32, %class.TableIndices, [4 x i8] }>
%class.Table = type { %class.TableBase.base, [4 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.Mapping<3>::InternalDataBase" = type <{ %class.Subscriptor, i32, i32, i32, i8, [3 x i8] }>
%class.Mapping = type { %class.Subscriptor }
%class.Quadrature = type { %class.Subscriptor, i32, %"class.std::vector.11", %"class.std::vector.40" }
%"class.std::vector.40" = type { %"struct.std::_Vector_base.41" }
%"struct.std::_Vector_base.41" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl_data" = type { double*, double*, double* }
%"class.FE_Nedelec<3>::InternalData" = type { %"class.FiniteElementBase<3>::InternalDataBase", %class.Table.50, %class.Table.54 }
%"class.FiniteElementBase<3>::InternalDataBase" = type { %"class.Mapping<3>::InternalDataBase.base", %"class.std::vector.45" }
%"class.Mapping<3>::InternalDataBase.base" = type <{ %class.Subscriptor, i32, i32, i32, i8 }>
%"class.std::vector.45" = type { %"struct.std::_Vector_base.46" }
%"struct.std::_Vector_base.46" = type { %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl" }
%"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl" = type { %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data" }
%"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data" = type { %class.FEValues**, %class.FEValues**, %class.FEValues** }
%class.FEValues = type { %class.FEValuesBase, %class.Quadrature }
%class.FEValuesBase = type { %class.FEValuesData.base, i32, i32, %class.TriaIterator, %class.SmartPointer.127, %class.SmartPointer.118, %class.SmartPointer.128, %class.SmartPointer.128 }
%class.FEValuesData.base = type <{ %class.Table, %class.Table.50, %class.Table.54, %"class.std::vector.40", %"class.std::vector.11", %"class.std::vector.11", %"class.std::vector.59", %"class.std::vector.28", i32 }>
%"class.std::vector.59" = type { %"struct.std::_Vector_base.60" }
%"struct.std::_Vector_base.60" = type { %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl" }
%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl" = type { %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data" = type { %class.Tensor*, %class.Tensor*, %class.Tensor* }
%class.TriaIterator = type { %class.TriaRawIterator }
%class.TriaRawIterator = type { %class.DoFCellAccessor }
%class.DoFCellAccessor = type { %class.DoFObjectAccessor }
%class.DoFObjectAccessor = type { %class.DoFAccessor, %class.CellAccessor }
%class.DoFAccessor = type { %class.DoFHandler* }
%class.DoFHandler = type { %class.Subscriptor, %class.SmartPointer, %class.SmartPointer.118, %"class.std::vector.119", i32, %"class.std::vector.28" }
%class.SmartPointer = type { %class.Triangulation* }
%class.Triangulation = type { %class.Subscriptor, %"class.std::vector.72", %"class.std::vector.11", %"class.std::vector.7", [255 x %class.Boundary*], i32, %struct.TriaNumberCache }
%"class.std::vector.72" = type { %"struct.std::_Vector_base.73" }
%"struct.std::_Vector_base.73" = type { %"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl" }
%"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl" = type { %"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl_data" }
%"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl_data" = type { %class.TriangulationLevel**, %class.TriangulationLevel**, %class.TriangulationLevel** }
%class.TriangulationLevel = type { %class.TriangulationLevel.77, %"struct.TriangulationLevel<3>::HexesData" }
%class.TriangulationLevel.77 = type { %class.TriangulationLevel.78, %"struct.TriangulationLevel<2>::QuadsData" }
%class.TriangulationLevel.78 = type { %class.TriangulationLevel.79, %"struct.TriangulationLevel<1>::LinesData" }
%class.TriangulationLevel.79 = type { %"class.std::vector.7", %"class.std::vector.7", %"class.std::vector.80", %"class.std::vector.28" }
%"class.std::vector.80" = type { %"struct.std::_Vector_base.81" }
%"struct.std::_Vector_base.81" = type { %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Vector_impl_data" = type { %"struct.std::pair.85"*, %"struct.std::pair.85"*, %"struct.std::pair.85"* }
%"struct.std::pair.85" = type opaque
%"struct.TriangulationLevel<1>::LinesData" = type { %"class.std::vector.86", %"class.std::vector.91", %"class.std::vector.7", %"class.std::vector.7", %"class.std::vector.96", %"class.std::vector.101" }
%"class.std::vector.86" = type { %"struct.std::_Vector_base.87" }
%"struct.std::_Vector_base.87" = type { %"struct.std::_Vector_base<Line, std::allocator<Line> >::_Vector_impl" }
%"struct.std::_Vector_base<Line, std::allocator<Line> >::_Vector_impl" = type { %"struct.std::_Vector_base<Line, std::allocator<Line> >::_Vector_impl_data" }
%"struct.std::_Vector_base<Line, std::allocator<Line> >::_Vector_impl_data" = type { %class.Line*, %class.Line*, %class.Line* }
%class.Line = type { [2 x i32] }
%"class.std::vector.91" = type { %"struct.std::_Vector_base.92" }
%"struct.std::_Vector_base.92" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.std::vector.96" = type { %"struct.std::_Vector_base.97" }
%"struct.std::_Vector_base.97" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char> >::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char> >::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char> >::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char> >::_Vector_impl_data" = type { i8*, i8*, i8* }
%"class.std::vector.101" = type { %"struct.std::_Vector_base.102" }
%"struct.std::_Vector_base.102" = type { %"struct.std::_Vector_base<void *, std::allocator<void *> >::_Vector_impl" }
%"struct.std::_Vector_base<void *, std::allocator<void *> >::_Vector_impl" = type { %"struct.std::_Vector_base<void *, std::allocator<void *> >::_Vector_impl_data" }
%"struct.std::_Vector_base<void *, std::allocator<void *> >::_Vector_impl_data" = type { i8**, i8**, i8** }
%"struct.TriangulationLevel<2>::QuadsData" = type { %"class.std::vector.106", %"class.std::vector.91", %"class.std::vector.7", %"class.std::vector.7", %"class.std::vector.96", %"class.std::vector.101" }
%"class.std::vector.106" = type { %"struct.std::_Vector_base.107" }
%"struct.std::_Vector_base.107" = type { %"struct.std::_Vector_base<Quad, std::allocator<Quad> >::_Vector_impl" }
%"struct.std::_Vector_base<Quad, std::allocator<Quad> >::_Vector_impl" = type { %"struct.std::_Vector_base<Quad, std::allocator<Quad> >::_Vector_impl_data" }
%"struct.std::_Vector_base<Quad, std::allocator<Quad> >::_Vector_impl_data" = type { %class.Quad*, %class.Quad*, %class.Quad* }
%class.Quad = type { [4 x i32] }
%"struct.TriangulationLevel<3>::HexesData" = type { %"class.std::vector.111", %"class.std::vector.91", %"class.std::vector.7", %"class.std::vector.7", %"class.std::vector.96", %"class.std::vector.101", %"class.std::vector.7" }
%"class.std::vector.111" = type { %"struct.std::_Vector_base.112" }
%"struct.std::_Vector_base.112" = type { %"struct.std::_Vector_base<Hexahedron, std::allocator<Hexahedron> >::_Vector_impl" }
%"struct.std::_Vector_base<Hexahedron, std::allocator<Hexahedron> >::_Vector_impl" = type { %"struct.std::_Vector_base<Hexahedron, std::allocator<Hexahedron> >::_Vector_impl_data" }
%"struct.std::_Vector_base<Hexahedron, std::allocator<Hexahedron> >::_Vector_impl_data" = type { %class.Hexahedron*, %class.Hexahedron*, %class.Hexahedron* }
%class.Hexahedron = type { [6 x i32] }
%class.Boundary = type opaque
%struct.TriaNumberCache = type { %struct.TriaNumberCache.116, i32, %"class.std::vector.28", i32, %"class.std::vector.28" }
%struct.TriaNumberCache.116 = type { %struct.TriaNumberCache.117, i32, %"class.std::vector.28", i32, %"class.std::vector.28" }
%struct.TriaNumberCache.117 = type { i32, %"class.std::vector.28", i32, %"class.std::vector.28" }
%"class.std::vector.119" = type { %"struct.std::_Vector_base.120" }
%"struct.std::_Vector_base.120" = type { %"struct.std::_Vector_base<DoFLevel<3> *, std::allocator<DoFLevel<3> *> >::_Vector_impl" }
%"struct.std::_Vector_base<DoFLevel<3> *, std::allocator<DoFLevel<3> *> >::_Vector_impl" = type { %"struct.std::_Vector_base<DoFLevel<3> *, std::allocator<DoFLevel<3> *> >::_Vector_impl_data" }
%"struct.std::_Vector_base<DoFLevel<3> *, std::allocator<DoFLevel<3> *> >::_Vector_impl_data" = type { %class.DoFLevel**, %class.DoFLevel**, %class.DoFLevel** }
%class.DoFLevel = type { %class.DoFLevel.124, %"class.std::vector.28" }
%class.DoFLevel.124 = type { %class.DoFLevel.125, %"class.std::vector.28" }
%class.DoFLevel.125 = type { %"class.std::vector.28" }
%class.CellAccessor = type { %class.TriaObjectAccessor }
%class.TriaObjectAccessor = type { %class.TriaAccessor }
%class.TriaAccessor = type { i32, i32, %class.Triangulation* }
%class.SmartPointer.127 = type { %class.Mapping* }
%class.SmartPointer.118 = type { %class.FiniteElement* }
%class.SmartPointer.128 = type { %"class.Mapping<3>::InternalDataBase"* }
%class.Table.50 = type { %class.TableBase.base.52, [4 x i8] }
%class.TableBase.base.52 = type <{ %class.Subscriptor, %class.Tensor*, i32, %class.TableIndices }>
%class.Table.54 = type { %class.TableBase.base.56, [4 x i8] }
%class.TableBase.base.56 = type <{ %class.Subscriptor, %class.Tensor.33*, i32, %class.TableIndices }>
%"class.internal::TableBaseAccessors::Accessor" = type { %class.TableBase.51*, %class.Tensor* }
%class.TableBase.51 = type <{ %class.Subscriptor, %class.Tensor*, i32, %class.TableIndices, [4 x i8] }>
%"class.internal::TableBaseAccessors::Accessor.58" = type { %class.TableBase.55*, %class.Tensor.33* }
%class.TableBase.55 = type <{ %class.Subscriptor, %class.Tensor.33*, i32, %class.TableIndices, [4 x i8] }>
%class.FEValuesData = type <{ %class.Table, %class.Table.50, %class.Table.54, %"class.std::vector.40", %"class.std::vector.11", %"class.std::vector.11", %"class.std::vector.59", %"class.std::vector.28", i32, [4 x i8] }>
%"class.std::allocator.61" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %class.Tensor* }
%"class.internal::TableBaseAccessors::Accessor.64" = type { %class.TableBase*, double* }
%"class.std::vector.65" = type { %"struct.std::_Vector_base.66" }
%"struct.std::_Vector_base.66" = type { %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl" }
%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl" = type { %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data" }
%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data" = type { %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33* }
%"class.std::allocator.67" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.70" = type { %class.Tensor.33* }
%"class.QProjector<3>::DataSetDescriptor" = type { i32 }
%"class.__gnu_cxx::new_allocator.62" = type { i8 }
%"class.__gnu_cxx::new_allocator.68" = type { i8 }
%class.Quadrature.126 = type { %class.Subscriptor, i32, %"class.std::vector.16", %"class.std::vector.40" }
%"struct.std::_Bit_reference" = type { i64*, i64 }
%"class.__gnu_cxx::new_allocator.31" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.129" = type { %class.Point* }
%"class.__gnu_cxx::__normal_iterator.130" = type { %class.Point.21* }
%"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension" = type { %class.ExceptionBase }
%class.ExceptionBase = type { %"class.std::exception", i8*, i32, i8*, i8*, i8* }
%"class.std::exception" = type { i32 (...)** }
%"class.std::allocator.47" = type { i8 }
%"class.__gnu_cxx::new_allocator.48" = type { i8 }
%"class.std::allocator.8" = type { i8 }
%"struct.std::_Bit_iterator_base" = type <{ i64*, i32, [4 x i8] }>
%"class.__gnu_cxx::new_allocator.9" = type { i8 }
%"struct.std::iterator" = type { i8 }
%"struct.std::_Bit_const_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.std::allocator.13" = type { i8 }
%"class.__gnu_cxx::new_allocator.14" = type { i8 }
%"class.std::allocator.18" = type { i8 }
%"class.__gnu_cxx::new_allocator.19" = type { i8 }

$_ZNK5PointILi3EEclEj = comdat any

$_ZN6TensorILi1ELi3EEC2ERA3_Kd = comdat any

$_ZN6TensorILi1ELi3EEC2Eb = comdat any

$_ZN6TensorILi2ELi3EEC2ERA3_A3_Kd = comdat any

$_ZN6TensorILi2ELi3EEC2Ev = comdat any

$_ZN10FE_NedelecILi3EEC5Ej = comdat any

$_ZN10FE_NedelecILi3EE14get_dpo_vectorEj = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSaISt6vectorIbSaIbEEEC2Ev = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_ = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSaISt6vectorIbSaIbEEED2Ev = comdat any

$_ZNSt6vectorIbSaIbEED2Ev = comdat any

$_ZNSaIbED2Ev = comdat any

$_ZNSt6vectorIjSaIjEED2Ev = comdat any

$_ZN10FE_NedelecILi3EE22initialize_constraintsEv = comdat any

$_ZN10FE_NedelecILi3EE20initialize_embeddingEv = comdat any

$_ZN10FE_NedelecILi3EE22initialize_restrictionEv = comdat any

$_ZN10FE_NedelecILi3EE30initialize_unit_support_pointsEv = comdat any

$_ZN10FE_NedelecILi3EE35initialize_unit_face_support_pointsEv = comdat any

$_ZNSt6vectorISt4pairIjjESaIS1_EEC2Ev = comdat any

$_ZNSt6vectorISt4pairIjjESaIS1_EE4swapERS3_ = comdat any

$_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev = comdat any

$_ZNK10FE_NedelecILi3EE8get_nameB5cxx11Ev = comdat any

$_ZNK10FE_NedelecILi3EE10get_degreeEv = comdat any

$_ZNK10FE_NedelecILi3EE15n_base_elementsEv = comdat any

$_ZNK10FE_NedelecILi3EE12base_elementEj = comdat any

$_ZNK10FE_NedelecILi3EE20element_multiplicityEj = comdat any

$_ZNK10FE_NedelecILi3EE19has_support_on_faceEjj = comdat any

$_ZNK10FE_NedelecILi3EE18memory_consumptionEv = comdat any

$_ZNK10FE_NedelecILi3EE5cloneEv = comdat any

$_ZNK10FE_NedelecILi3EE8get_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi3EE = comdat any

$_ZN10FE_NedelecILi3EE12InternalDataC2Ev = comdat any

$_Zor11UpdateFlagsS_ = comdat any

$_Zan11UpdateFlagsS_ = comdat any

$_ZN5TableILi2E6TensorILi1ELi3EEE6reinitEjj = comdat any

$_ZN5TableILi2E6TensorILi2ELi3EEE6reinitEjj = comdat any

$_ZN5TableILi2E6TensorILi1ELi3EEEixEj = comdat any

$_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEixEj = comdat any

$_ZN6TensorILi1ELi3EEixEj = comdat any

$_ZN5TableILi2E6TensorILi2ELi3EEEixEj = comdat any

$_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EEixEj = comdat any

$_ZN6TensorILi2ELi3EEixEj = comdat any

$_ZN6TensorILi1ELi3EEaSERKS0_ = comdat any

$_ZNK10FE_NedelecILi3EE14fill_fe_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEERK10QuadratureILi3EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE = comdat any

$_ZNK7MappingILi3EE16InternalDataBase20current_update_flagsEv = comdat any

$_ZNSaI6TensorILi1ELi3EEEC2Ev = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEC2EmRKS1_RKS2_ = comdat any

$_ZNSaI6TensorILi1ELi3EEED2Ev = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNKSt6vectorI6TensorILi1ELi3EESaIS1_EE4sizeEv = comdat any

$_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EE5beginEv = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEixEm = comdat any

$_ZN5TableILi2EdEixEj = comdat any

$_ZNK8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEixEj = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev = comdat any

$_ZNSaI6TensorILi2ELi3EEEC2Ev = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_ = comdat any

$_ZNSaI6TensorILi2ELi3EEED2Ev = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv = comdat any

$_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EE5beginEv = comdat any

$_Z9transposeRK6TensorILi2ELi3EE = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm = comdat any

$_ZN6TensorILi2ELi3EEaSERKS0_ = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev = comdat any

$_ZNK10FE_NedelecILi3EE19fill_fe_face_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRK10QuadratureILi2EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE = comdat any

$_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEptEv = comdat any

$_ZNK18TriaObjectAccessorILi3ELi3EE16face_orientationEj = comdat any

$_ZNK10FE_NedelecILi3EE22fill_fe_subface_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjjRK10QuadratureILi2EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE = comdat any

$_ZNSaIjEC2Ev = comdat any

$_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_ = comdat any

$_ZNSaIjED2Ev = comdat any

$_ZNSt6vectorIjSaIjEEixEm = comdat any

$_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE = comdat any

$_ZN10FullMatrixIdE4fillIdEEvPKT_ = comdat any

$_ZN5TableILi2EdE6reinitEjj = comdat any

$_ZN5TableILi2EdEclEjj = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EE6resizeEmS1_ = comdat any

$_ZN5PointILi3EEC2Ev = comdat any

$_ZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjj = comdat any

$_ZN12GeometryInfoILi3EE16unit_cell_vertexEj = comdat any

$_ZNK5PointILi3EEplERK6TensorILi1ELi3EE = comdat any

$_ZNK5PointILi3EEdvEd = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EEixEm = comdat any

$_ZN5PointILi3EEaSERKS0_ = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EE6resizeEmS1_ = comdat any

$_ZN5PointILi2EEC2Ev = comdat any

$_ZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjj = comdat any

$_ZN12GeometryInfoILi2EE16unit_cell_vertexEj = comdat any

$_ZNK5PointILi2EEplERK6TensorILi1ELi2EE = comdat any

$_ZNK5PointILi2EEdvEd = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EEixEm = comdat any

$_ZN5PointILi2EEaSERKS0_ = comdat any

$_ZNK10FE_NedelecILi3EE11update_onceE11UpdateFlags = comdat any

$_ZNK10FE_NedelecILi3EE11update_eachE11UpdateFlags = comdat any

$_ZoRR11UpdateFlagsS_ = comdat any

$_ZN10FE_NedelecILi3EED2Ev = comdat any

$_ZN10FE_NedelecILi3EED0Ev = comdat any

$_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD2Ev = comdat any

$_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD0Ev = comdat any

$_ZN17FiniteElementBaseILi3EE16InternalDataBaseC2Ev = comdat any

$_ZN5TableILi2E6TensorILi1ELi3EEEC2Ev = comdat any

$_ZN5TableILi2E6TensorILi2ELi3EEEC2Ev = comdat any

$_ZN5TableILi2E6TensorILi1ELi3EEED2Ev = comdat any

$_ZN10FE_NedelecILi3EE12InternalDataD2Ev = comdat any

$_ZN10FE_NedelecILi3EE12InternalDataD0Ev = comdat any

$_ZN7MappingILi3EE16InternalDataBase16clear_first_cellEv = comdat any

$_ZNSt6vectorIP8FEValuesILi3EESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP8FEValuesILi3EEEC2Ev = comdat any

$_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSaIP8FEValuesILi3EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP8FEValuesILi3EEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP8FEValuesILi3EEED2Ev = comdat any

$_ZN9TableBaseILi2E6TensorILi1ELi3EEEC2Ev = comdat any

$_ZN5TableILi2E6TensorILi1ELi3EEED0Ev = comdat any

$_ZN12TableIndicesILi2EEC2Ev = comdat any

$_ZN9TableBaseILi2E6TensorILi1ELi3EEED2Ev = comdat any

$_ZN9TableBaseILi2E6TensorILi1ELi3EEED0Ev = comdat any

$_ZN9TableBaseILi2E6TensorILi2ELi3EEEC2Ev = comdat any

$_ZN5TableILi2E6TensorILi2ELi3EEED2Ev = comdat any

$_ZN5TableILi2E6TensorILi2ELi3EEED0Ev = comdat any

$_ZN9TableBaseILi2E6TensorILi2ELi3EEED2Ev = comdat any

$_ZN9TableBaseILi2E6TensorILi2ELi3EEED0Ev = comdat any

$_ZNK6TensorILi2ELi3EEixEj = comdat any

$_ZNK6TensorILi1ELi3EEixEj = comdat any

$_ZN5PointILi3EEC2Eddd = comdat any

$_ZN5PointILi3EEC2ERKS0_ = comdat any

$_ZN5PointILi2EEC2Edd = comdat any

$_ZN5PointILi2EEC2ERKS0_ = comdat any

$_ZN6TensorILi1ELi2EEC2Eb = comdat any

$_ZN6TensorILi1ELi2EEC2ERKS0_ = comdat any

$_ZN6TensorILi1ELi2EEaSERKS0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIjEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIjED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIbEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIbED2Ev = comdat any

$_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIjSaIjEED2Ev = comdat any

$_ZSt8_DestroyIPjEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIjEjE10deallocateERS1_Pjm = comdat any

$_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm = comdat any

$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_initializeEm = comdat any

$_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSaImEC2IbEERKSaIT_E = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE = comdat any

$_ZNSaImED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2Ev = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_ = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

$_ZNSt18_Bit_iterator_baseC2EPmj = comdat any

$_ZN9__gnu_cxx13new_allocatorImED2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm = comdat any

$_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm = comdat any

$_ZSt11__addressofImEPT_RS0_ = comdat any

$_ZNSt13_Bit_iteratorC2EPmj = comdat any

$_ZNKSt13_Bit_iteratorplEl = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEmE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv = comdat any

$_ZNSt13_Bit_iteratorpLEl = comdat any

$_ZNSt18_Bit_iterator_base7_M_incrEl = comdat any

$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEmE10deallocateERS1_Pmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv = comdat any

$_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_S_check_init_lenEmRKS2_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EE18_M_fill_initializeEmRKS1_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSaISt6vectorIbSaIbEEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E8max_sizeERKS4_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E8allocateERS4_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_ = comdat any

$_ZSt10_ConstructISt6vectorIbSaIbEES2_EvPT_RKT0_ = comdat any

$_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_ = comdat any

$_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_ = comdat any

$_ZNSt6vectorIbSaIbEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv = comdat any

$_ZNSaIbEC2ImEERKSaIT_E = comdat any

$_ZNKSt6vectorIbSaIbEE4sizeEv = comdat any

$_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator = comdat any

$_ZNKSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNKSt6vectorIbSaIbEE3endEv = comdat any

$_ZStmiRKSt18_Bit_iterator_baseS1_ = comdat any

$_ZSt4copyIPmS0_ET0_T_S2_S1_ = comdat any

$_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_ = comdat any

$_ZNSt19_Bit_const_iteratorC2EPmj = comdat any

$_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPmET_S1_ = comdat any

$_ZSt12__niter_wrapIPmET_RKS1_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPmET_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_ = comdat any

$_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_ = comdat any

$_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_ = comdat any

$_ZSt12__niter_baseISt13_Bit_iteratorET_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_ = comdat any

$_ZNKSt19_Bit_const_iteratordeEv = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZNSt19_Bit_const_iteratorppEv = comdat any

$_ZNSt13_Bit_iteratorppEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNSt18_Bit_iterator_base10_M_bump_upEv = comdat any

$_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_ = comdat any

$_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E10deallocateERS4_PS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m = comdat any

$_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaISt4pairIjjEEC2Ev = comdat any

$_ZNSaISt4pairIjjEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev = comdat any

$_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPSt4pairIjjEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIjjEEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIjjEES2_E10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE10deallocateEPS2_m = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_swap_dataERS4_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIjjEES2_E10_S_on_swapERS3_S5_ = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_copy_dataERKS4_ = comdat any

$_ZNSt12__alloc_swapISaISt4pairIjjEELb1EE8_S_do_itERS2_S4_ = comdat any

$_ZN9TableBaseILi2E6TensorILi1ELi3EEE6reinitERK12TableIndicesILi2EE = comdat any

$_ZN12TableIndicesILi2EEC2Ejj = comdat any

$_ZNK9TableBaseILi2E6TensorILi1ELi3EEE10n_elementsEv = comdat any

$_ZN9TableBaseILi2E6TensorILi1ELi3EEE12reset_valuesEv = comdat any

$_ZNK16TableIndicesBaseILi2EEixEj = comdat any

$_ZSt6fill_nIP6TensorILi1ELi3EEjS1_ET_S3_T0_RKT1_ = comdat any

$_ZSt12__niter_wrapIP6TensorILi1ELi3EEET_RKS3_S3_ = comdat any

$_ZSt10__fill_n_aIP6TensorILi1ELi3EEjS1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES6_T0_RKS5_ = comdat any

$_ZSt12__niter_baseIP6TensorILi1ELi3EEET_S3_ = comdat any

$_ZN9TableBaseILi2E6TensorILi2ELi3EEE6reinitERK12TableIndicesILi2EE = comdat any

$_ZNK9TableBaseILi2E6TensorILi2ELi3EEE10n_elementsEv = comdat any

$_ZN9TableBaseILi2E6TensorILi2ELi3EEE12reset_valuesEv = comdat any

$_ZSt6fill_nIP6TensorILi2ELi3EEjS1_ET_S3_T0_RKT1_ = comdat any

$_ZSt12__niter_wrapIP6TensorILi2ELi3EEET_RKS3_S3_ = comdat any

$_ZSt10__fill_n_aIP6TensorILi2ELi3EEjS1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES6_T0_RKS5_ = comdat any

$_ZSt12__niter_baseIP6TensorILi2ELi3EEET_S3_ = comdat any

$_ZNK5TableILi2E6TensorILi1ELi3EEE6n_colsEv = comdat any

$_ZN8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEC2ERK9TableBaseILi2ES3_EPS3_ = comdat any

$_ZNK5TableILi2E6TensorILi2ELi3EEE6n_colsEv = comdat any

$_ZN8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EEC2ERK9TableBaseILi2ES3_EPS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEED2Ev = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE17_S_check_init_lenEmRKS2_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EEC2EmRKS2_ = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE18_M_fill_initializeEmRKS1_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EED2Ev = comdat any

$_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSaI6TensorILi1ELi3EEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E8max_sizeERKS3_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implD2Ev = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIP6TensorILi1ELi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIP6TensorILi1ELi3EEmS1_ET_S3_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP6TensorILi1ELi3EEmS3_EET_S5_T0_RKT1_ = comdat any

$_ZSt10_ConstructI6TensorILi1ELi3EES1_EvPT_RKT0_ = comdat any

$_ZSt11__addressofI6TensorILi1ELi3EEEPT_RS2_ = comdat any

$_ZSt8_DestroyIP6TensorILi1ELi3EEEvT_S3_ = comdat any

$_ZN6TensorILi1ELi3EEC2ERKS0_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP6TensorILi1ELi3EEEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIP6TensorILi1ELi3EES1_EvT_S3_RSaIT0_E = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNK5TableILi2EdE6n_colsEv = comdat any

$_ZN8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEC2ERK9TableBaseILi2EdEPd = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEED2Ev = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE17_S_check_init_lenEmRKS2_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EEC2EmRKS2_ = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE18_M_fill_initializeEmRKS1_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EED2Ev = comdat any

$_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSaI6TensorILi2ELi3EEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E8max_sizeERKS3_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implD2Ev = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIP6TensorILi2ELi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIP6TensorILi2ELi3EEmS1_ET_S3_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP6TensorILi2ELi3EEmS3_EET_S5_T0_RKT1_ = comdat any

$_ZSt10_ConstructI6TensorILi2ELi3EES1_EvPT_RKT0_ = comdat any

$_ZSt11__addressofI6TensorILi2ELi3EEEPT_RS2_ = comdat any

$_ZSt8_DestroyIP6TensorILi2ELi3EEEvT_S3_ = comdat any

$_ZN6TensorILi2ELi3EEC2ERKS0_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP6TensorILi2ELi3EEEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIP6TensorILi2ELi3EES1_EvT_S3_RSaIT0_E = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEdeEv = comdat any

$_ZNKSt6vectorIP18TriangulationLevelILi3EESaIS2_EEixEm = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIjSaIjEE18_M_fill_initializeEmRKj = comdat any

$_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_ = comdat any

$_ZNSaIjEC2ERKS_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIjEjE8max_sizeERKS1_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIjEjE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPjmjET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjmjEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPjmjET_S1_T0_RKT1_ = comdat any

$_ZSt12__niter_wrapIPjET_RKS1_S1_ = comdat any

$_ZSt10__fill_n_aIPjmjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPjET_S1_ = comdat any

$_ZNK9TableBaseILi2EdE10n_elementsEv = comdat any

$_ZN9TableBaseILi2EdE12reset_valuesEv = comdat any

$_ZSt6fill_nIPdjdET_S1_T0_RKT1_ = comdat any

$_ZSt12__niter_wrapIPdET_RKS1_S1_ = comdat any

$_ZSt10__fill_n_aIPdjdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZN9TableBaseILi2EdE4fillIdEEvPKT_ = comdat any

$_ZSt4copyIPKdPdET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKdET_S2_ = comdat any

$_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKdET_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_ = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EE3endEv = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZN9__gnu_cxxmiIP5PointILi3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZSt22__uninitialized_move_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt13copy_backwardIP5PointILi3EES2_ET0_T_S4_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZSt4fillIP5PointILi3EES1_EvT_S3_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIP5PointILi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E = comdat any

$_ZNKSt6vectorI5PointILi3EESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt8_DestroyIP5PointILi3EES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZSt22__uninitialized_copy_aIP5PointILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIP5PointILi3EES2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP5PointILi3EES4_EET0_T_S6_S5_ = comdat any

$_ZSt10_ConstructI5PointILi3EES1_EvPT_RKT0_ = comdat any

$_ZSt11__addressofI5PointILi3EEEPT_RS2_ = comdat any

$_ZSt8_DestroyIP5PointILi3EEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointILi3EEEEvT_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EP5PointILi3EES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIP5PointILi3EEET_S3_ = comdat any

$_ZSt12__niter_wrapIP5PointILi3EEET_RKS3_S3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EP5PointILi3EES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIP5PointILi3EEET_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP5PointILi3EES5_EET0_T_S7_S6_ = comdat any

$_ZSt8__fill_aIP5PointILi3EES1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_ = comdat any

$_ZSt20uninitialized_fill_nIP5PointILi3EEmS1_ET_S3_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5PointILi3EEmS3_EET_S5_T0_RKT1_ = comdat any

$_ZNKSt6vectorI5PointILi3EESaIS1_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorI5PointILi3EESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E8max_sizeERKS3_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI5PointILi3EEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI5PointILi3EEE8allocateEmPKv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI5PointILi3EEE10deallocateEPS2_m = comdat any

$_ZN6TensorILi1ELi3EEpLERKS0_ = comdat any

$_ZN5PointILi3EEC2ERK6TensorILi1ELi3EE = comdat any

$_ZN6TensorILi1ELi3EEdVERKd = comdat any

$_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_ = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EE3endEv = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZN9__gnu_cxxmiIP5PointILi2EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZSt22__uninitialized_move_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt13copy_backwardIP5PointILi2EES2_ET0_T_S4_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZSt4fillIP5PointILi2EES1_EvT_S3_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIP5PointILi2EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E = comdat any

$_ZNKSt6vectorI5PointILi2EESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt8_DestroyIP5PointILi2EES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZSt22__uninitialized_copy_aIP5PointILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIP5PointILi2EES2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP5PointILi2EES4_EET0_T_S6_S5_ = comdat any

$_ZSt10_ConstructI5PointILi2EES1_EvPT_RKT0_ = comdat any

$_ZSt11__addressofI5PointILi2EEEPT_RS2_ = comdat any

$_ZSt8_DestroyIP5PointILi2EEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointILi2EEEEvT_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EP5PointILi2EES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIP5PointILi2EEET_S3_ = comdat any

$_ZSt12__niter_wrapIP5PointILi2EEET_RKS3_S3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EP5PointILi2EES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIP5PointILi2EEET_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP5PointILi2EES5_EET0_T_S7_S6_ = comdat any

$_ZSt8__fill_aIP5PointILi2EES1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_ = comdat any

$_ZSt20uninitialized_fill_nIP5PointILi2EEmS1_ET_S3_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5PointILi2EEmS3_EET_S5_T0_RKT1_ = comdat any

$_ZNKSt6vectorI5PointILi2EESaIS1_EE8max_sizeEv = comdat any

$_ZNSt6vectorI5PointILi2EESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E8max_sizeERKS3_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI5PointILi2EEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI5PointILi2EEE8allocateEmPKv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI5PointILi2EEE10deallocateEPS2_m = comdat any

$_ZN6TensorILi1ELi2EEpLERKS0_ = comdat any

$_ZN5PointILi2EEC2ERK6TensorILi1ELi2EE = comdat any

$_ZN6TensorILi1ELi2EEdVERKd = comdat any

$_ZTV10FE_NedelecILi3EE = comdat any

$_ZTSN7MappingILi3EE16InternalDataBaseE = comdat any

$_ZTIN7MappingILi3EE16InternalDataBaseE = comdat any

$_ZTSN10FE_NedelecILi3EE12InternalDataE = comdat any

$_ZTSN17FiniteElementBaseILi3EE16InternalDataBaseE = comdat any

$_ZTIN17FiniteElementBaseILi3EE16InternalDataBaseE = comdat any

$_ZTIN10FE_NedelecILi3EE12InternalDataE = comdat any

$_ZTS10FE_NedelecILi3EE = comdat any

$_ZTS13FiniteElementILi3EE = comdat any

$_ZTS17FiniteElementBaseILi3EE = comdat any

$_ZTS17FiniteElementDataILi3EE = comdat any

$_ZTI17FiniteElementDataILi3EE = comdat any

$_ZTI17FiniteElementBaseILi3EE = comdat any

$_ZTI13FiniteElementILi3EE = comdat any

$_ZTI10FE_NedelecILi3EE = comdat any

$_ZTVN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE = comdat any

$_ZTSN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE = comdat any

$_ZTIN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE = comdat any

$_ZTVN10FE_NedelecILi3EE12InternalDataE = comdat any

$_ZTVN17FiniteElementBaseILi3EE16InternalDataBaseE = comdat any

$_ZTV5TableILi2E6TensorILi1ELi3EEE = comdat any

$_ZTS5TableILi2E6TensorILi1ELi3EEE = comdat any

$_ZTS9TableBaseILi2E6TensorILi1ELi3EEE = comdat any

$_ZTI9TableBaseILi2E6TensorILi1ELi3EEE = comdat any

$_ZTI5TableILi2E6TensorILi1ELi3EEE = comdat any

$_ZTV9TableBaseILi2E6TensorILi1ELi3EEE = comdat any

$_ZTV5TableILi2E6TensorILi2ELi3EEE = comdat any

$_ZTS5TableILi2E6TensorILi2ELi3EEE = comdat any

$_ZTS9TableBaseILi2E6TensorILi2ELi3EEE = comdat any

$_ZTI9TableBaseILi2E6TensorILi2ELi3EEE = comdat any

$_ZTI5TableILi2E6TensorILi2ELi3EEE = comdat any

$_ZTV9TableBaseILi2E6TensorILi2ELi3EEE = comdat any

$_ZZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjjE14vertex_indices = comdat any

$_ZZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjjE14vertex_indices = comdat any

@_ZZNK10FE_NedelecILi3EE25shape_grad_grad_componentEjRK5PointILi3EEjE15unit_grad_grads = internal constant [12 x [3 x [3 x [3 x double]]]] [[3 x [3 x [3 x double]]] [[3 x [3 x double]] [[3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double -1.000000e+00, double 0.000000e+00], [3 x double] [double -1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] zeroinitializer]], [3 x [3 x [3 x double]]] [[3 x [3 x double]] [[3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double -1.000000e+00], [3 x double] [double 0.000000e+00, double -1.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] zeroinitializer]], [3 x [3 x [3 x double]]] [[3 x [3 x double]] [[3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double -1.000000e+00], [3 x double] [double 0.000000e+00, double -1.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] zeroinitializer]], [3 x [3 x [3 x double]]] [[3 x [3 x double]] [[3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double -1.000000e+00, double 0.000000e+00], [3 x double] [double -1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] zeroinitializer]], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], [3 x double] zeroinitializer, [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 0.000000e+00, double -1.000000e+00], [3 x double] zeroinitializer, [3 x double] [double -1.000000e+00, double 0.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], [3 x double] zeroinitializer, [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer], [3 x [3 x [3 x double]]] [[3 x [3 x double]] zeroinitializer, [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 0.000000e+00, double -1.000000e+00], [3 x double] zeroinitializer, [3 x double] [double -1.000000e+00, double 0.000000e+00, double 0.000000e+00]], [3 x [3 x double]] zeroinitializer]], align 16
@_ZTV10FE_NedelecILi3EE = weak_odr unnamed_addr constant { [28 x i8*] } { [28 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10FE_NedelecILi3EE to i8*), i8* bitcast (void (%class.FE_Nedelec*)* @_ZN10FE_NedelecILi3EED2Ev to i8*), i8* bitcast (void (%class.FE_Nedelec*)* @_ZN10FE_NedelecILi3EED0Ev to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %class.FE_Nedelec*)* @_ZNK10FE_NedelecILi3EE8get_nameB5cxx11Ev to i8*), i8* bitcast (double (%class.FiniteElementBase*, i32, %class.Point*)* @_ZNK17FiniteElementBaseILi3EE11shape_valueEjRK5PointILi3EE to i8*), i8* bitcast (double (%class.FE_Nedelec*, i32, %class.Point*, i32)* @_ZNK10FE_NedelecILi3EE21shape_value_componentEjRK5PointILi3EEj to i8*), i8* bitcast (void (%class.Tensor*, %class.FiniteElementBase*, i32, %class.Point*)* @_ZNK17FiniteElementBaseILi3EE10shape_gradEjRK5PointILi3EE to i8*), i8* bitcast (void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)* @_ZNK10FE_NedelecILi3EE20shape_grad_componentEjRK5PointILi3EEj to i8*), i8* bitcast (void (%class.Tensor.33*, %class.FiniteElementBase*, i32, %class.Point*)* @_ZNK17FiniteElementBaseILi3EE15shape_grad_gradEjRK5PointILi3EE to i8*), i8* bitcast (void (%class.Tensor.33*, %class.FE_Nedelec*, i32, %class.Point*, i32)* @_ZNK10FE_NedelecILi3EE25shape_grad_grad_componentEjRK5PointILi3EEj to i8*), i8* bitcast (void (%class.FiniteElementBase*, %class.FiniteElementBase*, %class.FullMatrix*)* @_ZNK17FiniteElementBaseILi3EE24get_interpolation_matrixERKS0_R10FullMatrixIdE to i8*), i8* bitcast (void (%class.Point*, %class.FiniteElementBase*, i32)* @_ZNK17FiniteElementBaseILi3EE18unit_support_pointEj to i8*), i8* bitcast (void (%class.Point.21*, %class.FiniteElementBase*, i32)* @_ZNK17FiniteElementBaseILi3EE23unit_face_support_pointEj to i8*), i8* bitcast (i32 (%class.FE_Nedelec*)* @_ZNK10FE_NedelecILi3EE15n_base_elementsEv to i8*), i8* bitcast (%class.FiniteElement* (%class.FE_Nedelec*, i32)* @_ZNK10FE_NedelecILi3EE12base_elementEj to i8*), i8* bitcast (i32 (%class.FE_Nedelec*, i32)* @_ZNK10FE_NedelecILi3EE20element_multiplicityEj to i8*), i8* bitcast (i1 (%class.FE_Nedelec*, i32, i32)* @_ZNK10FE_NedelecILi3EE19has_support_on_faceEjj to i8*), i8* bitcast (i32 (%class.FE_Nedelec*)* @_ZNK10FE_NedelecILi3EE18memory_consumptionEv to i8*), i8* bitcast (i32 (%class.FE_Nedelec*, i32)* @_ZNK10FE_NedelecILi3EE11update_onceE11UpdateFlags to i8*), i8* bitcast (i32 (%class.FE_Nedelec*, i32)* @_ZNK10FE_NedelecILi3EE11update_eachE11UpdateFlags to i8*), i8* bitcast (%class.FiniteElement* (%class.FE_Nedelec*)* @_ZNK10FE_NedelecILi3EE5cloneEv to i8*), i8* bitcast (%"class.Mapping<3>::InternalDataBase"* (%class.FE_Nedelec*, i32, %class.Mapping*, %class.Quadrature*)* @_ZNK10FE_NedelecILi3EE8get_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi3EE to i8*), i8* bitcast (%"class.Mapping<3>::InternalDataBase"* (%class.FiniteElement*, i32, %class.Mapping*, %class.Quadrature.126*)* @_ZNK13FiniteElementILi3EE13get_face_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi2EE to i8*), i8* bitcast (%"class.Mapping<3>::InternalDataBase"* (%class.FiniteElement*, i32, %class.Mapping*, %class.Quadrature.126*)* @_ZNK13FiniteElementILi3EE16get_subface_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi2EE to i8*), i8* bitcast (void (%class.FE_Nedelec*, %class.Mapping*, %class.TriaIterator*, %class.Quadrature*, %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"*, %class.FEValuesData*)* @_ZNK10FE_NedelecILi3EE14fill_fe_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEERK10QuadratureILi3EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE to i8*), i8* bitcast (void (%class.FE_Nedelec*, %class.Mapping*, %class.TriaIterator*, i32, %class.Quadrature.126*, %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"*, %class.FEValuesData*)* @_ZNK10FE_NedelecILi3EE19fill_fe_face_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRK10QuadratureILi2EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE to i8*), i8* bitcast (void (%class.FE_Nedelec*, %class.Mapping*, %class.TriaIterator*, i32, i32, %class.Quadrature.126*, %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"*, %class.FEValuesData*)* @_ZNK10FE_NedelecILi3EE22fill_fe_subface_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjjRK10QuadratureILi2EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE to i8*)] }, comdat, align 8
@.str = private unnamed_addr constant [12 x i8] c"FE_Nedelec<\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZZNK10FE_NedelecILi3EE19has_support_on_faceEjjE14opposite_faces = internal constant [12 x [2 x i32]] [[2 x i32] [i32 1, i32 4], [2 x i32] [i32 1, i32 5], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 0, i32 4], [2 x i32] [i32 0, i32 5], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 4, i32 5], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 2, i32 3]], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN7MappingILi3EE16InternalDataBaseE = linkonce_odr constant [35 x i8] c"N7MappingILi3EE16InternalDataBaseE\00", comdat
@_ZTI11Subscriptor = external constant i8*
@_ZTIN7MappingILi3EE16InternalDataBaseE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTSN7MappingILi3EE16InternalDataBaseE, i32 0, i32 0), i8* bitcast (i8** @_ZTI11Subscriptor to i8*) }, comdat
@_ZTSN10FE_NedelecILi3EE12InternalDataE = linkonce_odr constant [35 x i8] c"N10FE_NedelecILi3EE12InternalDataE\00", comdat
@_ZTSN17FiniteElementBaseILi3EE16InternalDataBaseE = linkonce_odr constant [46 x i8] c"N17FiniteElementBaseILi3EE16InternalDataBaseE\00", comdat
@_ZTIN17FiniteElementBaseILi3EE16InternalDataBaseE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @_ZTSN17FiniteElementBaseILi3EE16InternalDataBaseE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7MappingILi3EE16InternalDataBaseE to i8*) }, comdat
@_ZTIN10FE_NedelecILi3EE12InternalDataE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTSN10FE_NedelecILi3EE12InternalDataE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN17FiniteElementBaseILi3EE16InternalDataBaseE to i8*) }, comdat
@_ZN10FE_NedelecILi3EE8Matrices21n_constraint_matricesE = external constant i32, align 4
@_ZN10FE_NedelecILi3EE8Matrices19constraint_matricesE = external constant [0 x double*], align 8
@_ZN10FE_NedelecILi3EE8Matrices20n_embedding_matricesE = external constant i32, align 4
@_ZN10FE_NedelecILi3EE8Matrices9embeddingE = external constant [0 x [8 x double*]], align 8
@_ZTS10FE_NedelecILi3EE = weak_odr constant [19 x i8] c"10FE_NedelecILi3EE\00", comdat
@_ZTS13FiniteElementILi3EE = linkonce_odr constant [22 x i8] c"13FiniteElementILi3EE\00", comdat
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTS17FiniteElementBaseILi3EE = linkonce_odr constant [26 x i8] c"17FiniteElementBaseILi3EE\00", comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS17FiniteElementDataILi3EE = linkonce_odr constant [26 x i8] c"17FiniteElementDataILi3EE\00", comdat
@_ZTI17FiniteElementDataILi3EE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTS17FiniteElementDataILi3EE, i32 0, i32 0) }, comdat
@_ZTI17FiniteElementBaseILi3EE = linkonce_odr constant { i8*, i8*, i32, i32, i8*, i64, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTS17FiniteElementBaseILi3EE, i32 0, i32 0), i32 0, i32 2, i8* bitcast (i8** @_ZTI11Subscriptor to i8*), i64 2, i8* bitcast ({ i8*, i8* }* @_ZTI17FiniteElementDataILi3EE to i8*), i64 6146 }, comdat
@_ZTI13FiniteElementILi3EE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @_ZTS13FiniteElementILi3EE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTI17FiniteElementBaseILi3EE to i8*) }, comdat
@_ZTI10FE_NedelecILi3EE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTS10FE_NedelecILi3EE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTI13FiniteElementILi3EE to i8*) }, comdat
@_ZTVN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE = weak_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE to i8*), i8* bitcast (void (%"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*)* @_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD2Ev to i8*), i8* bitcast (void (%"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*)* @_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD0Ev to i8*), i8* bitcast (i8* (%class.ExceptionBase*)* @_ZNK13ExceptionBase4whatEv to i8*), i8* bitcast (void (%class.ExceptionBase*, %"class.std::basic_ostream"*)* @_ZNK13ExceptionBase9PrintInfoERSo to i8*)] }, comdat, align 8
@_ZTSN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE = weak_odr constant [50 x i8] c"N10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE\00", comdat
@_ZTI13ExceptionBase = external constant i8*
@_ZTIN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE = weak_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @_ZTSN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionE, i32 0, i32 0), i8* bitcast (i8** @_ZTI13ExceptionBase to i8*) }, comdat
@_ZTVN10FE_NedelecILi3EE12InternalDataE = linkonce_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10FE_NedelecILi3EE12InternalDataE to i8*), i8* bitcast (void (%"class.FE_Nedelec<3>::InternalData"*)* @_ZN10FE_NedelecILi3EE12InternalDataD2Ev to i8*), i8* bitcast (void (%"class.FE_Nedelec<3>::InternalData"*)* @_ZN10FE_NedelecILi3EE12InternalDataD0Ev to i8*), i8* bitcast (void (%"class.Mapping<3>::InternalDataBase"*)* @_ZN7MappingILi3EE16InternalDataBase16clear_first_cellEv to i8*), i8* bitcast (i32 (%"class.Mapping<3>::InternalDataBase"*)* @_ZNK7MappingILi3EE16InternalDataBase18memory_consumptionEv to i8*)] }, comdat, align 8
@_ZTVN17FiniteElementBaseILi3EE16InternalDataBaseE = linkonce_odr unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN17FiniteElementBaseILi3EE16InternalDataBaseE to i8*), i8* bitcast (void (%"class.FiniteElementBase<3>::InternalDataBase"*)* @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD1Ev to i8*), i8* bitcast (void (%"class.FiniteElementBase<3>::InternalDataBase"*)* @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD0Ev to i8*), i8* bitcast (void (%"class.Mapping<3>::InternalDataBase"*)* @_ZN7MappingILi3EE16InternalDataBase16clear_first_cellEv to i8*), i8* bitcast (i32 (%"class.Mapping<3>::InternalDataBase"*)* @_ZNK7MappingILi3EE16InternalDataBase18memory_consumptionEv to i8*)] }, comdat, align 8
@_ZTV5TableILi2E6TensorILi1ELi3EEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5TableILi2E6TensorILi1ELi3EEE to i8*), i8* bitcast (void (%class.Table.50*)* @_ZN5TableILi2E6TensorILi1ELi3EEED2Ev to i8*), i8* bitcast (void (%class.Table.50*)* @_ZN5TableILi2E6TensorILi1ELi3EEED0Ev to i8*)] }, comdat, align 8
@_ZTS5TableILi2E6TensorILi1ELi3EEE = linkonce_odr constant [30 x i8] c"5TableILi2E6TensorILi1ELi3EEE\00", comdat
@_ZTS9TableBaseILi2E6TensorILi1ELi3EEE = linkonce_odr constant [34 x i8] c"9TableBaseILi2E6TensorILi1ELi3EEE\00", comdat
@_ZTI9TableBaseILi2E6TensorILi1ELi3EEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @_ZTS9TableBaseILi2E6TensorILi1ELi3EEE, i32 0, i32 0), i8* bitcast (i8** @_ZTI11Subscriptor to i8*) }, comdat
@_ZTI5TableILi2E6TensorILi1ELi3EEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_ZTS5TableILi2E6TensorILi1ELi3EEE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9TableBaseILi2E6TensorILi1ELi3EEE to i8*) }, comdat
@_ZTV9TableBaseILi2E6TensorILi1ELi3EEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9TableBaseILi2E6TensorILi1ELi3EEE to i8*), i8* bitcast (void (%class.TableBase.51*)* @_ZN9TableBaseILi2E6TensorILi1ELi3EEED2Ev to i8*), i8* bitcast (void (%class.TableBase.51*)* @_ZN9TableBaseILi2E6TensorILi1ELi3EEED0Ev to i8*)] }, comdat, align 8
@_ZTV5TableILi2E6TensorILi2ELi3EEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5TableILi2E6TensorILi2ELi3EEE to i8*), i8* bitcast (void (%class.Table.54*)* @_ZN5TableILi2E6TensorILi2ELi3EEED2Ev to i8*), i8* bitcast (void (%class.Table.54*)* @_ZN5TableILi2E6TensorILi2ELi3EEED0Ev to i8*)] }, comdat, align 8
@_ZTS5TableILi2E6TensorILi2ELi3EEE = linkonce_odr constant [30 x i8] c"5TableILi2E6TensorILi2ELi3EEE\00", comdat
@_ZTS9TableBaseILi2E6TensorILi2ELi3EEE = linkonce_odr constant [34 x i8] c"9TableBaseILi2E6TensorILi2ELi3EEE\00", comdat
@_ZTI9TableBaseILi2E6TensorILi2ELi3EEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @_ZTS9TableBaseILi2E6TensorILi2ELi3EEE, i32 0, i32 0), i8* bitcast (i8** @_ZTI11Subscriptor to i8*) }, comdat
@_ZTI5TableILi2E6TensorILi2ELi3EEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_ZTS5TableILi2E6TensorILi2ELi3EEE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9TableBaseILi2E6TensorILi2ELi3EEE to i8*) }, comdat
@_ZTV9TableBaseILi2E6TensorILi2ELi3EEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9TableBaseILi2E6TensorILi2ELi3EEE to i8*), i8* bitcast (void (%class.TableBase.55*)* @_ZN9TableBaseILi2E6TensorILi2ELi3EEED2Ev to i8*), i8* bitcast (void (%class.TableBase.55*)* @_ZN9TableBaseILi2E6TensorILi2ELi3EEED0Ev to i8*)] }, comdat, align 8
@_ZZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjjE14vertex_indices = linkonce_odr constant [12 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 2], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 4, i32 5], [2 x i32] [i32 5, i32 6], [2 x i32] [i32 7, i32 6], [2 x i32] [i32 4, i32 7], [2 x i32] [i32 0, i32 4], [2 x i32] [i32 1, i32 5], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 3, i32 7]], comdat, align 16
@_ZZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjjE14vertex_indices = linkonce_odr constant [4 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 2], [2 x i32] [i32 0, i32 3]], comdat, align 16
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

@_ZN10FE_NedelecILi3EEC1Ej = weak_odr alias void (%class.FE_Nedelec*, i32), void (%class.FE_Nedelec*, i32)* @_ZN10FE_NedelecILi3EEC2Ej

; Function Attrs: noinline uwtable
define double @_ZNK10FE_NedelecILi3EE21shape_value_componentEjRK5PointILi3EEj(%class.FE_Nedelec*, i32, %class.Point* dereferenceable(24), i32) unnamed_addr #0 align 2 {
  %5 = alloca double, align 8
  %6 = alloca %class.FE_Nedelec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %class.Point*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %class.Point* %2, %class.Point** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %class.FE_Nedelec*, %class.FE_Nedelec** %6, align 8
  store i32 3, i32* %10, align 4
  %15 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %110 [
    i32 1, label %17
  ]

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = urem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

; <label>:27:                                     ; preds = %24, %20
  %28 = load i32, i32* %7, align 4
  %29 = urem i32 %28, 2
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %40, label %34

; <label>:34:                                     ; preds = %31, %27, %17
  %35 = load i32, i32* %7, align 4
  %36 = icmp uge i32 %35, 8
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37, %31, %24
  store double 0.000000e+00, double* %5, align 8
  br label %112

; <label>:41:                                     ; preds = %37, %34
  %42 = load %class.Point*, %class.Point** %8, align 8
  %43 = call double @_ZNK5PointILi3EEclEj(%class.Point* %42, i32 0)
  store double %43, double* %11, align 8
  %44 = load %class.Point*, %class.Point** %8, align 8
  %45 = call double @_ZNK5PointILi3EEclEj(%class.Point* %44, i32 1)
  store double %45, double* %12, align 8
  %46 = load %class.Point*, %class.Point** %8, align 8
  %47 = call double @_ZNK5PointILi3EEclEj(%class.Point* %46, i32 2)
  store double %47, double* %13, align 8
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %109 [
    i32 0, label %49
    i32 2, label %55
    i32 1, label %60
    i32 3, label %65
    i32 4, label %71
    i32 6, label %76
    i32 5, label %80
    i32 7, label %84
    i32 8, label %89
    i32 9, label %95
    i32 10, label %100
    i32 11, label %104
  ]

; <label>:49:                                     ; preds = %41
  %50 = load double, double* %12, align 8
  %51 = fsub double 1.000000e+00, %50
  %52 = load double, double* %13, align 8
  %53 = fsub double 1.000000e+00, %52
  %54 = fmul double %51, %53
  store double %54, double* %5, align 8
  br label %112

; <label>:55:                                     ; preds = %41
  %56 = load double, double* %12, align 8
  %57 = fsub double 1.000000e+00, %56
  %58 = load double, double* %13, align 8
  %59 = fmul double %57, %58
  store double %59, double* %5, align 8
  br label %112

; <label>:60:                                     ; preds = %41
  %61 = load double, double* %11, align 8
  %62 = load double, double* %12, align 8
  %63 = fsub double 1.000000e+00, %62
  %64 = fmul double %61, %63
  store double %64, double* %5, align 8
  br label %112

; <label>:65:                                     ; preds = %41
  %66 = load double, double* %11, align 8
  %67 = fsub double 1.000000e+00, %66
  %68 = load double, double* %12, align 8
  %69 = fsub double 1.000000e+00, %68
  %70 = fmul double %67, %69
  store double %70, double* %5, align 8
  br label %112

; <label>:71:                                     ; preds = %41
  %72 = load double, double* %12, align 8
  %73 = load double, double* %13, align 8
  %74 = fsub double 1.000000e+00, %73
  %75 = fmul double %72, %74
  store double %75, double* %5, align 8
  br label %112

; <label>:76:                                     ; preds = %41
  %77 = load double, double* %12, align 8
  %78 = load double, double* %13, align 8
  %79 = fmul double %77, %78
  store double %79, double* %5, align 8
  br label %112

; <label>:80:                                     ; preds = %41
  %81 = load double, double* %11, align 8
  %82 = load double, double* %12, align 8
  %83 = fmul double %81, %82
  store double %83, double* %5, align 8
  br label %112

; <label>:84:                                     ; preds = %41
  %85 = load double, double* %11, align 8
  %86 = fsub double 1.000000e+00, %85
  %87 = load double, double* %12, align 8
  %88 = fmul double %86, %87
  store double %88, double* %5, align 8
  br label %112

; <label>:89:                                     ; preds = %41
  %90 = load double, double* %11, align 8
  %91 = fsub double 1.000000e+00, %90
  %92 = load double, double* %13, align 8
  %93 = fsub double 1.000000e+00, %92
  %94 = fmul double %91, %93
  store double %94, double* %5, align 8
  br label %112

; <label>:95:                                     ; preds = %41
  %96 = load double, double* %11, align 8
  %97 = load double, double* %13, align 8
  %98 = fsub double 1.000000e+00, %97
  %99 = fmul double %96, %98
  store double %99, double* %5, align 8
  br label %112

; <label>:100:                                    ; preds = %41
  %101 = load double, double* %11, align 8
  %102 = load double, double* %13, align 8
  %103 = fmul double %101, %102
  store double %103, double* %5, align 8
  br label %112

; <label>:104:                                    ; preds = %41
  %105 = load double, double* %11, align 8
  %106 = fsub double 1.000000e+00, %105
  %107 = load double, double* %13, align 8
  %108 = fmul double %106, %107
  store double %108, double* %5, align 8
  br label %112

; <label>:109:                                    ; preds = %41
  store double 0.000000e+00, double* %5, align 8
  br label %112

; <label>:110:                                    ; preds = %4
  br label %111

; <label>:111:                                    ; preds = %110
  store double 0.000000e+00, double* %5, align 8
  br label %112

; <label>:112:                                    ; preds = %111, %109, %104, %100, %95, %89, %84, %80, %76, %71, %65, %60, %55, %49, %40
  %113 = load double, double* %5, align 8
  ret double %113
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK5PointILi3EEclEj(%class.Point*, i32) #1 comdat align 2 {
  %3 = alloca %class.Point*, align 8
  %4 = alloca i32, align 4
  store %class.Point* %0, %class.Point** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Point*, %class.Point** %3, align 8
  %6 = bitcast %class.Point* %5 to %class.Tensor*
  %7 = getelementptr inbounds %class.Tensor, %class.Tensor* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  ret double %11
}

; Function Attrs: noinline uwtable
define void @_ZNK10FE_NedelecILi3EE20shape_grad_componentEjRK5PointILi3EEj(%class.Tensor* noalias sret, %class.FE_Nedelec*, i32, %class.Point* dereferenceable(24), i32) unnamed_addr #0 align 2 {
  %6 = alloca %class.FE_Nedelec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %class.Point*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [12 x [3 x [3 x double]]], align 16
  store %class.FE_Nedelec* %1, %class.FE_Nedelec** %6, align 8
  store i32 %2, i32* %7, align 4
  store %class.Point* %3, %class.Point** %8, align 8
  store i32 %4, i32* %9, align 4
  %15 = load %class.FE_Nedelec*, %class.FE_Nedelec** %6, align 8
  store i32 3, i32* %10, align 4
  %16 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %235 [
    i32 1, label %18
  ]

; <label>:18:                                     ; preds = %5
  %19 = load %class.Point*, %class.Point** %8, align 8
  %20 = call double @_ZNK5PointILi3EEclEj(%class.Point* %19, i32 0)
  store double %20, double* %11, align 8
  %21 = load %class.Point*, %class.Point** %8, align 8
  %22 = call double @_ZNK5PointILi3EEclEj(%class.Point* %21, i32 1)
  store double %22, double* %12, align 8
  %23 = load %class.Point*, %class.Point** %8, align 8
  %24 = call double @_ZNK5PointILi3EEclEj(%class.Point* %23, i32 2)
  store double %24, double* %13, align 8
  %25 = getelementptr inbounds [12 x [3 x [3 x double]]], [12 x [3 x [3 x double]]]* %14, i64 0, i64 0
  %26 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %25, i64 0, i64 0
  %27 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 0
  store double 0.000000e+00, double* %27, align 8
  %28 = getelementptr inbounds double, double* %27, i64 1
  %29 = load double, double* %13, align 8
  %30 = fsub double 1.000000e+00, %29
  %31 = fsub double -0.000000e+00, %30
  store double %31, double* %28, align 8
  %32 = getelementptr inbounds double, double* %28, i64 1
  %33 = load double, double* %12, align 8
  %34 = fsub double 1.000000e+00, %33
  %35 = fsub double -0.000000e+00, %34
  store double %35, double* %32, align 8
  %36 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 1
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 0, i64 0
  store double 0.000000e+00, double* %37, align 8
  %38 = getelementptr inbounds double, double* %37, i64 1
  store double 0.000000e+00, double* %38, align 8
  %39 = getelementptr inbounds double, double* %38, i64 1
  store double 0.000000e+00, double* %39, align 8
  %40 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 1
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i64 0, i64 0
  store double 0.000000e+00, double* %41, align 8
  %42 = getelementptr inbounds double, double* %41, i64 1
  store double 0.000000e+00, double* %42, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  store double 0.000000e+00, double* %43, align 8
  %44 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %25, i64 1
  %45 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %44, i64 0, i64 0
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0, i64 0
  store double 0.000000e+00, double* %46, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  store double 0.000000e+00, double* %47, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  store double 0.000000e+00, double* %48, align 8
  %49 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 1
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 0
  store double 0.000000e+00, double* %50, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  store double 0.000000e+00, double* %51, align 8
  %52 = getelementptr inbounds double, double* %51, i64 1
  store double 0.000000e+00, double* %52, align 8
  %53 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 1
  %54 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 0, i64 0
  %55 = load double, double* %12, align 8
  %56 = fsub double 1.000000e+00, %55
  store double %56, double* %54, align 8
  %57 = getelementptr inbounds double, double* %54, i64 1
  %58 = load double, double* %11, align 8
  %59 = fsub double -0.000000e+00, %58
  store double %59, double* %57, align 8
  %60 = getelementptr inbounds double, double* %57, i64 1
  store double 0.000000e+00, double* %60, align 8
  %61 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %44, i64 1
  %62 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %61, i64 0, i64 0
  %63 = getelementptr inbounds [3 x double], [3 x double]* %62, i64 0, i64 0
  store double 0.000000e+00, double* %63, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %13, align 8
  %66 = fsub double -0.000000e+00, %65
  store double %66, double* %64, align 8
  %67 = getelementptr inbounds double, double* %64, i64 1
  %68 = load double, double* %12, align 8
  %69 = fsub double 1.000000e+00, %68
  store double %69, double* %67, align 8
  %70 = getelementptr inbounds [3 x double], [3 x double]* %62, i64 1
  %71 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 0
  store double 0.000000e+00, double* %71, align 8
  %72 = getelementptr inbounds double, double* %71, i64 1
  store double 0.000000e+00, double* %72, align 8
  %73 = getelementptr inbounds double, double* %72, i64 1
  store double 0.000000e+00, double* %73, align 8
  %74 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 1
  %75 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 0, i64 0
  store double 0.000000e+00, double* %75, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  store double 0.000000e+00, double* %76, align 8
  %77 = getelementptr inbounds double, double* %76, i64 1
  store double 0.000000e+00, double* %77, align 8
  %78 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %61, i64 1
  %79 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %78, i64 0, i64 0
  %80 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 0, i64 0
  store double 0.000000e+00, double* %80, align 8
  %81 = getelementptr inbounds double, double* %80, i64 1
  store double 0.000000e+00, double* %81, align 8
  %82 = getelementptr inbounds double, double* %81, i64 1
  store double 0.000000e+00, double* %82, align 8
  %83 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 1
  %84 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 0, i64 0
  store double 0.000000e+00, double* %84, align 8
  %85 = getelementptr inbounds double, double* %84, i64 1
  store double 0.000000e+00, double* %85, align 8
  %86 = getelementptr inbounds double, double* %85, i64 1
  store double 0.000000e+00, double* %86, align 8
  %87 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 1
  %88 = getelementptr inbounds [3 x double], [3 x double]* %87, i64 0, i64 0
  %89 = load double, double* %12, align 8
  %90 = fsub double 1.000000e+00, %89
  %91 = fsub double -0.000000e+00, %90
  store double %91, double* %88, align 8
  %92 = getelementptr inbounds double, double* %88, i64 1
  %93 = load double, double* %11, align 8
  %94 = fsub double 1.000000e+00, %93
  %95 = fsub double -0.000000e+00, %94
  store double %95, double* %92, align 8
  %96 = getelementptr inbounds double, double* %92, i64 1
  store double 0.000000e+00, double* %96, align 8
  %97 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %78, i64 1
  %98 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %97, i64 0, i64 0
  %99 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 0, i64 0
  store double 0.000000e+00, double* %99, align 8
  %100 = getelementptr inbounds double, double* %99, i64 1
  %101 = load double, double* %13, align 8
  %102 = fsub double 1.000000e+00, %101
  store double %102, double* %100, align 8
  %103 = getelementptr inbounds double, double* %100, i64 1
  %104 = load double, double* %12, align 8
  %105 = fsub double -0.000000e+00, %104
  store double %105, double* %103, align 8
  %106 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 1
  %107 = getelementptr inbounds [3 x double], [3 x double]* %106, i64 0, i64 0
  store double 0.000000e+00, double* %107, align 8
  %108 = getelementptr inbounds double, double* %107, i64 1
  store double 0.000000e+00, double* %108, align 8
  %109 = getelementptr inbounds double, double* %108, i64 1
  store double 0.000000e+00, double* %109, align 8
  %110 = getelementptr inbounds [3 x double], [3 x double]* %106, i64 1
  %111 = getelementptr inbounds [3 x double], [3 x double]* %110, i64 0, i64 0
  store double 0.000000e+00, double* %111, align 8
  %112 = getelementptr inbounds double, double* %111, i64 1
  store double 0.000000e+00, double* %112, align 8
  %113 = getelementptr inbounds double, double* %112, i64 1
  store double 0.000000e+00, double* %113, align 8
  %114 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %97, i64 1
  %115 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %114, i64 0, i64 0
  %116 = getelementptr inbounds [3 x double], [3 x double]* %115, i64 0, i64 0
  store double 0.000000e+00, double* %116, align 8
  %117 = getelementptr inbounds double, double* %116, i64 1
  store double 0.000000e+00, double* %117, align 8
  %118 = getelementptr inbounds double, double* %117, i64 1
  store double 0.000000e+00, double* %118, align 8
  %119 = getelementptr inbounds [3 x double], [3 x double]* %115, i64 1
  %120 = getelementptr inbounds [3 x double], [3 x double]* %119, i64 0, i64 0
  store double 0.000000e+00, double* %120, align 8
  %121 = getelementptr inbounds double, double* %120, i64 1
  store double 0.000000e+00, double* %121, align 8
  %122 = getelementptr inbounds double, double* %121, i64 1
  store double 0.000000e+00, double* %122, align 8
  %123 = getelementptr inbounds [3 x double], [3 x double]* %119, i64 1
  %124 = getelementptr inbounds [3 x double], [3 x double]* %123, i64 0, i64 0
  %125 = load double, double* %12, align 8
  store double %125, double* %124, align 8
  %126 = getelementptr inbounds double, double* %124, i64 1
  %127 = load double, double* %11, align 8
  store double %127, double* %126, align 8
  %128 = getelementptr inbounds double, double* %126, i64 1
  store double 0.000000e+00, double* %128, align 8
  %129 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %114, i64 1
  %130 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %129, i64 0, i64 0
  %131 = getelementptr inbounds [3 x double], [3 x double]* %130, i64 0, i64 0
  store double 0.000000e+00, double* %131, align 8
  %132 = getelementptr inbounds double, double* %131, i64 1
  %133 = load double, double* %13, align 8
  store double %133, double* %132, align 8
  %134 = getelementptr inbounds double, double* %132, i64 1
  %135 = load double, double* %12, align 8
  store double %135, double* %134, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %130, i64 1
  %137 = getelementptr inbounds [3 x double], [3 x double]* %136, i64 0, i64 0
  store double 0.000000e+00, double* %137, align 8
  %138 = getelementptr inbounds double, double* %137, i64 1
  store double 0.000000e+00, double* %138, align 8
  %139 = getelementptr inbounds double, double* %138, i64 1
  store double 0.000000e+00, double* %139, align 8
  %140 = getelementptr inbounds [3 x double], [3 x double]* %136, i64 1
  %141 = getelementptr inbounds [3 x double], [3 x double]* %140, i64 0, i64 0
  store double 0.000000e+00, double* %141, align 8
  %142 = getelementptr inbounds double, double* %141, i64 1
  store double 0.000000e+00, double* %142, align 8
  %143 = getelementptr inbounds double, double* %142, i64 1
  store double 0.000000e+00, double* %143, align 8
  %144 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %129, i64 1
  %145 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %144, i64 0, i64 0
  %146 = getelementptr inbounds [3 x double], [3 x double]* %145, i64 0, i64 0
  store double 0.000000e+00, double* %146, align 8
  %147 = getelementptr inbounds double, double* %146, i64 1
  store double 0.000000e+00, double* %147, align 8
  %148 = getelementptr inbounds double, double* %147, i64 1
  store double 0.000000e+00, double* %148, align 8
  %149 = getelementptr inbounds [3 x double], [3 x double]* %145, i64 1
  %150 = getelementptr inbounds [3 x double], [3 x double]* %149, i64 0, i64 0
  store double 0.000000e+00, double* %150, align 8
  %151 = getelementptr inbounds double, double* %150, i64 1
  store double 0.000000e+00, double* %151, align 8
  %152 = getelementptr inbounds double, double* %151, i64 1
  store double 0.000000e+00, double* %152, align 8
  %153 = getelementptr inbounds [3 x double], [3 x double]* %149, i64 1
  %154 = getelementptr inbounds [3 x double], [3 x double]* %153, i64 0, i64 0
  %155 = load double, double* %12, align 8
  %156 = fsub double -0.000000e+00, %155
  store double %156, double* %154, align 8
  %157 = getelementptr inbounds double, double* %154, i64 1
  %158 = load double, double* %11, align 8
  %159 = fsub double 1.000000e+00, %158
  store double %159, double* %157, align 8
  %160 = getelementptr inbounds double, double* %157, i64 1
  store double 0.000000e+00, double* %160, align 8
  %161 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %144, i64 1
  %162 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %161, i64 0, i64 0
  %163 = getelementptr inbounds [3 x double], [3 x double]* %162, i64 0, i64 0
  store double 0.000000e+00, double* %163, align 8
  %164 = getelementptr inbounds double, double* %163, i64 1
  store double 0.000000e+00, double* %164, align 8
  %165 = getelementptr inbounds double, double* %164, i64 1
  store double 0.000000e+00, double* %165, align 8
  %166 = getelementptr inbounds [3 x double], [3 x double]* %162, i64 1
  %167 = getelementptr inbounds [3 x double], [3 x double]* %166, i64 0, i64 0
  %168 = load double, double* %13, align 8
  %169 = fsub double 1.000000e+00, %168
  %170 = fsub double -0.000000e+00, %169
  store double %170, double* %167, align 8
  %171 = getelementptr inbounds double, double* %167, i64 1
  store double 0.000000e+00, double* %171, align 8
  %172 = getelementptr inbounds double, double* %171, i64 1
  %173 = load double, double* %11, align 8
  %174 = fsub double 1.000000e+00, %173
  %175 = fsub double -0.000000e+00, %174
  store double %175, double* %172, align 8
  %176 = getelementptr inbounds [3 x double], [3 x double]* %166, i64 1
  %177 = getelementptr inbounds [3 x double], [3 x double]* %176, i64 0, i64 0
  store double 0.000000e+00, double* %177, align 8
  %178 = getelementptr inbounds double, double* %177, i64 1
  store double 0.000000e+00, double* %178, align 8
  %179 = getelementptr inbounds double, double* %178, i64 1
  store double 0.000000e+00, double* %179, align 8
  %180 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %161, i64 1
  %181 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %180, i64 0, i64 0
  %182 = getelementptr inbounds [3 x double], [3 x double]* %181, i64 0, i64 0
  store double 0.000000e+00, double* %182, align 8
  %183 = getelementptr inbounds double, double* %182, i64 1
  store double 0.000000e+00, double* %183, align 8
  %184 = getelementptr inbounds double, double* %183, i64 1
  store double 0.000000e+00, double* %184, align 8
  %185 = getelementptr inbounds [3 x double], [3 x double]* %181, i64 1
  %186 = getelementptr inbounds [3 x double], [3 x double]* %185, i64 0, i64 0
  %187 = load double, double* %13, align 8
  %188 = fsub double 1.000000e+00, %187
  store double %188, double* %186, align 8
  %189 = getelementptr inbounds double, double* %186, i64 1
  store double 0.000000e+00, double* %189, align 8
  %190 = getelementptr inbounds double, double* %189, i64 1
  %191 = load double, double* %11, align 8
  %192 = fsub double -0.000000e+00, %191
  store double %192, double* %190, align 8
  %193 = getelementptr inbounds [3 x double], [3 x double]* %185, i64 1
  %194 = getelementptr inbounds [3 x double], [3 x double]* %193, i64 0, i64 0
  store double 0.000000e+00, double* %194, align 8
  %195 = getelementptr inbounds double, double* %194, i64 1
  store double 0.000000e+00, double* %195, align 8
  %196 = getelementptr inbounds double, double* %195, i64 1
  store double 0.000000e+00, double* %196, align 8
  %197 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %180, i64 1
  %198 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %197, i64 0, i64 0
  %199 = getelementptr inbounds [3 x double], [3 x double]* %198, i64 0, i64 0
  store double 0.000000e+00, double* %199, align 8
  %200 = getelementptr inbounds double, double* %199, i64 1
  store double 0.000000e+00, double* %200, align 8
  %201 = getelementptr inbounds double, double* %200, i64 1
  store double 0.000000e+00, double* %201, align 8
  %202 = getelementptr inbounds [3 x double], [3 x double]* %198, i64 1
  %203 = getelementptr inbounds [3 x double], [3 x double]* %202, i64 0, i64 0
  %204 = load double, double* %13, align 8
  store double %204, double* %203, align 8
  %205 = getelementptr inbounds double, double* %203, i64 1
  store double 0.000000e+00, double* %205, align 8
  %206 = getelementptr inbounds double, double* %205, i64 1
  %207 = load double, double* %11, align 8
  store double %207, double* %206, align 8
  %208 = getelementptr inbounds [3 x double], [3 x double]* %202, i64 1
  %209 = getelementptr inbounds [3 x double], [3 x double]* %208, i64 0, i64 0
  store double 0.000000e+00, double* %209, align 8
  %210 = getelementptr inbounds double, double* %209, i64 1
  store double 0.000000e+00, double* %210, align 8
  %211 = getelementptr inbounds double, double* %210, i64 1
  store double 0.000000e+00, double* %211, align 8
  %212 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %197, i64 1
  %213 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %212, i64 0, i64 0
  %214 = getelementptr inbounds [3 x double], [3 x double]* %213, i64 0, i64 0
  store double 0.000000e+00, double* %214, align 8
  %215 = getelementptr inbounds double, double* %214, i64 1
  store double 0.000000e+00, double* %215, align 8
  %216 = getelementptr inbounds double, double* %215, i64 1
  store double 0.000000e+00, double* %216, align 8
  %217 = getelementptr inbounds [3 x double], [3 x double]* %213, i64 1
  %218 = getelementptr inbounds [3 x double], [3 x double]* %217, i64 0, i64 0
  %219 = load double, double* %13, align 8
  %220 = fsub double -0.000000e+00, %219
  store double %220, double* %218, align 8
  %221 = getelementptr inbounds double, double* %218, i64 1
  store double 0.000000e+00, double* %221, align 8
  %222 = getelementptr inbounds double, double* %221, i64 1
  %223 = load double, double* %11, align 8
  %224 = fsub double 1.000000e+00, %223
  store double %224, double* %222, align 8
  %225 = getelementptr inbounds [3 x double], [3 x double]* %217, i64 1
  %226 = getelementptr inbounds [3 x double], [3 x double]* %225, i64 0, i64 0
  store double 0.000000e+00, double* %226, align 8
  %227 = getelementptr inbounds double, double* %226, i64 1
  store double 0.000000e+00, double* %227, align 8
  %228 = getelementptr inbounds double, double* %227, i64 1
  store double 0.000000e+00, double* %228, align 8
  %229 = load i32, i32* %7, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [12 x [3 x [3 x double]]], [12 x [3 x [3 x double]]]* %14, i64 0, i64 %230
  %232 = load i32, i32* %9, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %231, i64 0, i64 %233
  call void @_ZN6TensorILi1ELi3EEC2ERA3_Kd(%class.Tensor* %0, [3 x double]* dereferenceable(24) %234)
  br label %237

; <label>:235:                                    ; preds = %5
  br label %236

; <label>:236:                                    ; preds = %235
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %0, i1 zeroext true)
  br label %237

; <label>:237:                                    ; preds = %236, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6TensorILi1ELi3EEC2ERA3_Kd(%class.Tensor*, [3 x double]* dereferenceable(24)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca [3 x double]*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store [3 x double]* %1, [3 x double]** %4, align 8
  %6 = load %class.Tensor*, %class.Tensor** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %20, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %7
  %11 = load [3 x double]*, [3 x double]** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %13
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds %class.Tensor, %class.Tensor* %6, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 %18
  store double %15, double* %19, align 8
  br label %20

; <label>:20:                                     ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

; <label>:23:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor*, i1 zeroext) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.Tensor*, %class.Tensor** %3, align 8
  %8 = load i8, i8* %4, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %19, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %class.Tensor, %class.Tensor* %7, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 %17
  store double 0.000000e+00, double* %18, align 8
  br label %19

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %11

; <label>:22:                                     ; preds = %11
  br label %23

; <label>:23:                                     ; preds = %22, %2
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZNK10FE_NedelecILi3EE25shape_grad_grad_componentEjRK5PointILi3EEj(%class.Tensor.33* noalias sret, %class.FE_Nedelec*, i32, %class.Point* dereferenceable(24), i32) unnamed_addr #0 align 2 {
  %6 = alloca %class.FE_Nedelec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %class.Point*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %class.FE_Nedelec* %1, %class.FE_Nedelec** %6, align 8
  store i32 %2, i32* %7, align 4
  store %class.Point* %3, %class.Point** %8, align 8
  store i32 %4, i32* %9, align 4
  %11 = load %class.FE_Nedelec*, %class.FE_Nedelec** %6, align 8
  store i32 3, i32* %10, align 4
  %12 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %21 [
    i32 1, label %14
  ]

; <label>:14:                                     ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [12 x [3 x [3 x [3 x double]]]], [12 x [3 x [3 x [3 x double]]]]* @_ZZNK10FE_NedelecILi3EE25shape_grad_grad_componentEjRK5PointILi3EEjE15unit_grad_grads, i64 0, i64 %16
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x [3 x [3 x double]]], [3 x [3 x [3 x double]]]* %17, i64 0, i64 %19
  call void @_ZN6TensorILi2ELi3EEC2ERA3_A3_Kd(%class.Tensor.33* %0, [3 x [3 x double]]* dereferenceable(72) %20)
  br label %23

; <label>:21:                                     ; preds = %5
  br label %22

; <label>:22:                                     ; preds = %21
  call void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %0)
  br label %23

; <label>:23:                                     ; preds = %22, %14
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6TensorILi2ELi3EEC2ERA3_A3_Kd(%class.Tensor.33*, [3 x [3 x double]]* dereferenceable(72)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca [3 x [3 x double]]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Tensor, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store [3 x [3 x double]]* %1, [3 x [3 x double]]** %4, align 8
  %7 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %8 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %7, i32 0, i32 0
  %9 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %class.Tensor, %class.Tensor* %9, i64 3
  br label %11

; <label>:11:                                     ; preds = %11, %2
  %12 = phi %class.Tensor* [ %9, %2 ], [ %13, %11 ]
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %12, i1 zeroext true)
  %13 = getelementptr inbounds %class.Tensor, %class.Tensor* %12, i64 1
  %14 = icmp eq %class.Tensor* %13, %10
  br i1 %14, label %15, label %11

; <label>:15:                                     ; preds = %11
  store i32 0, i32* %5, align 4
  br label %16

; <label>:16:                                     ; preds = %29, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %16
  %20 = load [3 x [3 x double]]*, [3 x [3 x double]]** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %20, i64 0, i64 %22
  call void @_ZN6TensorILi1ELi3EEC2ERA3_Kd(%class.Tensor* %6, [3 x double]* dereferenceable(24) %23)
  %24 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %7, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %24, i64 0, i64 %26
  %28 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %27, %class.Tensor* dereferenceable(24) %6)
  br label %29

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %16

; <label>:32:                                     ; preds = %16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %2, align 8
  %3 = load %class.Tensor.33*, %class.Tensor.33** %2, align 8
  %4 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %3, i32 0, i32 0
  %5 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %4, i32 0, i32 0
  %6 = getelementptr inbounds %class.Tensor, %class.Tensor* %5, i64 3
  br label %7

; <label>:7:                                      ; preds = %7, %1
  %8 = phi %class.Tensor* [ %5, %1 ], [ %9, %7 ]
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %8, i1 zeroext true)
  %9 = getelementptr inbounds %class.Tensor, %class.Tensor* %8, i64 1
  %10 = icmp eq %class.Tensor* %9, %6
  br i1 %10, label %11, label %7

; <label>:11:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EEC2Ej(%class.FE_Nedelec*, i32) unnamed_addr #0 comdat($_ZN10FE_NedelecILi3EEC5Ej) align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.FE_Nedelec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %class.FiniteElementData, align 4
  %6 = alloca %"class.std::vector.28", align 8
  %7 = alloca i8*
  %8 = alloca i32
  %9 = alloca %"class.std::vector.7", align 8
  %10 = alloca %class.FiniteElementData, align 4
  %11 = alloca %"class.std::vector.28", align 8
  %12 = alloca i8, align 1
  %13 = alloca %"class.std::allocator.34", align 1
  %14 = alloca %"class.std::vector.23", align 8
  %15 = alloca %class.FiniteElementData, align 4
  %16 = alloca %"class.std::vector.28", align 8
  %17 = alloca %"class.std::vector.7", align 8
  %18 = alloca i8, align 1
  %19 = alloca %"class.std::allocator.34", align 1
  %20 = alloca %"class.std::allocator.25", align 1
  %21 = alloca %"class.std::vector", align 8
  %22 = alloca %"class.std::vector", align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %3, align 8
  store i32 %1, i32* %4, align 4
  %23 = load %class.FE_Nedelec*, %class.FE_Nedelec** %3, align 8
  %24 = bitcast %class.FE_Nedelec* %23 to %class.FiniteElement*
  %25 = load i32, i32* %4, align 4
  call void @_ZN10FE_NedelecILi3EE14get_dpo_vectorEj(%"class.std::vector.28"* sret %6, i32 %25)
  invoke void @_ZN17FiniteElementDataILi3EEC1ERKSt6vectorIjSaIjEEjj(%class.FiniteElementData* %5, %"class.std::vector.28"* dereferenceable(24) %6, i32 3, i32 -1)
          to label %26 unwind label %66

; <label>:26:                                     ; preds = %2
  %27 = load i32, i32* %4, align 4
  invoke void @_ZN10FE_NedelecILi3EE14get_dpo_vectorEj(%"class.std::vector.28"* sret %11, i32 %27)
          to label %28 unwind label %66

; <label>:28:                                     ; preds = %26
  invoke void @_ZN17FiniteElementDataILi3EEC1ERKSt6vectorIjSaIjEEjj(%class.FiniteElementData* %10, %"class.std::vector.28"* dereferenceable(24) %11, i32 3, i32 -1)
          to label %29 unwind label %70

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %10, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  store i8 0, i8* %12, align 1
  call void @_ZNSaIbEC2Ev(%"class.std::allocator.34"* %13) #12
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.7"* %9, i64 %32, i8* dereferenceable(1) %12, %"class.std::allocator.34"* dereferenceable(1) %13)
          to label %33 unwind label %74

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %4, align 4
  invoke void @_ZN10FE_NedelecILi3EE14get_dpo_vectorEj(%"class.std::vector.28"* sret %16, i32 %34)
          to label %35 unwind label %78

; <label>:35:                                     ; preds = %33
  invoke void @_ZN17FiniteElementDataILi3EEC1ERKSt6vectorIjSaIjEEjj(%class.FiniteElementData* %15, %"class.std::vector.28"* dereferenceable(24) %16, i32 3, i32 -1)
          to label %36 unwind label %82

; <label>:36:                                     ; preds = %35
  %37 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %15, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  store i8 1, i8* %18, align 1
  call void @_ZNSaIbEC2Ev(%"class.std::allocator.34"* %19) #12
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.7"* %17, i64 3, i8* dereferenceable(1) %18, %"class.std::allocator.34"* dereferenceable(1) %19)
          to label %40 unwind label %86

; <label>:40:                                     ; preds = %36
  call void @_ZNSaISt6vectorIbSaIbEEEC2Ev(%"class.std::allocator.25"* %20) #12
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.23"* %14, i64 %39, %"class.std::vector.7"* dereferenceable(40) %17, %"class.std::allocator.25"* dereferenceable(1) %20)
          to label %41 unwind label %90

; <label>:41:                                     ; preds = %40
  invoke void @_ZN13FiniteElementILi3EEC2ERK17FiniteElementDataILi3EERKSt6vectorIbSaIbEERKS5_IS7_SaIS7_EE(%class.FiniteElement* %24, %class.FiniteElementData* dereferenceable(52) %5, %"class.std::vector.7"* dereferenceable(40) %9, %"class.std::vector.23"* dereferenceable(24) %14)
          to label %42 unwind label %94

; <label>:42:                                     ; preds = %41
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev(%"class.std::vector.23"* %14)
          to label %43 unwind label %90

; <label>:43:                                     ; preds = %42
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"* %20) #12
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.7"* %17)
          to label %44 unwind label %86

; <label>:44:                                     ; preds = %43
  call void @_ZNSaIbED2Ev(%"class.std::allocator.34"* %19) #12
  invoke void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %16)
          to label %45 unwind label %78

; <label>:45:                                     ; preds = %44
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.7"* %9)
          to label %46 unwind label %74

; <label>:46:                                     ; preds = %45
  call void @_ZNSaIbED2Ev(%"class.std::allocator.34"* %13) #12
  invoke void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %11)
          to label %47 unwind label %66

; <label>:47:                                     ; preds = %46
  call void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %6)
  %48 = bitcast %class.FE_Nedelec* %23 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [28 x i8*] }, { [28 x i8*] }* @_ZTV10FE_NedelecILi3EE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %48, align 8
  %49 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %23, i32 0, i32 1
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %49, align 4
  invoke void @_ZN10FE_NedelecILi3EE22initialize_constraintsEv(%class.FE_Nedelec* %23)
          to label %51 unwind label %111

; <label>:51:                                     ; preds = %47
  invoke void @_ZN10FE_NedelecILi3EE20initialize_embeddingEv(%class.FE_Nedelec* %23)
          to label %52 unwind label %111

; <label>:52:                                     ; preds = %51
  invoke void @_ZN10FE_NedelecILi3EE22initialize_restrictionEv(%class.FE_Nedelec* %23)
          to label %53 unwind label %111

; <label>:53:                                     ; preds = %52
  invoke void @_ZN10FE_NedelecILi3EE30initialize_unit_support_pointsEv(%class.FE_Nedelec* %23)
          to label %54 unwind label %111

; <label>:54:                                     ; preds = %53
  invoke void @_ZN10FE_NedelecILi3EE35initialize_unit_face_support_pointsEv(%class.FE_Nedelec* %23)
          to label %55 unwind label %111

; <label>:55:                                     ; preds = %54
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EEC2Ev(%"class.std::vector"* %21)
          to label %56 unwind label %111

; <label>:56:                                     ; preds = %55
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EEC2Ev(%"class.std::vector"* %22)
          to label %57 unwind label %115

; <label>:57:                                     ; preds = %56
  %58 = bitcast %class.FE_Nedelec* %23 to %class.FiniteElementBase*
  %59 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %58, i32 0, i32 6
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EE4swapERS3_(%"class.std::vector"* %59, %"class.std::vector"* dereferenceable(24) %21)
          to label %60 unwind label %119

; <label>:60:                                     ; preds = %57
  %61 = bitcast %class.FE_Nedelec* %23 to %class.FiniteElementBase*
  %62 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %61, i32 0, i32 7
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EE4swapERS3_(%"class.std::vector"* %62, %"class.std::vector"* dereferenceable(24) %22)
          to label %63 unwind label %119

; <label>:63:                                     ; preds = %60
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev(%"class.std::vector"* %22)
          to label %64 unwind label %115

; <label>:64:                                     ; preds = %63
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev(%"class.std::vector"* %21)
          to label %65 unwind label %111

; <label>:65:                                     ; preds = %64
  ret void

; <label>:66:                                     ; preds = %46, %26, %2
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %7, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %8, align 4
  br label %109

; <label>:70:                                     ; preds = %28
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  store i8* %72, i8** %7, align 8
  %73 = extractvalue { i8*, i32 } %71, 1
  store i32 %73, i32* %8, align 4
  br label %107

; <label>:74:                                     ; preds = %45, %29
  %75 = landingpad { i8*, i32 }
          cleanup
  %76 = extractvalue { i8*, i32 } %75, 0
  store i8* %76, i8** %7, align 8
  %77 = extractvalue { i8*, i32 } %75, 1
  store i32 %77, i32* %8, align 4
  br label %106

; <label>:78:                                     ; preds = %44, %33
  %79 = landingpad { i8*, i32 }
          cleanup
  %80 = extractvalue { i8*, i32 } %79, 0
  store i8* %80, i8** %7, align 8
  %81 = extractvalue { i8*, i32 } %79, 1
  store i32 %81, i32* %8, align 4
  br label %104

; <label>:82:                                     ; preds = %35
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %7, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %8, align 4
  br label %102

; <label>:86:                                     ; preds = %43, %36
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %7, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %8, align 4
  br label %101

; <label>:90:                                     ; preds = %42, %40
  %91 = landingpad { i8*, i32 }
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  store i8* %92, i8** %7, align 8
  %93 = extractvalue { i8*, i32 } %91, 1
  store i32 %93, i32* %8, align 4
  br label %99

; <label>:94:                                     ; preds = %41
  %95 = landingpad { i8*, i32 }
          cleanup
  %96 = extractvalue { i8*, i32 } %95, 0
  store i8* %96, i8** %7, align 8
  %97 = extractvalue { i8*, i32 } %95, 1
  store i32 %97, i32* %8, align 4
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev(%"class.std::vector.23"* %14)
          to label %98 unwind label %134

; <label>:98:                                     ; preds = %94
  br label %99

; <label>:99:                                     ; preds = %98, %90
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"* %20) #12
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.7"* %17)
          to label %100 unwind label %134

; <label>:100:                                    ; preds = %99
  br label %101

; <label>:101:                                    ; preds = %100, %86
  call void @_ZNSaIbED2Ev(%"class.std::allocator.34"* %19) #12
  br label %102

; <label>:102:                                    ; preds = %101, %82
  invoke void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %16)
          to label %103 unwind label %134

; <label>:103:                                    ; preds = %102
  br label %104

; <label>:104:                                    ; preds = %103, %78
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.7"* %9)
          to label %105 unwind label %134

; <label>:105:                                    ; preds = %104
  br label %106

; <label>:106:                                    ; preds = %105, %74
  call void @_ZNSaIbED2Ev(%"class.std::allocator.34"* %13) #12
  br label %107

; <label>:107:                                    ; preds = %106, %70
  invoke void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %11)
          to label %108 unwind label %134

; <label>:108:                                    ; preds = %107
  br label %109

; <label>:109:                                    ; preds = %108, %66
  invoke void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %6)
          to label %110 unwind label %134

; <label>:110:                                    ; preds = %109
  br label %129

; <label>:111:                                    ; preds = %64, %55, %54, %53, %52, %51, %47
  %112 = landingpad { i8*, i32 }
          cleanup
  %113 = extractvalue { i8*, i32 } %112, 0
  store i8* %113, i8** %7, align 8
  %114 = extractvalue { i8*, i32 } %112, 1
  store i32 %114, i32* %8, align 4
  br label %126

; <label>:115:                                    ; preds = %63, %56
  %116 = landingpad { i8*, i32 }
          cleanup
  %117 = extractvalue { i8*, i32 } %116, 0
  store i8* %117, i8** %7, align 8
  %118 = extractvalue { i8*, i32 } %116, 1
  store i32 %118, i32* %8, align 4
  br label %124

; <label>:119:                                    ; preds = %60, %57
  %120 = landingpad { i8*, i32 }
          cleanup
  %121 = extractvalue { i8*, i32 } %120, 0
  store i8* %121, i8** %7, align 8
  %122 = extractvalue { i8*, i32 } %120, 1
  store i32 %122, i32* %8, align 4
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev(%"class.std::vector"* %22)
          to label %123 unwind label %134

; <label>:123:                                    ; preds = %119
  br label %124

; <label>:124:                                    ; preds = %123, %115
  invoke void @_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev(%"class.std::vector"* %21)
          to label %125 unwind label %134

; <label>:125:                                    ; preds = %124
  br label %126

; <label>:126:                                    ; preds = %125, %111
  %127 = bitcast %class.FE_Nedelec* %23 to %class.FiniteElement*
  invoke void @_ZN13FiniteElementILi3EED2Ev(%class.FiniteElement* %127)
          to label %128 unwind label %134

; <label>:128:                                    ; preds = %126
  br label %129

; <label>:129:                                    ; preds = %128, %110
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = insertvalue { i8*, i32 } undef, i8* %130, 0
  %133 = insertvalue { i8*, i32 } %132, i32 %131, 1
  resume { i8*, i32 } %133

; <label>:134:                                    ; preds = %126, %124, %119, %109, %107, %104, %102, %99, %94
  %135 = landingpad { i8*, i32 }
          catch i8* null
  %136 = extractvalue { i8*, i32 } %135, 0
  call void @__clang_call_terminate(i8* %136) #10
  unreachable
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EE14get_dpo_vectorEj(%"class.std::vector.28"* noalias sret, i32) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::allocator.30", align 1
  %7 = alloca i8*
  %8 = alloca i32
  store i32 %1, i32* %3, align 4
  store i1 false, i1* %4, align 1
  store i32 0, i32* %5, align 4
  call void @_ZNSaIjEC2Ev(%"class.std::allocator.30"* %6) #12
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_(%"class.std::vector.28"* %0, i64 4, i32* dereferenceable(4) %5, %"class.std::allocator.30"* dereferenceable(1) %6)
          to label %9 unwind label %14

; <label>:9:                                      ; preds = %2
  call void @_ZNSaIjED2Ev(%"class.std::allocator.30"* %6) #12
  %10 = load i32, i32* %3, align 4
  %11 = invoke dereferenceable(4) i32* @_ZNSt6vectorIjSaIjEEixEm(%"class.std::vector.28"* %0, i64 1)
          to label %12 unwind label %18

; <label>:12:                                     ; preds = %9
  store i32 %10, i32* %11, align 4
  store i1 true, i1* %4, align 1
  %13 = load i1, i1* %4, align 1
  br i1 %13, label %23, label %22

; <label>:14:                                     ; preds = %2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSaIjED2Ev(%"class.std::allocator.30"* %6) #12
  br label %25

; <label>:18:                                     ; preds = %9
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %7, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %8, align 4
  invoke void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %0)
          to label %24 unwind label %30

; <label>:22:                                     ; preds = %12
  call void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"* %0)
  br label %23

; <label>:23:                                     ; preds = %22, %12
  ret void

; <label>:24:                                     ; preds = %18
  br label %25

; <label>:25:                                     ; preds = %24, %14
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

; <label>:30:                                     ; preds = %18
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #10
  unreachable
}

declare void @_ZN17FiniteElementDataILi3EEC1ERKSt6vectorIjSaIjEEjj(%class.FiniteElementData*, %"class.std::vector.28"* dereferenceable(24), i32, i32) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIbEC2Ev(%"class.std::allocator.34"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.34"*, align 8
  store %"class.std::allocator.34"* %0, %"class.std::allocator.34"** %2, align 8
  %3 = load %"class.std::allocator.34"*, %"class.std::allocator.34"** %2, align 8
  %4 = bitcast %"class.std::allocator.34"* %3 to %"class.__gnu_cxx::new_allocator.35"*
  call void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.35"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.7"*, i64, i8* dereferenceable(1), %"class.std::allocator.34"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::vector.7"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::allocator.34"*, align 8
  %9 = alloca i8*
  %10 = alloca i32
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %"class.std::allocator.34"* %3, %"class.std::allocator.34"** %8, align 8
  %11 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  %12 = bitcast %"class.std::vector.7"* %11 to %"struct.std::_Bvector_base"*
  %13 = load %"class.std::allocator.34"*, %"class.std::allocator.34"** %8, align 8
  call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %12, %"class.std::allocator.34"* dereferenceable(1) %13)
  %14 = load i64, i64* %6, align 8
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.7"* %11, i64 %14)
          to label %15 unwind label %20

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = trunc i8 %17 to i1
  invoke void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(%"class.std::vector.7"* %11, i1 zeroext %18)
          to label %19 unwind label %20

; <label>:19:                                     ; preds = %15
  ret void

; <label>:20:                                     ; preds = %15, %4
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %9, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %10, align 4
  %24 = bitcast %"class.std::vector.7"* %11 to %"struct.std::_Bvector_base"*
  invoke void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %24)
          to label %25 unwind label %31

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

; <label>:31:                                     ; preds = %20
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt6vectorIbSaIbEEEC2Ev(%"class.std::allocator.25"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  %3 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  %4 = bitcast %"class.std::allocator.25"* %3 to %"class.__gnu_cxx::new_allocator.26"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev(%"class.__gnu_cxx::new_allocator.26"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.23"*, i64, %"class.std::vector.7"* dereferenceable(40), %"class.std::allocator.25"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::vector.23"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::vector.7"*, align 8
  %8 = alloca %"class.std::allocator.25"*, align 8
  %9 = alloca i8*
  %10 = alloca i32
  store %"class.std::vector.23"* %0, %"class.std::vector.23"** %5, align 8
  store i64 %1, i64* %6, align 8
  store %"class.std::vector.7"* %2, %"class.std::vector.7"** %7, align 8
  store %"class.std::allocator.25"* %3, %"class.std::allocator.25"** %8, align 8
  %11 = load %"class.std::vector.23"*, %"class.std::vector.23"** %5, align 8
  %12 = bitcast %"class.std::vector.23"* %11 to %"struct.std::_Vector_base.24"*
  %13 = load i64, i64* %6, align 8
  %14 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %8, align 8
  %15 = call i64 @_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_S_check_init_lenEmRKS2_(i64 %13, %"class.std::allocator.25"* dereferenceable(1) %14)
  %16 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %8, align 8
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2EmRKS3_(%"struct.std::_Vector_base.24"* %12, i64 %15, %"class.std::allocator.25"* dereferenceable(1) %16)
  %17 = load i64, i64* %6, align 8
  %18 = load %"class.std::vector.7"*, %"class.std::vector.7"** %7, align 8
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.23"* %11, i64 %17, %"class.std::vector.7"* dereferenceable(40) %18)
          to label %19 unwind label %20

; <label>:19:                                     ; preds = %4
  ret void

; <label>:20:                                     ; preds = %4
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %9, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %10, align 4
  %24 = bitcast %"class.std::vector.23"* %11 to %"struct.std::_Vector_base.24"*
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.24"* %24)
          to label %25 unwind label %31

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

; <label>:31:                                     ; preds = %20
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #10
  unreachable
}

declare void @_ZN13FiniteElementILi3EEC2ERK17FiniteElementDataILi3EERKSt6vectorIbSaIbEERKS5_IS7_SaIS7_EE(%class.FiniteElement*, %class.FiniteElementData* dereferenceable(52), %"class.std::vector.7"* dereferenceable(40), %"class.std::vector.23"* dereferenceable(24)) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev(%"class.std::vector.23"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.23"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::vector.23"* %0, %"class.std::vector.23"** %2, align 8
  %5 = load %"class.std::vector.23"*, %"class.std::vector.23"** %2, align 8
  %6 = bitcast %"class.std::vector.23"* %5 to %"struct.std::_Vector_base.24"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %"class.std::vector.7"*, %"class.std::vector.7"** %9, align 8
  %11 = bitcast %"class.std::vector.23"* %5 to %"struct.std::_Vector_base.24"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %12 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %"class.std::vector.7"*, %"class.std::vector.7"** %14, align 8
  %16 = bitcast %"class.std::vector.23"* %5 to %"struct.std::_Vector_base.24"*
  %17 = invoke dereferenceable(1) %"class.std::allocator.25"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.24"* %16)
          to label %18 unwind label %21

; <label>:18:                                     ; preds = %1
  invoke void @_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E(%"class.std::vector.7"* %10, %"class.std::vector.7"* %15, %"class.std::allocator.25"* dereferenceable(1) %17)
          to label %19 unwind label %21

; <label>:19:                                     ; preds = %18
  %20 = bitcast %"class.std::vector.23"* %5 to %"struct.std::_Vector_base.24"*
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.24"* %20)
  ret void

; <label>:21:                                     ; preds = %18, %1
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %3, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %4, align 4
  %25 = bitcast %"class.std::vector.23"* %5 to %"struct.std::_Vector_base.24"*
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.24"* %25)
          to label %26 unwind label %32

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

; <label>:32:                                     ; preds = %21
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #10
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #12
  call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  %3 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  %4 = bitcast %"class.std::allocator.25"* %3 to %"class.__gnu_cxx::new_allocator.26"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev(%"class.__gnu_cxx::new_allocator.26"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.7"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %2, align 8
  %3 = load %"class.std::vector.7"*, %"class.std::vector.7"** %2, align 8
  %4 = bitcast %"class.std::vector.7"* %3 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIbED2Ev(%"class.std::allocator.34"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.34"*, align 8
  store %"class.std::allocator.34"* %0, %"class.std::allocator.34"** %2, align 8
  %3 = load %"class.std::allocator.34"*, %"class.std::allocator.34"** %2, align 8
  %4 = bitcast %"class.std::allocator.34"* %3 to %"class.__gnu_cxx::new_allocator.35"*
  call void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.35"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEED2Ev(%"class.std::vector.28"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.28"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::vector.28"* %0, %"class.std::vector.28"** %2, align 8
  %5 = load %"class.std::vector.28"*, %"class.std::vector.28"** %2, align 8
  %6 = bitcast %"class.std::vector.28"* %5 to %"struct.std::_Vector_base.29"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %7 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast %"class.std::vector.28"* %5 to %"struct.std::_Vector_base.29"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %12 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast %"class.std::vector.28"* %5 to %"struct.std::_Vector_base.29"*
  %17 = invoke dereferenceable(1) %"class.std::allocator.30"* @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.29"* %16)
          to label %18 unwind label %21

; <label>:18:                                     ; preds = %1
  invoke void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(i32* %10, i32* %15, %"class.std::allocator.30"* dereferenceable(1) %17)
          to label %19 unwind label %21

; <label>:19:                                     ; preds = %18
  %20 = bitcast %"class.std::vector.28"* %5 to %"struct.std::_Vector_base.29"*
  call void @_ZNSt12_Vector_baseIjSaIjEED2Ev(%"struct.std::_Vector_base.29"* %20)
  ret void

; <label>:21:                                     ; preds = %18, %1
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %3, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %4, align 4
  %25 = bitcast %"class.std::vector.28"* %5 to %"struct.std::_Vector_base.29"*
  invoke void @_ZNSt12_Vector_baseIjSaIjEED2Ev(%"struct.std::_Vector_base.29"* %25)
          to label %26 unwind label %32

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

; <label>:32:                                     ; preds = %21
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #10
  unreachable
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EE22initialize_constraintsEv(%class.FE_Nedelec*) #0 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca %class.TableIndices, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %4 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %5 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @_ZN10FE_NedelecILi3EE8Matrices21n_constraint_matricesE, align 4
  %8 = add i32 %7, 1
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %1
  %11 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %12 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %11, i32 0, i32 5
  %13 = bitcast %class.FullMatrix* %12 to %class.TableBase*
  %14 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %15 = call i64 @_ZNK17FiniteElementBaseILi3EE26interface_constraints_sizeEv(%class.FiniteElementBase* %14)
  %16 = getelementptr inbounds %class.TableIndices, %class.TableIndices* %3, i32 0, i32 0
  %17 = getelementptr inbounds %class.TableIndicesBase, %class.TableIndicesBase* %16, i32 0, i32 0
  %18 = bitcast [2 x i32]* %17 to i64*
  store i64 %15, i64* %18, align 4
  call void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%class.TableBase* %13, %class.TableIndices* dereferenceable(8) %3)
  %19 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %20 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %19, i32 0, i32 5
  %21 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x double*], [0 x double*]* @_ZN10FE_NedelecILi3EE8Matrices19constraint_matricesE, i64 0, i64 %24
  %26 = load double*, double** %25, align 8
  call void @_ZN10FullMatrixIdE4fillIdEEvPKT_(%class.FullMatrix* %20, double* %26)
  br label %27

; <label>:27:                                     ; preds = %10, %1
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EE20initialize_embeddingEv(%class.FE_Nedelec*) #0 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %7 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %8 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_ZN10FE_NedelecILi3EE8Matrices20n_embedding_matricesE, align 4
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %99

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x [8 x double*]], [0 x [8 x double*]]* @_ZN10FE_NedelecILi3EE8Matrices9embeddingE, i64 0, i64 %17
  %19 = getelementptr inbounds [8 x double*], [8 x double*]* %18, i64 0, i64 0
  %20 = load double*, double** %19, align 8
  %21 = icmp ne double* %20, null
  br i1 %21, label %22, label %99

; <label>:22:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  br label %23

; <label>:23:                                     ; preds = %95, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp ult i32 %24, 8
  br i1 %25, label %26, label %98

; <label>:26:                                     ; preds = %23
  %27 = bitcast %class.FE_Nedelec* %7 to %class.FiniteElementBase*
  %28 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %27, i32 0, i32 4
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %28, i64 0, i64 %30
  %32 = bitcast %class.FullMatrix* %31 to %class.Table*
  %33 = bitcast %class.FE_Nedelec* %7 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  %35 = bitcast i8* %34 to %class.FiniteElementData*
  %36 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %class.FE_Nedelec* %7 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  %40 = bitcast i8* %39 to %class.FiniteElementData*
  %41 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  call void @_ZN5TableILi2EdE6reinitEjj(%class.Table* %32, i32 %37, i32 %42)
  %43 = bitcast %class.FE_Nedelec* %7 to %class.FiniteElementBase*
  %44 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %43, i32 0, i32 4
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %44, i64 0, i64 %46
  %48 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x [8 x double*]], [0 x [8 x double*]]* @_ZN10FE_NedelecILi3EE8Matrices9embeddingE, i64 0, i64 %51
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [8 x double*], [8 x double*]* %52, i64 0, i64 %54
  %56 = load double*, double** %55, align 8
  call void @_ZN10FullMatrixIdE4fillIdEEvPKT_(%class.FullMatrix* %47, double* %56)
  store i32 0, i32* %4, align 4
  br label %57

; <label>:57:                                     ; preds = %91, %26
  %58 = load i32, i32* %4, align 4
  %59 = bitcast %class.FE_Nedelec* %7 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i64 24
  %61 = bitcast i8* %60 to %class.FiniteElementData*
  %62 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %58, %63
  br i1 %64, label %65, label %94

; <label>:65:                                     ; preds = %57
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %66

; <label>:66:                                     ; preds = %87, %65
  %67 = load i32, i32* %6, align 4
  %68 = bitcast %class.FE_Nedelec* %7 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 24
  %70 = bitcast i8* %69 to %class.FiniteElementData*
  %71 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %67, %72
  br i1 %73, label %74, label %90

; <label>:74:                                     ; preds = %66
  %75 = bitcast %class.FE_Nedelec* %7 to %class.FiniteElementBase*
  %76 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %75, i32 0, i32 4
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %76, i64 0, i64 %78
  %80 = bitcast %class.FullMatrix* %79 to %class.Table*
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %80, i32 %81, i32 %82)
  %84 = load double, double* %83, align 8
  %85 = load double, double* %5, align 8
  %86 = fadd double %85, %84
  store double %86, double* %5, align 8
  br label %87

; <label>:87:                                     ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %66

; <label>:90:                                     ; preds = %66
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %57

; <label>:94:                                     ; preds = %57
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %23

; <label>:98:                                     ; preds = %23
  br label %99

; <label>:99:                                     ; preds = %98, %13, %1
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EE22initialize_restrictionEv(%class.FE_Nedelec*) #0 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %4 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %5 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %92 [
    i32 1, label %7
  ]

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %28, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %8
  %12 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %13 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %12, i32 0, i32 3
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %13, i64 0, i64 %15
  %17 = bitcast %class.FullMatrix* %16 to %class.Table*
  %18 = bitcast %class.FE_Nedelec* %4 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 24
  %20 = bitcast i8* %19 to %class.FiniteElementData*
  %21 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = bitcast %class.FE_Nedelec* %4 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 24
  %25 = bitcast i8* %24 to %class.FiniteElementData*
  %26 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  call void @_ZN5TableILi2EdE6reinitEjj(%class.Table* %17, i32 %22, i32 %27)
  br label %28

; <label>:28:                                     ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %8

; <label>:31:                                     ; preds = %8
  %32 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %33 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %32, i32 0, i32 3
  %34 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %33, i64 0, i64 0
  %35 = bitcast %class.FullMatrix* %34 to %class.Table*
  %36 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %35, i32 0, i32 0)
  store double 2.000000e+00, double* %36, align 8
  %37 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %38 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %37, i32 0, i32 3
  %39 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %38, i64 0, i64 0
  %40 = bitcast %class.FullMatrix* %39 to %class.Table*
  %41 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %40, i32 3, i32 3)
  store double 2.000000e+00, double* %41, align 8
  %42 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %43 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %42, i32 0, i32 3
  %44 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %43, i64 0, i64 1
  %45 = bitcast %class.FullMatrix* %44 to %class.Table*
  %46 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %45, i32 1, i32 1)
  store double 2.000000e+00, double* %46, align 8
  %47 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %48 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %47, i32 0, i32 3
  %49 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %48, i64 0, i64 3
  %50 = bitcast %class.FullMatrix* %49 to %class.Table*
  %51 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %50, i32 2, i32 2)
  store double 2.000000e+00, double* %51, align 8
  %52 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %53 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %52, i32 0, i32 3
  %54 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %53, i64 0, i64 4
  %55 = bitcast %class.FullMatrix* %54 to %class.Table*
  %56 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %55, i32 4, i32 4)
  store double 2.000000e+00, double* %56, align 8
  %57 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %58 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %57, i32 0, i32 3
  %59 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %58, i64 0, i64 4
  %60 = bitcast %class.FullMatrix* %59 to %class.Table*
  %61 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %60, i32 7, i32 7)
  store double 2.000000e+00, double* %61, align 8
  %62 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %63 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %62, i32 0, i32 3
  %64 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %63, i64 0, i64 5
  %65 = bitcast %class.FullMatrix* %64 to %class.Table*
  %66 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %65, i32 5, i32 5)
  store double 2.000000e+00, double* %66, align 8
  %67 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %68 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %67, i32 0, i32 3
  %69 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %68, i64 0, i64 7
  %70 = bitcast %class.FullMatrix* %69 to %class.Table*
  %71 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %70, i32 6, i32 6)
  store double 2.000000e+00, double* %71, align 8
  %72 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %73 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %72, i32 0, i32 3
  %74 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %73, i64 0, i64 0
  %75 = bitcast %class.FullMatrix* %74 to %class.Table*
  %76 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %75, i32 8, i32 8)
  store double 2.000000e+00, double* %76, align 8
  %77 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %78 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %77, i32 0, i32 3
  %79 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %78, i64 0, i64 1
  %80 = bitcast %class.FullMatrix* %79 to %class.Table*
  %81 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %80, i32 9, i32 9)
  store double 2.000000e+00, double* %81, align 8
  %82 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %83 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %82, i32 0, i32 3
  %84 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %83, i64 0, i64 2
  %85 = bitcast %class.FullMatrix* %84 to %class.Table*
  %86 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %85, i32 10, i32 10)
  store double 2.000000e+00, double* %86, align 8
  %87 = bitcast %class.FE_Nedelec* %4 to %class.FiniteElementBase*
  %88 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %87, i32 0, i32 3
  %89 = getelementptr inbounds [8 x %class.FullMatrix], [8 x %class.FullMatrix]* %88, i64 0, i64 3
  %90 = bitcast %class.FullMatrix* %89 to %class.Table*
  %91 = call dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table* %90, i32 11, i32 11)
  store double 2.000000e+00, double* %91, align 8
  br label %93

; <label>:92:                                     ; preds = %1
  br label %93

; <label>:93:                                     ; preds = %92, %31
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EE30initialize_unit_support_pointsEv(%class.FE_Nedelec*) #0 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca %class.Point, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.Point, align 8
  %8 = alloca %class.Point, align 8
  %9 = alloca %class.Point, align 8
  %10 = alloca %class.Point, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %11 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %12 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 1, label %14
  ]

; <label>:14:                                     ; preds = %1
  %15 = bitcast %class.FE_Nedelec* %11 to %class.FiniteElementBase*
  %16 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %15, i32 0, i32 12
  call void @_ZN5PointILi3EEC2Ev(%class.Point* %3)
  call void @_ZNSt6vectorI5PointILi3EESaIS1_EE6resizeEmS1_(%"class.std::vector.11"* %16, i64 12, %class.Point* %3)
  store i32 0, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %34, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %18, 12
  br i1 %19, label %20, label %37

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @_ZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjj(i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @_ZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjj(i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  call void @_ZN12GeometryInfoILi3EE16unit_cell_vertexEj(%class.Point* sret %7, i32 %25)
  %26 = load i32, i32* %6, align 4
  call void @_ZN12GeometryInfoILi3EE16unit_cell_vertexEj(%class.Point* sret %8, i32 %26)
  %27 = bitcast %class.Point* %8 to %class.Tensor*
  call void @_ZNK5PointILi3EEplERK6TensorILi1ELi3EE(%class.Point* sret %10, %class.Point* %7, %class.Tensor* dereferenceable(24) %27)
  call void @_ZNK5PointILi3EEdvEd(%class.Point* sret %9, %class.Point* %10, double 2.000000e+00)
  %28 = bitcast %class.FE_Nedelec* %11 to %class.FiniteElementBase*
  %29 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %28, i32 0, i32 12
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = call dereferenceable(24) %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EEixEm(%"class.std::vector.11"* %29, i64 %31)
  %33 = call dereferenceable(24) %class.Point* @_ZN5PointILi3EEaSERKS0_(%class.Point* %32, %class.Point* dereferenceable(24) %9)
  br label %34

; <label>:34:                                     ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %17

; <label>:37:                                     ; preds = %17
  br label %39

; <label>:38:                                     ; preds = %1
  br label %39

; <label>:39:                                     ; preds = %38, %37
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZN10FE_NedelecILi3EE35initialize_unit_face_support_pointsEv(%class.FE_Nedelec*) #0 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca %class.Point.21, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.Point.21, align 8
  %8 = alloca %class.Point.21, align 8
  %9 = alloca %class.Point.21, align 8
  %10 = alloca %class.Point.21, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %11 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %12 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 1, label %14
  ]

; <label>:14:                                     ; preds = %1
  %15 = bitcast %class.FE_Nedelec* %11 to %class.FiniteElementBase*
  %16 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %15, i32 0, i32 13
  call void @_ZN5PointILi2EEC2Ev(%class.Point.21* %3)
  call void @_ZNSt6vectorI5PointILi2EESaIS1_EE6resizeEmS1_(%"class.std::vector.16"* %16, i64 4, %class.Point.21* %3)
  store i32 0, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %34, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %37

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @_ZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjj(i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @_ZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjj(i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  call void @_ZN12GeometryInfoILi2EE16unit_cell_vertexEj(%class.Point.21* sret %7, i32 %25)
  %26 = load i32, i32* %6, align 4
  call void @_ZN12GeometryInfoILi2EE16unit_cell_vertexEj(%class.Point.21* sret %8, i32 %26)
  %27 = bitcast %class.Point.21* %8 to %class.Tensor.22*
  call void @_ZNK5PointILi2EEplERK6TensorILi1ELi2EE(%class.Point.21* sret %10, %class.Point.21* %7, %class.Tensor.22* dereferenceable(16) %27)
  call void @_ZNK5PointILi2EEdvEd(%class.Point.21* sret %9, %class.Point.21* %10, double 2.000000e+00)
  %28 = bitcast %class.FE_Nedelec* %11 to %class.FiniteElementBase*
  %29 = getelementptr inbounds %class.FiniteElementBase, %class.FiniteElementBase* %28, i32 0, i32 13
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = call dereferenceable(16) %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EEixEm(%"class.std::vector.16"* %29, i64 %31)
  %33 = call dereferenceable(16) %class.Point.21* @_ZN5PointILi2EEaSERKS0_(%class.Point.21* %32, %class.Point.21* dereferenceable(16) %9)
  br label %34

; <label>:34:                                     ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %17

; <label>:37:                                     ; preds = %17
  br label %39

; <label>:38:                                     ; preds = %1
  br label %39

; <label>:39:                                     ; preds = %38, %37
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIjjESaIS1_EEC2Ev(%"class.std::vector"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2Ev(%"struct.std::_Vector_base"* %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIjjESaIS1_EE4swapERS3_(%"class.std::vector"*, %"class.std::vector"* dereferenceable(24)) #0 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %11 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_swap_dataERS4_(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %8, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* dereferenceable(24) %12)
  %13 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %14 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %13)
  %15 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %16 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %17 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %16)
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIjjEES2_E10_S_on_swapERS3_S5_(%"class.std::allocator"* dereferenceable(1) %14, %"class.std::allocator"* dereferenceable(1) %17)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev(%"class.std::vector"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %9, align 8
  %11 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %12 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %"struct.std::pair"*, %"struct.std::pair"** %14, align 8
  %16 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %17 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %16)
          to label %18 unwind label %21

; <label>:18:                                     ; preds = %1
  invoke void @_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E(%"struct.std::pair"* %10, %"struct.std::pair"* %15, %"class.std::allocator"* dereferenceable(1) %17)
          to label %19 unwind label %21

; <label>:19:                                     ; preds = %18
  %20 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EED2Ev(%"struct.std::_Vector_base"* %20)
  ret void

; <label>:21:                                     ; preds = %18, %1
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %3, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %4, align 4
  %25 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EED2Ev(%"struct.std::_Vector_base"* %25)
          to label %26 unwind label %32

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

; <label>:32:                                     ; preds = %21
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #10
  unreachable
}

declare void @_ZN13FiniteElementILi3EED2Ev(%class.FiniteElement*) unnamed_addr #2

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK10FE_NedelecILi3EE8get_nameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret, %class.FE_Nedelec*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.FE_Nedelec*, align 8
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %class.FE_Nedelec* %1, %class.FE_Nedelec** %3, align 8
  %7 = load %class.FE_Nedelec*, %class.FE_Nedelec** %3, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_ostringstream"* %4)
  %8 = bitcast %"class.std::__cxx11::basic_ostringstream"* %4 to %"class.std::basic_ostream"*
  %9 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
          to label %10 unwind label %22

; <label>:10:                                     ; preds = %2
  %11 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %9, i32 3)
          to label %12 unwind label %22

; <label>:12:                                     ; preds = %10
  %13 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
          to label %14 unwind label %22

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %7, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %13, i32 %16)
          to label %18 unwind label %22

; <label>:18:                                     ; preds = %14
  %19 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
          to label %20 unwind label %22

; <label>:20:                                     ; preds = %18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %0, %"class.std::__cxx11::basic_ostringstream"* %4)
          to label %21 unwind label %22

; <label>:21:                                     ; preds = %20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %4)
  ret void

; <label>:22:                                     ; preds = %20, %18, %14, %12, %10, %2
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %5, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %6, align 4
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %4)
          to label %26 unwind label %32

; <label>:26:                                     ; preds = %22
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

; <label>:32:                                     ; preds = %22
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #10
  unreachable
}

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_ostringstream"*) unnamed_addr #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #2

declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret, %"class.std::__cxx11::basic_ostringstream"*) #2

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"*) unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define weak_odr i32 @_ZNK10FE_NedelecILi3EE10get_degreeEv(%class.FE_Nedelec*) #1 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %3 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %4 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define weak_odr i32 @_ZNK10FE_NedelecILi3EE15n_base_elementsEv(%class.FE_Nedelec*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %3 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define weak_odr dereferenceable(1160) %class.FiniteElement* @_ZNK10FE_NedelecILi3EE12base_elementEj(%class.FE_Nedelec*, i32) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.FE_Nedelec*, align 8
  %4 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.FE_Nedelec*, %class.FE_Nedelec** %3, align 8
  %6 = bitcast %class.FE_Nedelec* %5 to %class.FiniteElement*
  ret %class.FiniteElement* %6
}

; Function Attrs: noinline nounwind uwtable
define weak_odr i32 @_ZNK10FE_NedelecILi3EE20element_multiplicityEj(%class.FE_Nedelec*, i32) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.FE_Nedelec*, align 8
  %4 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.FE_Nedelec*, %class.FE_Nedelec** %3, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define weak_odr zeroext i1 @_ZNK10FE_NedelecILi3EE19has_support_on_faceEjj(%class.FE_Nedelec*, i32, i32) unnamed_addr #1 comdat align 2 {
  %4 = alloca i1, align 1
  %5 = alloca %class.FE_Nedelec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %class.FE_Nedelec*, %class.FE_Nedelec** %5, align 8
  %9 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %29 [
    i32 1, label %11
  ]

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [12 x [2 x i32]], [12 x [2 x i32]]* @_ZZNK10FE_NedelecILi3EE19has_support_on_faceEjjE14opposite_faces, i64 0, i64 %14
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %12, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [12 x [2 x i32]], [12 x [2 x i32]]* @_ZZNK10FE_NedelecILi3EE19has_support_on_faceEjjE14opposite_faces, i64 0, i64 %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %20, %25
  br label %27

; <label>:27:                                     ; preds = %19, %11
  %28 = phi i1 [ false, %11 ], [ %26, %19 ]
  store i1 %28, i1* %4, align 1
  br label %31

; <label>:29:                                     ; preds = %3
  br label %30

; <label>:30:                                     ; preds = %29
  store i1 true, i1* %4, align 1
  br label %31

; <label>:31:                                     ; preds = %30, %27
  %32 = load i1, i1* %4, align 1
  ret i1 %32
}

; Function Attrs: noinline nounwind uwtable
define weak_odr i32 @_ZNK10FE_NedelecILi3EE18memory_consumptionEv(%class.FE_Nedelec*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %3 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  ret i32 0
}

; Function Attrs: noinline uwtable
define weak_odr %class.FiniteElement* @_ZNK10FE_NedelecILi3EE5cloneEv(%class.FE_Nedelec*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %5 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %6 = call i8* @_Znwm(i64 1160) #13
  %7 = bitcast i8* %6 to %class.FE_Nedelec*
  %8 = getelementptr inbounds %class.FE_Nedelec, %class.FE_Nedelec* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  invoke void @_ZN10FE_NedelecILi3EEC1Ej(%class.FE_Nedelec* %7, i32 %9)
          to label %10 unwind label %12

; <label>:10:                                     ; preds = %1
  %11 = bitcast %class.FE_Nedelec* %7 to %class.FiniteElement*
  ret %class.FiniteElement* %11

; <label>:12:                                     ; preds = %1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %3, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %4, align 4
  call void @_ZdlPv(i8* %6) #14
  br label %16

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: noinline uwtable
define weak_odr %"class.Mapping<3>::InternalDataBase"* @_ZNK10FE_NedelecILi3EE8get_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi3EE(%class.FE_Nedelec*, i32, %class.Mapping* dereferenceable(24), %class.Quadrature* dereferenceable(80)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %class.FE_Nedelec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %class.Mapping*, align 8
  %8 = alloca %class.Quadrature*, align 8
  %9 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %10 = alloca i8*
  %11 = alloca i32
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  %18 = alloca i32, align 4
  %19 = alloca %class.Tensor, align 8
  %20 = alloca %"class.internal::TableBaseAccessors::Accessor.58", align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %5, align 8
  store i32 %1, i32* %6, align 4
  store %class.Mapping* %2, %class.Mapping** %7, align 8
  store %class.Quadrature* %3, %class.Quadrature** %8, align 8
  %21 = load %class.FE_Nedelec*, %class.FE_Nedelec** %5, align 8
  %22 = call i8* @_Znwm(i64 160) #13
  %23 = bitcast i8* %22 to %"class.FE_Nedelec<3>::InternalData"*
  invoke void @_ZN10FE_NedelecILi3EE12InternalDataC2Ev(%"class.FE_Nedelec<3>::InternalData"* %23)
          to label %24 unwind label %74

; <label>:24:                                     ; preds = %4
  store %"class.FE_Nedelec<3>::InternalData"* %23, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %25 = bitcast %class.FE_Nedelec* %21 to i32 (%class.FE_Nedelec*, i32)***
  %26 = load i32 (%class.FE_Nedelec*, i32)**, i32 (%class.FE_Nedelec*, i32)*** %25, align 8
  %27 = getelementptr inbounds i32 (%class.FE_Nedelec*, i32)*, i32 (%class.FE_Nedelec*, i32)** %26, i64 17
  %28 = load i32 (%class.FE_Nedelec*, i32)*, i32 (%class.FE_Nedelec*, i32)** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %28(%class.FE_Nedelec* %21, i32 %29)
  %31 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %32 = bitcast %"class.FE_Nedelec<3>::InternalData"* %31 to %"class.Mapping<3>::InternalDataBase"*
  %33 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = bitcast %class.FE_Nedelec* %21 to i32 (%class.FE_Nedelec*, i32)***
  %35 = load i32 (%class.FE_Nedelec*, i32)**, i32 (%class.FE_Nedelec*, i32)*** %34, align 8
  %36 = getelementptr inbounds i32 (%class.FE_Nedelec*, i32)*, i32 (%class.FE_Nedelec*, i32)** %35, i64 18
  %37 = load i32 (%class.FE_Nedelec*, i32)*, i32 (%class.FE_Nedelec*, i32)** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 %37(%class.FE_Nedelec* %21, i32 %38)
  %40 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %41 = bitcast %"class.FE_Nedelec<3>::InternalData"* %40 to %"class.Mapping<3>::InternalDataBase"*
  %42 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %44 = bitcast %"class.FE_Nedelec<3>::InternalData"* %43 to %"class.Mapping<3>::InternalDataBase"*
  %45 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %48 = bitcast %"class.FE_Nedelec<3>::InternalData"* %47 to %"class.Mapping<3>::InternalDataBase"*
  %49 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @_Zor11UpdateFlagsS_(i32 %46, i32 %50)
  %52 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %53 = bitcast %"class.FE_Nedelec<3>::InternalData"* %52 to %"class.Mapping<3>::InternalDataBase"*
  %54 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %56 = bitcast %"class.FE_Nedelec<3>::InternalData"* %55 to %"class.Mapping<3>::InternalDataBase"*
  %57 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  %59 = load %class.Quadrature*, %class.Quadrature** %8, align 8
  %60 = getelementptr inbounds %class.Quadrature, %class.Quadrature* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @_Zan11UpdateFlagsS_(i32 %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

; <label>:65:                                     ; preds = %24
  %66 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %67 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %66, i32 0, i32 1
  %68 = bitcast %class.FE_Nedelec* %21 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 24
  %70 = bitcast i8* %69 to %class.FiniteElementData*
  %71 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %13, align 4
  call void @_ZN5TableILi2E6TensorILi1ELi3EEE6reinitEjj(%class.Table.50* %67, i32 %72, i32 %73)
  br label %78

; <label>:74:                                     ; preds = %4
  %75 = landingpad { i8*, i32 }
          cleanup
  %76 = extractvalue { i8*, i32 } %75, 0
  store i8* %76, i8** %10, align 8
  %77 = extractvalue { i8*, i32 } %75, 1
  store i32 %77, i32* %11, align 4
  call void @_ZdlPv(i8* %22) #14
  br label %186

; <label>:78:                                     ; preds = %65, %24
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @_Zan11UpdateFlagsS_(i32 %79, i32 2)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

; <label>:82:                                     ; preds = %78
  %83 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %84 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %83, i32 0, i32 2
  %85 = bitcast %class.FE_Nedelec* %21 to i8*
  %86 = getelementptr inbounds i8, i8* %85, i64 24
  %87 = bitcast i8* %86 to %class.FiniteElementData*
  %88 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %13, align 4
  call void @_ZN5TableILi2E6TensorILi2ELi3EEE6reinitEjj(%class.Table.54* %84, i32 %89, i32 %90)
  br label %91

; <label>:91:                                     ; preds = %82, %78
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @_Zan11UpdateFlagsS_(i32 %92, i32 4)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

; <label>:95:                                     ; preds = %91
  %96 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %97 = bitcast %"class.FE_Nedelec<3>::InternalData"* %96 to %"class.FiniteElementBase<3>::InternalDataBase"*
  %98 = bitcast %class.FE_Nedelec* %21 to %class.FiniteElement*
  %99 = load %class.Mapping*, %class.Mapping** %7, align 8
  %100 = load %class.Quadrature*, %class.Quadrature** %8, align 8
  call void @_ZN17FiniteElementBaseILi3EE16InternalDataBase14initialize_2ndEPK13FiniteElementILi3EERK7MappingILi3EERK10QuadratureILi3EE(%"class.FiniteElementBase<3>::InternalDataBase"* %97, %class.FiniteElement* %98, %class.Mapping* dereferenceable(24) %99, %class.Quadrature* dereferenceable(80) %100)
  br label %101

; <label>:101:                                    ; preds = %95, %91
  store i32 0, i32* %14, align 4
  br label %102

; <label>:102:                                    ; preds = %180, %101
  %103 = load i32, i32* %14, align 4
  %104 = bitcast %class.FE_Nedelec* %21 to i8*
  %105 = getelementptr inbounds i8, i8* %104, i64 24
  %106 = bitcast i8* %105 to %class.FiniteElementData*
  %107 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %103, %108
  br i1 %109, label %110, label %183

; <label>:110:                                    ; preds = %102
  store i32 0, i32* %15, align 4
  br label %111

; <label>:111:                                    ; preds = %176, %110
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %179

; <label>:115:                                    ; preds = %111
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @_Zan11UpdateFlagsS_(i32 %116, i32 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

; <label>:119:                                    ; preds = %115
  store i32 0, i32* %16, align 4
  br label %120

; <label>:120:                                    ; preds = %141, %119
  %121 = load i32, i32* %16, align 4
  %122 = icmp ult i32 %121, 3
  br i1 %122, label %123, label %144

; <label>:123:                                    ; preds = %120
  %124 = bitcast %class.FE_Nedelec* %21 to double (%class.FE_Nedelec*, i32, %class.Point*, i32)***
  %125 = load double (%class.FE_Nedelec*, i32, %class.Point*, i32)**, double (%class.FE_Nedelec*, i32, %class.Point*, i32)*** %124, align 8
  %126 = getelementptr inbounds double (%class.FE_Nedelec*, i32, %class.Point*, i32)*, double (%class.FE_Nedelec*, i32, %class.Point*, i32)** %125, i64 4
  %127 = load double (%class.FE_Nedelec*, i32, %class.Point*, i32)*, double (%class.FE_Nedelec*, i32, %class.Point*, i32)** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load %class.Quadrature*, %class.Quadrature** %8, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call dereferenceable(24) %class.Point* @_ZNK10QuadratureILi3EE5pointEj(%class.Quadrature* %129, i32 %130)
  %132 = load i32, i32* %16, align 4
  %133 = call double %127(%class.FE_Nedelec* %21, i32 %128, %class.Point* dereferenceable(24) %131, i32 %132)
  %134 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %135 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %134, i32 0, i32 1
  %136 = load i32, i32* %14, align 4
  call void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %17, %class.Table.50* %135, i32 %136)
  %137 = load i32, i32* %15, align 4
  %138 = call dereferenceable(24) %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor"* %17, i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = call dereferenceable(8) double* @_ZN6TensorILi1ELi3EEixEj(%class.Tensor* %138, i32 %139)
  store double %133, double* %140, align 8
  br label %141

; <label>:141:                                    ; preds = %123
  %142 = load i32, i32* %16, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %120

; <label>:144:                                    ; preds = %120
  br label %145

; <label>:145:                                    ; preds = %144, %115
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @_Zan11UpdateFlagsS_(i32 %146, i32 2)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %175

; <label>:149:                                    ; preds = %145
  store i32 0, i32* %18, align 4
  br label %150

; <label>:150:                                    ; preds = %171, %149
  %151 = load i32, i32* %18, align 4
  %152 = icmp ult i32 %151, 3
  br i1 %152, label %153, label %174

; <label>:153:                                    ; preds = %150
  %154 = bitcast %class.FE_Nedelec* %21 to void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)***
  %155 = load void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)**, void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)*** %154, align 8
  %156 = getelementptr inbounds void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)*, void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)** %155, i64 6
  %157 = load void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)*, void (%class.Tensor*, %class.FE_Nedelec*, i32, %class.Point*, i32)** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load %class.Quadrature*, %class.Quadrature** %8, align 8
  %160 = load i32, i32* %15, align 4
  %161 = call dereferenceable(24) %class.Point* @_ZNK10QuadratureILi3EE5pointEj(%class.Quadrature* %159, i32 %160)
  %162 = load i32, i32* %18, align 4
  call void %157(%class.Tensor* sret %19, %class.FE_Nedelec* %21, i32 %158, %class.Point* dereferenceable(24) %161, i32 %162)
  %163 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %164 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %163, i32 0, i32 2
  %165 = load i32, i32* %14, align 4
  call void @_ZN5TableILi2E6TensorILi2ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor.58"* sret %20, %class.Table.54* %164, i32 %165)
  %166 = load i32, i32* %15, align 4
  %167 = call dereferenceable(72) %class.Tensor.33* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor.58"* %20, i32 %166)
  %168 = load i32, i32* %18, align 4
  %169 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi2ELi3EEixEj(%class.Tensor.33* %167, i32 %168)
  %170 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %169, %class.Tensor* dereferenceable(24) %19)
  br label %171

; <label>:171:                                    ; preds = %153
  %172 = load i32, i32* %18, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %150

; <label>:174:                                    ; preds = %150
  br label %175

; <label>:175:                                    ; preds = %174, %145
  br label %176

; <label>:176:                                    ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %111

; <label>:179:                                    ; preds = %111
  br label %180

; <label>:180:                                    ; preds = %179
  %181 = load i32, i32* %14, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %102

; <label>:183:                                    ; preds = %102
  %184 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %9, align 8
  %185 = bitcast %"class.FE_Nedelec<3>::InternalData"* %184 to %"class.Mapping<3>::InternalDataBase"*
  ret %"class.Mapping<3>::InternalDataBase"* %185

; <label>:186:                                    ; preds = %74
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* %11, align 4
  %189 = insertvalue { i8*, i32 } undef, i8* %187, 0
  %190 = insertvalue { i8*, i32 } %189, i32 %188, 1
  resume { i8*, i32 } %190
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EE12InternalDataC2Ev(%"class.FE_Nedelec<3>::InternalData"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.FE_Nedelec<3>::InternalData"* %0, %"class.FE_Nedelec<3>::InternalData"** %2, align 8
  %5 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %2, align 8
  %6 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to %"class.FiniteElementBase<3>::InternalDataBase"*
  call void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseC2Ev(%"class.FiniteElementBase<3>::InternalDataBase"* %6)
  %7 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN10FE_NedelecILi3EE12InternalDataE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %5, i32 0, i32 1
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEC2Ev(%class.Table.50* %8)
          to label %9 unwind label %12

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %5, i32 0, i32 2
  invoke void @_ZN5TableILi2E6TensorILi2ELi3EEEC2Ev(%class.Table.54* %10)
          to label %11 unwind label %16

; <label>:11:                                     ; preds = %9
  ret void

; <label>:12:                                     ; preds = %1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %3, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %4, align 4
  br label %21

; <label>:16:                                     ; preds = %9
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %3, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %4, align 4
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEED2Ev(%class.Table.50* %8)
          to label %20 unwind label %29

; <label>:20:                                     ; preds = %16
  br label %21

; <label>:21:                                     ; preds = %20, %12
  %22 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to %"class.FiniteElementBase<3>::InternalDataBase"*
  invoke void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD2Ev(%"class.FiniteElementBase<3>::InternalDataBase"* %22)
          to label %23 unwind label %29

; <label>:23:                                     ; preds = %21
  br label %24

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29:                                     ; preds = %21, %16
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Zor11UpdateFlagsS_(i32, i32) #1 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = or i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Zan11UpdateFlagsS_(i32, i32) #1 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi1ELi3EEE6reinitEjj(%class.Table.50*, i32, i32) #0 comdat align 2 {
  %4 = alloca %class.Table.50*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.TableIndices, align 4
  store %class.Table.50* %0, %class.Table.50** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %class.Table.50*, %class.Table.50** %4, align 8
  %9 = bitcast %class.Table.50* %8 to %class.TableBase.51*
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  call void @_ZN12TableIndicesILi2EEC2Ejj(%class.TableIndices* %7, i32 %10, i32 %11)
  call void @_ZN9TableBaseILi2E6TensorILi1ELi3EEE6reinitERK12TableIndicesILi2EE(%class.TableBase.51* %9, %class.TableIndices* dereferenceable(8) %7)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi2ELi3EEE6reinitEjj(%class.Table.54*, i32, i32) #0 comdat align 2 {
  %4 = alloca %class.Table.54*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.TableIndices, align 4
  store %class.Table.54* %0, %class.Table.54** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %class.Table.54*, %class.Table.54** %4, align 8
  %9 = bitcast %class.Table.54* %8 to %class.TableBase.55*
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  call void @_ZN12TableIndicesILi2EEC2Ejj(%class.TableIndices* %7, i32 %10, i32 %11)
  call void @_ZN9TableBaseILi2E6TensorILi2ELi3EEE6reinitERK12TableIndicesILi2EE(%class.TableBase.55* %9, %class.TableIndices* dereferenceable(8) %7)
  ret void
}

declare void @_ZN17FiniteElementBaseILi3EE16InternalDataBase14initialize_2ndEPK13FiniteElementILi3EERK7MappingILi3EERK10QuadratureILi3EE(%"class.FiniteElementBase<3>::InternalDataBase"*, %class.FiniteElement*, %class.Mapping* dereferenceable(24), %class.Quadrature* dereferenceable(80)) #2

declare dereferenceable(24) %class.Point* @_ZNK10QuadratureILi3EE5pointEj(%class.Quadrature*, i32) #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* noalias sret, %class.Table.50*, i32) #0 comdat align 2 {
  %4 = alloca %class.Table.50*, align 8
  %5 = alloca i32, align 4
  store %class.Table.50* %1, %class.Table.50** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %class.Table.50*, %class.Table.50** %4, align 8
  %7 = bitcast %class.Table.50* %6 to %class.TableBase.51*
  %8 = bitcast %class.Table.50* %6 to %class.TableBase.51*
  %9 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %8, i32 0, i32 1
  %10 = load %class.Tensor*, %class.Tensor** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_ZNK5TableILi2E6TensorILi1ELi3EEE6n_colsEv(%class.Table.50* %6)
  %13 = mul i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %class.Tensor, %class.Tensor* %10, i64 %14
  call void @_ZN8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEC2ERK9TableBaseILi2ES3_EPS3_(%"class.internal::TableBaseAccessors::Accessor"* %0, %class.TableBase.51* dereferenceable(48) %7, %class.Tensor* %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor"*, i32) #1 comdat align 2 {
  %3 = alloca %"class.internal::TableBaseAccessors::Accessor"*, align 8
  %4 = alloca i32, align 4
  store %"class.internal::TableBaseAccessors::Accessor"* %0, %"class.internal::TableBaseAccessors::Accessor"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.internal::TableBaseAccessors::Accessor"*, %"class.internal::TableBaseAccessors::Accessor"** %3, align 8
  %6 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor", %"class.internal::TableBaseAccessors::Accessor"* %5, i32 0, i32 1
  %7 = load %class.Tensor*, %class.Tensor** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %class.Tensor, %class.Tensor* %7, i64 %9
  ret %class.Tensor* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6TensorILi1ELi3EEixEj(%class.Tensor*, i32) #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Tensor*, %class.Tensor** %3, align 8
  %6 = getelementptr inbounds %class.Tensor, %class.Tensor* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %8
  ret double* %9
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi2ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor.58"* noalias sret, %class.Table.54*, i32) #0 comdat align 2 {
  %4 = alloca %class.Table.54*, align 8
  %5 = alloca i32, align 4
  store %class.Table.54* %1, %class.Table.54** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %class.Table.54*, %class.Table.54** %4, align 8
  %7 = bitcast %class.Table.54* %6 to %class.TableBase.55*
  %8 = bitcast %class.Table.54* %6 to %class.TableBase.55*
  %9 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %8, i32 0, i32 1
  %10 = load %class.Tensor.33*, %class.Tensor.33** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_ZNK5TableILi2E6TensorILi2ELi3EEE6n_colsEv(%class.Table.54* %6)
  %13 = mul i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %10, i64 %14
  call void @_ZN8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EEC2ERK9TableBaseILi2ES3_EPS3_(%"class.internal::TableBaseAccessors::Accessor.58"* %0, %class.TableBase.55* dereferenceable(48) %7, %class.Tensor.33* %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(72) %class.Tensor.33* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor.58"*, i32) #1 comdat align 2 {
  %3 = alloca %"class.internal::TableBaseAccessors::Accessor.58"*, align 8
  %4 = alloca i32, align 4
  store %"class.internal::TableBaseAccessors::Accessor.58"* %0, %"class.internal::TableBaseAccessors::Accessor.58"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.internal::TableBaseAccessors::Accessor.58"*, %"class.internal::TableBaseAccessors::Accessor.58"** %3, align 8
  %6 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.58", %"class.internal::TableBaseAccessors::Accessor.58"* %5, i32 0, i32 1
  %7 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %7, i64 %9
  ret %class.Tensor.33* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZN6TensorILi2ELi3EEixEj(%class.Tensor.33*, i32) #1 comdat align 2 {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca i32, align 4
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %6 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %6, i64 0, i64 %8
  ret %class.Tensor* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor*, %class.Tensor* dereferenceable(24)) #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %6 = load %class.Tensor*, %class.Tensor** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor*, %class.Tensor** %4, align 8
  %12 = getelementptr inbounds %class.Tensor, %class.Tensor* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.Tensor, %class.Tensor* %6, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 %19
  store double %16, double* %20, align 8
  br label %21

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  ret %class.Tensor* %6
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK10FE_NedelecILi3EE14fill_fe_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEERK10QuadratureILi3EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE(%class.FE_Nedelec*, %class.Mapping* dereferenceable(24), %class.TriaIterator* nonnull, %class.Quadrature* dereferenceable(80), %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %class.FEValuesData* dereferenceable(272)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %8 = alloca %class.FE_Nedelec*, align 8
  %9 = alloca %class.Mapping*, align 8
  %10 = alloca %class.TriaIterator*, align 8
  %11 = alloca %class.Quadrature*, align 8
  %12 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  %13 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  %14 = alloca %class.FEValuesData*, align 8
  %15 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %"class.std::vector.59", align 8
  %19 = alloca %class.Tensor, align 8
  %20 = alloca %"class.std::allocator.61", align 1
  %21 = alloca i8*
  %22 = alloca i32
  %23 = alloca i32, align 4
  %24 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %25 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %26 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %"class.internal::TableBaseAccessors::Accessor.64", align 8
  %30 = alloca %"class.std::vector.65", align 8
  %31 = alloca %class.Tensor.33, align 8
  %32 = alloca %"class.std::allocator.67", align 1
  %33 = alloca %"class.std::vector.65", align 8
  %34 = alloca %class.Tensor.33, align 8
  %35 = alloca %"class.std::allocator.67", align 1
  %36 = alloca i32, align 4
  %37 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %38 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %39 = alloca %"class.internal::TableBaseAccessors::Accessor.58", align 8
  %40 = alloca i32, align 4
  %41 = alloca %class.Tensor.33, align 8
  %42 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %43 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %44 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %45 = alloca i32, align 4
  %46 = alloca %class.Tensor.33, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  %50 = alloca %"class.QProjector<3>::DataSetDescriptor", align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %8, align 8
  store %class.Mapping* %1, %class.Mapping** %9, align 8
  store %class.TriaIterator* %2, %class.TriaIterator** %10, align 8
  store %class.Quadrature* %3, %class.Quadrature** %11, align 8
  store %"class.Mapping<3>::InternalDataBase"* %4, %"class.Mapping<3>::InternalDataBase"** %12, align 8
  store %"class.Mapping<3>::InternalDataBase"* %5, %"class.Mapping<3>::InternalDataBase"** %13, align 8
  store %class.FEValuesData* %6, %class.FEValuesData** %14, align 8
  %51 = load %class.FE_Nedelec*, %class.FE_Nedelec** %8, align 8
  %52 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %13, align 8
  %53 = bitcast %"class.Mapping<3>::InternalDataBase"* %52 to i8*
  %54 = call i8* @__dynamic_cast(i8* %53, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7MappingILi3EE16InternalDataBaseE to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10FE_NedelecILi3EE12InternalDataE to i8*), i64 0) #12
  %55 = bitcast i8* %54 to %"class.FE_Nedelec<3>::InternalData"*
  %56 = icmp eq %"class.FE_Nedelec<3>::InternalData"* %55, null
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %7
  call void @__cxa_bad_cast() #15
  unreachable

; <label>:58:                                     ; preds = %7
  store %"class.FE_Nedelec<3>::InternalData"* %55, %"class.FE_Nedelec<3>::InternalData"** %15, align 8
  %59 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %15, align 8
  %60 = bitcast %"class.FE_Nedelec<3>::InternalData"* %59 to %"class.Mapping<3>::InternalDataBase"*
  %61 = call i32 @_ZNK7MappingILi3EE16InternalDataBase20current_update_flagsEv(%"class.Mapping<3>::InternalDataBase"* %60)
  store i32 %61, i32* %16, align 4
  %62 = load %class.Quadrature*, %class.Quadrature** %11, align 8
  %63 = getelementptr inbounds %class.Quadrature, %class.Quadrature* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @_Zan11UpdateFlagsS_(i32 %65, i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %155

; <label>:68:                                     ; preds = %58
  %69 = load i32, i32* %17, align 4
  %70 = zext i32 %69 to i64
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %19, i1 zeroext true)
  call void @_ZNSaI6TensorILi1ELi3EEEC2Ev(%"class.std::allocator.61"* %20) #12
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.59"* %18, i64 %70, %class.Tensor* dereferenceable(24) %19, %"class.std::allocator.61"* dereferenceable(1) %20)
          to label %71 unwind label %137

; <label>:71:                                     ; preds = %68
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %20) #12
  store i32 0, i32* %23, align 4
  br label %72

; <label>:72:                                     ; preds = %150, %71
  %73 = load i32, i32* %23, align 4
  %74 = bitcast %class.FE_Nedelec* %51 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 24
  %76 = bitcast i8* %75 to %class.FiniteElementData*
  %77 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %73, %78
  br i1 %79, label %80, label %153

; <label>:80:                                     ; preds = %72
  %81 = load %class.Mapping*, %class.Mapping** %9, align 8
  %82 = bitcast %class.Mapping* %81 to void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)***
  %83 = load void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*** %82, align 8
  %84 = getelementptr inbounds void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)** %83, i64 4
  %85 = load void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)** %84, align 8
  %86 = invoke %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"* %18)
          to label %87 unwind label %141

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %24, i32 0, i32 0
  store %class.Tensor* %86, %class.Tensor** %88, align 8
  %89 = invoke dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %24)
          to label %90 unwind label %141

; <label>:90:                                     ; preds = %87
  %91 = invoke %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"* %18)
          to label %92 unwind label %141

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %25, i32 0, i32 0
  store %class.Tensor* %91, %class.Tensor** %93, align 8
  %94 = invoke dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %25)
          to label %95 unwind label %141

; <label>:95:                                     ; preds = %92
  %96 = invoke i64 @_ZNKSt6vectorI6TensorILi1ELi3EESaIS1_EE4sizeEv(%"class.std::vector.59"* %18)
          to label %97 unwind label %141

; <label>:97:                                     ; preds = %95
  %98 = getelementptr inbounds %class.Tensor, %class.Tensor* %94, i64 %96
  %99 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %15, align 8
  %100 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %99, i32 0, i32 1
  %101 = load i32, i32* %23, align 4
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %26, %class.Table.50* %100, i32 %101)
          to label %102 unwind label %141

; <label>:102:                                    ; preds = %97
  %103 = invoke %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor"* %26)
          to label %104 unwind label %141

; <label>:104:                                    ; preds = %102
  %105 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %12, align 8
  invoke void %85(%class.Mapping* %81, %class.Tensor* %89, %class.Tensor* %98, %class.Tensor* %103, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %105)
          to label %106 unwind label %141

; <label>:106:                                    ; preds = %104
  store i32 0, i32* %27, align 4
  br label %107

; <label>:107:                                    ; preds = %146, %106
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %149

; <label>:111:                                    ; preds = %107
  store i32 0, i32* %28, align 4
  br label %112

; <label>:112:                                    ; preds = %134, %111
  %113 = load i32, i32* %28, align 4
  %114 = icmp ult i32 %113, 3
  br i1 %114, label %115, label %145

; <label>:115:                                    ; preds = %112
  %116 = load i32, i32* %27, align 4
  %117 = zext i32 %116 to i64
  %118 = invoke dereferenceable(24) %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEixEm(%"class.std::vector.59"* %18, i64 %117)
          to label %119 unwind label %141

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* %28, align 4
  %121 = invoke dereferenceable(8) double* @_ZN6TensorILi1ELi3EEixEj(%class.Tensor* %118, i32 %120)
          to label %122 unwind label %141

; <label>:122:                                    ; preds = %119
  %123 = load double, double* %121, align 8
  %124 = load %class.FEValuesData*, %class.FEValuesData** %14, align 8
  %125 = getelementptr inbounds %class.FEValuesData, %class.FEValuesData* %124, i32 0, i32 0
  %126 = load i32, i32* %23, align 4
  %127 = mul i32 %126, 3
  %128 = load i32, i32* %28, align 4
  %129 = add i32 %127, %128
  invoke void @_ZN5TableILi2EdEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* sret %29, %class.Table* %125, i32 %129)
          to label %130 unwind label %141

; <label>:130:                                    ; preds = %122
  %131 = load i32, i32* %27, align 4
  %132 = invoke dereferenceable(8) double* @_ZNK8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* %29, i32 %131)
          to label %133 unwind label %141

; <label>:133:                                    ; preds = %130
  store double %123, double* %132, align 8
  br label %134

; <label>:134:                                    ; preds = %133
  %135 = load i32, i32* %28, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %28, align 4
  br label %112

; <label>:137:                                    ; preds = %68
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = extractvalue { i8*, i32 } %138, 0
  store i8* %139, i8** %21, align 8
  %140 = extractvalue { i8*, i32 } %138, 1
  store i32 %140, i32* %22, align 4
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %20) #12
  br label %343

; <label>:141:                                    ; preds = %130, %122, %119, %115, %104, %102, %97, %95, %92, %90, %87, %80
  %142 = landingpad { i8*, i32 }
          cleanup
  %143 = extractvalue { i8*, i32 } %142, 0
  store i8* %143, i8** %21, align 8
  %144 = extractvalue { i8*, i32 } %142, 1
  store i32 %144, i32* %22, align 4
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"* %18)
          to label %154 unwind label %348

; <label>:145:                                    ; preds = %112
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* %27, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %27, align 4
  br label %107

; <label>:149:                                    ; preds = %107
  br label %150

; <label>:150:                                    ; preds = %149
  %151 = load i32, i32* %23, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %23, align 4
  br label %72

; <label>:153:                                    ; preds = %72
  call void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"* %18)
  br label %155

; <label>:154:                                    ; preds = %141
  br label %343

; <label>:155:                                    ; preds = %153, %58
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @_Zan11UpdateFlagsS_(i32 %156, i32 2)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %327

; <label>:159:                                    ; preds = %155
  %160 = load i32, i32* %17, align 4
  %161 = zext i32 %160 to i64
  call void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %31)
  call void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"* %32) #12
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"* %30, i64 %161, %class.Tensor.33* dereferenceable(72) %31, %"class.std::allocator.67"* dereferenceable(1) %32)
          to label %162 unwind label %221

; <label>:162:                                    ; preds = %159
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %32) #12
  %163 = load i32, i32* %17, align 4
  %164 = zext i32 %163 to i64
  invoke void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %34)
          to label %165 unwind label %225

; <label>:165:                                    ; preds = %162
  call void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"* %35) #12
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"* %33, i64 %164, %class.Tensor.33* dereferenceable(72) %34, %"class.std::allocator.67"* dereferenceable(1) %35)
          to label %166 unwind label %229

; <label>:166:                                    ; preds = %165
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %35) #12
  store i32 0, i32* %36, align 4
  br label %167

; <label>:167:                                    ; preds = %319, %166
  %168 = load i32, i32* %36, align 4
  %169 = bitcast %class.FE_Nedelec* %51 to i8*
  %170 = getelementptr inbounds i8, i8* %169, i64 24
  %171 = bitcast i8* %170 to %class.FiniteElementData*
  %172 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = icmp ult i32 %168, %173
  br i1 %174, label %175, label %322

; <label>:175:                                    ; preds = %167
  %176 = load %class.Mapping*, %class.Mapping** %9, align 8
  %177 = bitcast %class.Mapping* %176 to void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)***
  %178 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*** %177, align 8
  %179 = getelementptr inbounds void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %178, i64 5
  %180 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %179, align 8
  %181 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %30)
          to label %182 unwind label %233

; <label>:182:                                    ; preds = %175
  %183 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %37, i32 0, i32 0
  store %class.Tensor.33* %181, %class.Tensor.33** %183, align 8
  %184 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %37)
          to label %185 unwind label %233

; <label>:185:                                    ; preds = %182
  %186 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %30)
          to label %187 unwind label %233

; <label>:187:                                    ; preds = %185
  %188 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %38, i32 0, i32 0
  store %class.Tensor.33* %186, %class.Tensor.33** %188, align 8
  %189 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %38)
          to label %190 unwind label %233

; <label>:190:                                    ; preds = %187
  %191 = invoke i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"* %30)
          to label %192 unwind label %233

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %189, i64 %191
  %194 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %15, align 8
  %195 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %194, i32 0, i32 2
  %196 = load i32, i32* %36, align 4
  invoke void @_ZN5TableILi2E6TensorILi2ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor.58"* sret %39, %class.Table.54* %195, i32 %196)
          to label %197 unwind label %233

; <label>:197:                                    ; preds = %192
  %198 = invoke %class.Tensor.33* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor.58"* %39)
          to label %199 unwind label %233

; <label>:199:                                    ; preds = %197
  %200 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %12, align 8
  invoke void %180(%class.Mapping* %176, %class.Tensor.33* %184, %class.Tensor.33* %193, %class.Tensor.33* %198, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %200)
          to label %201 unwind label %233

; <label>:201:                                    ; preds = %199
  store i32 0, i32* %40, align 4
  br label %202

; <label>:202:                                    ; preds = %218, %201
  %203 = load i32, i32* %40, align 4
  %204 = load i32, i32* %17, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %206, label %237

; <label>:206:                                    ; preds = %202
  %207 = load i32, i32* %40, align 4
  %208 = zext i32 %207 to i64
  %209 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %30, i64 %208)
          to label %210 unwind label %233

; <label>:210:                                    ; preds = %206
  invoke void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* sret %41, %class.Tensor.33* dereferenceable(72) %209)
          to label %211 unwind label %233

; <label>:211:                                    ; preds = %210
  %212 = load i32, i32* %40, align 4
  %213 = zext i32 %212 to i64
  %214 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %33, i64 %213)
          to label %215 unwind label %233

; <label>:215:                                    ; preds = %211
  %216 = invoke dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %214, %class.Tensor.33* dereferenceable(72) %41)
          to label %217 unwind label %233

; <label>:217:                                    ; preds = %215
  br label %218

; <label>:218:                                    ; preds = %217
  %219 = load i32, i32* %40, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %40, align 4
  br label %202

; <label>:221:                                    ; preds = %159
  %222 = landingpad { i8*, i32 }
          cleanup
  %223 = extractvalue { i8*, i32 } %222, 0
  store i8* %223, i8** %21, align 8
  %224 = extractvalue { i8*, i32 } %222, 1
  store i32 %224, i32* %22, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %32) #12
  br label %343

; <label>:225:                                    ; preds = %322, %162
  %226 = landingpad { i8*, i32 }
          cleanup
  %227 = extractvalue { i8*, i32 } %226, 0
  store i8* %227, i8** %21, align 8
  %228 = extractvalue { i8*, i32 } %226, 1
  store i32 %228, i32* %22, align 4
  br label %325

; <label>:229:                                    ; preds = %165
  %230 = landingpad { i8*, i32 }
          cleanup
  %231 = extractvalue { i8*, i32 } %230, 0
  store i8* %231, i8** %21, align 8
  %232 = extractvalue { i8*, i32 } %230, 1
  store i32 %232, i32* %22, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %35) #12
  br label %325

; <label>:233:                                    ; preds = %308, %305, %298, %295, %291, %276, %272, %271, %267, %260, %257, %254, %252, %249, %247, %244, %237, %215, %211, %210, %206, %199, %197, %192, %190, %187, %185, %182, %175
  %234 = landingpad { i8*, i32 }
          cleanup
  %235 = extractvalue { i8*, i32 } %234, 0
  store i8* %235, i8** %21, align 8
  %236 = extractvalue { i8*, i32 } %234, 1
  store i32 %236, i32* %22, align 4
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %33)
          to label %324 unwind label %348

; <label>:237:                                    ; preds = %202
  %238 = load %class.Mapping*, %class.Mapping** %9, align 8
  %239 = bitcast %class.Mapping* %238 to void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)***
  %240 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*** %239, align 8
  %241 = getelementptr inbounds void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %240, i64 5
  %242 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %241, align 8
  %243 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %30)
          to label %244 unwind label %233

; <label>:244:                                    ; preds = %237
  %245 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %42, i32 0, i32 0
  store %class.Tensor.33* %243, %class.Tensor.33** %245, align 8
  %246 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %42)
          to label %247 unwind label %233

; <label>:247:                                    ; preds = %244
  %248 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %30)
          to label %249 unwind label %233

; <label>:249:                                    ; preds = %247
  %250 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %43, i32 0, i32 0
  store %class.Tensor.33* %248, %class.Tensor.33** %250, align 8
  %251 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %43)
          to label %252 unwind label %233

; <label>:252:                                    ; preds = %249
  %253 = invoke i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"* %30)
          to label %254 unwind label %233

; <label>:254:                                    ; preds = %252
  %255 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %251, i64 %253
  %256 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %33)
          to label %257 unwind label %233

; <label>:257:                                    ; preds = %254
  %258 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %44, i32 0, i32 0
  store %class.Tensor.33* %256, %class.Tensor.33** %258, align 8
  %259 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %44)
          to label %260 unwind label %233

; <label>:260:                                    ; preds = %257
  %261 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %12, align 8
  invoke void %242(%class.Mapping* %238, %class.Tensor.33* %246, %class.Tensor.33* %255, %class.Tensor.33* %259, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %261)
          to label %262 unwind label %233

; <label>:262:                                    ; preds = %260
  store i32 0, i32* %45, align 4
  br label %263

; <label>:263:                                    ; preds = %279, %262
  %264 = load i32, i32* %45, align 4
  %265 = load i32, i32* %17, align 4
  %266 = icmp ult i32 %264, %265
  br i1 %266, label %267, label %282

; <label>:267:                                    ; preds = %263
  %268 = load i32, i32* %45, align 4
  %269 = zext i32 %268 to i64
  %270 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %30, i64 %269)
          to label %271 unwind label %233

; <label>:271:                                    ; preds = %267
  invoke void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* sret %46, %class.Tensor.33* dereferenceable(72) %270)
          to label %272 unwind label %233

; <label>:272:                                    ; preds = %271
  %273 = load i32, i32* %45, align 4
  %274 = zext i32 %273 to i64
  %275 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %33, i64 %274)
          to label %276 unwind label %233

; <label>:276:                                    ; preds = %272
  %277 = invoke dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %275, %class.Tensor.33* dereferenceable(72) %46)
          to label %278 unwind label %233

; <label>:278:                                    ; preds = %276
  br label %279

; <label>:279:                                    ; preds = %278
  %280 = load i32, i32* %45, align 4
  %281 = add i32 %280, 1
  store i32 %281, i32* %45, align 4
  br label %263

; <label>:282:                                    ; preds = %263
  store i32 0, i32* %47, align 4
  br label %283

; <label>:283:                                    ; preds = %315, %282
  %284 = load i32, i32* %47, align 4
  %285 = load i32, i32* %17, align 4
  %286 = icmp ult i32 %284, %285
  br i1 %286, label %287, label %318

; <label>:287:                                    ; preds = %283
  store i32 0, i32* %48, align 4
  br label %288

; <label>:288:                                    ; preds = %311, %287
  %289 = load i32, i32* %48, align 4
  %290 = icmp ult i32 %289, 3
  br i1 %290, label %291, label %314

; <label>:291:                                    ; preds = %288
  %292 = load i32, i32* %47, align 4
  %293 = zext i32 %292 to i64
  %294 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %33, i64 %293)
          to label %295 unwind label %233

; <label>:295:                                    ; preds = %291
  %296 = load i32, i32* %48, align 4
  %297 = invoke dereferenceable(24) %class.Tensor* @_ZN6TensorILi2ELi3EEixEj(%class.Tensor.33* %294, i32 %296)
          to label %298 unwind label %233

; <label>:298:                                    ; preds = %295
  %299 = load %class.FEValuesData*, %class.FEValuesData** %14, align 8
  %300 = getelementptr inbounds %class.FEValuesData, %class.FEValuesData* %299, i32 0, i32 1
  %301 = load i32, i32* %36, align 4
  %302 = mul i32 %301, 3
  %303 = load i32, i32* %48, align 4
  %304 = add i32 %302, %303
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %49, %class.Table.50* %300, i32 %304)
          to label %305 unwind label %233

; <label>:305:                                    ; preds = %298
  %306 = load i32, i32* %47, align 4
  %307 = invoke dereferenceable(24) %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor"* %49, i32 %306)
          to label %308 unwind label %233

; <label>:308:                                    ; preds = %305
  %309 = invoke dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %307, %class.Tensor* dereferenceable(24) %297)
          to label %310 unwind label %233

; <label>:310:                                    ; preds = %308
  br label %311

; <label>:311:                                    ; preds = %310
  %312 = load i32, i32* %48, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %48, align 4
  br label %288

; <label>:314:                                    ; preds = %288
  br label %315

; <label>:315:                                    ; preds = %314
  %316 = load i32, i32* %47, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %47, align 4
  br label %283

; <label>:318:                                    ; preds = %283
  br label %319

; <label>:319:                                    ; preds = %318
  %320 = load i32, i32* %36, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %36, align 4
  br label %167

; <label>:322:                                    ; preds = %167
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %33)
          to label %323 unwind label %225

; <label>:323:                                    ; preds = %322
  call void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %30)
  br label %327

; <label>:324:                                    ; preds = %233
  br label %325

; <label>:325:                                    ; preds = %324, %229, %225
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %30)
          to label %326 unwind label %348

; <label>:326:                                    ; preds = %325
  br label %343

; <label>:327:                                    ; preds = %323, %155
  %328 = load i32, i32* %16, align 4
  %329 = call i32 @_Zan11UpdateFlagsS_(i32 %328, i32 4)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %342

; <label>:331:                                    ; preds = %327
  %332 = bitcast %class.FE_Nedelec* %51 to %class.FiniteElementBase*
  %333 = load %class.Mapping*, %class.Mapping** %9, align 8
  %334 = load %class.TriaIterator*, %class.TriaIterator** %10, align 8
  %335 = call i32 @_ZN10QProjectorILi3EE17DataSetDescriptor4cellEv()
  %336 = getelementptr inbounds %"class.QProjector<3>::DataSetDescriptor", %"class.QProjector<3>::DataSetDescriptor"* %50, i32 0, i32 0
  store i32 %335, i32* %336, align 4
  %337 = call i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %50)
  %338 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %12, align 8
  %339 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %15, align 8
  %340 = bitcast %"class.FE_Nedelec<3>::InternalData"* %339 to %"class.FiniteElementBase<3>::InternalDataBase"*
  %341 = load %class.FEValuesData*, %class.FEValuesData** %14, align 8
  call void @_ZNK17FiniteElementBaseILi3EE11compute_2ndERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRNS2_16InternalDataBaseERNS0_16InternalDataBaseER12FEValuesDataILi3EE(%class.FiniteElementBase* %332, %class.Mapping* dereferenceable(24) %333, %class.TriaIterator* nonnull %334, i32 %337, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %338, %"class.FiniteElementBase<3>::InternalDataBase"* dereferenceable(64) %340, %class.FEValuesData* dereferenceable(272) %341)
  br label %342

; <label>:342:                                    ; preds = %331, %327
  ret void

; <label>:343:                                    ; preds = %326, %221, %154, %137
  %344 = load i8*, i8** %21, align 8
  %345 = load i32, i32* %22, align 4
  %346 = insertvalue { i8*, i32 } undef, i8* %344, 0
  %347 = insertvalue { i8*, i32 } %346, i32 %345, 1
  resume { i8*, i32 } %347

; <label>:348:                                    ; preds = %325, %233, %141
  %349 = landingpad { i8*, i32 }
          catch i8* null
  %350 = extractvalue { i8*, i32 } %349, 0
  call void @__clang_call_terminate(i8* %350) #10
  unreachable
}

; Function Attrs: nounwind readonly
declare i8* @__dynamic_cast(i8*, i8*, i8*, i64) #6

declare void @__cxa_bad_cast()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK7MappingILi3EE16InternalDataBase20current_update_flagsEv(%"class.Mapping<3>::InternalDataBase"*) #1 comdat align 2 {
  %2 = alloca i32, align 4
  %3 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  store %"class.Mapping<3>::InternalDataBase"* %0, %"class.Mapping<3>::InternalDataBase"** %3, align 8
  %4 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %3, align 8
  %5 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %4, i32 0, i32 4
  %6 = load i8, i8* %5, align 4
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %4, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %2, align 4
  br label %14

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %4, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %2, align 4
  br label %14

; <label>:14:                                     ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6TensorILi1ELi3EEEC2Ev(%"class.std::allocator.61"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %2, align 8
  %3 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %2, align 8
  %4 = bitcast %"class.std::allocator.61"* %3 to %"class.__gnu_cxx::new_allocator.62"*
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEEC2Ev(%"class.__gnu_cxx::new_allocator.62"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.59"*, i64, %class.Tensor* dereferenceable(24), %"class.std::allocator.61"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::vector.59"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %class.Tensor*, align 8
  %8 = alloca %"class.std::allocator.61"*, align 8
  %9 = alloca i8*
  %10 = alloca i32
  store %"class.std::vector.59"* %0, %"class.std::vector.59"** %5, align 8
  store i64 %1, i64* %6, align 8
  store %class.Tensor* %2, %class.Tensor** %7, align 8
  store %"class.std::allocator.61"* %3, %"class.std::allocator.61"** %8, align 8
  %11 = load %"class.std::vector.59"*, %"class.std::vector.59"** %5, align 8
  %12 = bitcast %"class.std::vector.59"* %11 to %"struct.std::_Vector_base.60"*
  %13 = load i64, i64* %6, align 8
  %14 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %8, align 8
  %15 = call i64 @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE17_S_check_init_lenEmRKS2_(i64 %13, %"class.std::allocator.61"* dereferenceable(1) %14)
  %16 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %8, align 8
  call void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base.60"* %12, i64 %15, %"class.std::allocator.61"* dereferenceable(1) %16)
  %17 = load i64, i64* %6, align 8
  %18 = load %class.Tensor*, %class.Tensor** %7, align 8
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.59"* %11, i64 %17, %class.Tensor* dereferenceable(24) %18)
          to label %19 unwind label %20

; <label>:19:                                     ; preds = %4
  ret void

; <label>:20:                                     ; preds = %4
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %9, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %10, align 4
  %24 = bitcast %"class.std::vector.59"* %11 to %"struct.std::_Vector_base.60"*
  invoke void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.60"* %24)
          to label %25 unwind label %31

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

; <label>:31:                                     ; preds = %20
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %2, align 8
  %3 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %2, align 8
  %4 = bitcast %"class.std::allocator.61"* %3 to %"class.__gnu_cxx::new_allocator.62"*
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEED2Ev(%"class.__gnu_cxx::new_allocator.62"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.59"*, align 8
  store %"class.std::vector.59"* %0, %"class.std::vector.59"** %3, align 8
  %4 = load %"class.std::vector.59"*, %"class.std::vector.59"** %3, align 8
  %5 = bitcast %"class.std::vector.59"* %4 to %"struct.std::_Vector_base.60"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %2, %class.Tensor** dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load %class.Tensor*, %class.Tensor** %9, align 8
  ret %class.Tensor* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %class.Tensor*, %class.Tensor** %4, align 8
  ret %class.Tensor* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6TensorILi1ELi3EESaIS1_EE4sizeEv(%"class.std::vector.59"*) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.59"*, align 8
  store %"class.std::vector.59"* %0, %"class.std::vector.59"** %2, align 8
  %3 = load %"class.std::vector.59"*, %"class.std::vector.59"** %2, align 8
  %4 = bitcast %"class.std::vector.59"* %3 to %"struct.std::_Vector_base.60"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %5 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %class.Tensor*, %class.Tensor** %7, align 8
  %9 = bitcast %"class.std::vector.59"* %3 to %"struct.std::_Vector_base.60"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %class.Tensor*, %class.Tensor** %12, align 8
  %14 = ptrtoint %class.Tensor* %8 to i64
  %15 = ptrtoint %class.Tensor* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 24
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor"*) #1 comdat align 2 {
  %2 = alloca %"class.internal::TableBaseAccessors::Accessor"*, align 8
  store %"class.internal::TableBaseAccessors::Accessor"* %0, %"class.internal::TableBaseAccessors::Accessor"** %2, align 8
  %3 = load %"class.internal::TableBaseAccessors::Accessor"*, %"class.internal::TableBaseAccessors::Accessor"** %2, align 8
  %4 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor", %"class.internal::TableBaseAccessors::Accessor"* %3, i32 0, i32 1
  %5 = load %class.Tensor*, %class.Tensor** %4, align 8
  ret %class.Tensor* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEixEm(%"class.std::vector.59"*, i64) #1 comdat align 2 {
  %3 = alloca %"class.std::vector.59"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.59"* %0, %"class.std::vector.59"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.59"*, %"class.std::vector.59"** %3, align 8
  %6 = bitcast %"class.std::vector.59"* %5 to %"struct.std::_Vector_base.60"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Tensor*, %class.Tensor** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Tensor, %class.Tensor* %10, i64 %11
  ret %class.Tensor* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2EdEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* noalias sret, %class.Table*, i32) #0 comdat align 2 {
  %4 = alloca %class.Table*, align 8
  %5 = alloca i32, align 4
  store %class.Table* %1, %class.Table** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %class.Table*, %class.Table** %4, align 8
  %7 = bitcast %class.Table* %6 to %class.TableBase*
  %8 = bitcast %class.Table* %6 to %class.TableBase*
  %9 = getelementptr inbounds %class.TableBase, %class.TableBase* %8, i32 0, i32 1
  %10 = load double*, double** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_ZNK5TableILi2EdE6n_colsEv(%class.Table* %6)
  %13 = mul i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %10, i64 %14
  call void @_ZN8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEC2ERK9TableBaseILi2EdEPd(%"class.internal::TableBaseAccessors::Accessor.64"* %0, %class.TableBase* dereferenceable(48) %7, double* %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor.64"*, i32) #1 comdat align 2 {
  %3 = alloca %"class.internal::TableBaseAccessors::Accessor.64"*, align 8
  %4 = alloca i32, align 4
  store %"class.internal::TableBaseAccessors::Accessor.64"* %0, %"class.internal::TableBaseAccessors::Accessor.64"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.internal::TableBaseAccessors::Accessor.64"*, %"class.internal::TableBaseAccessors::Accessor.64"** %3, align 8
  %6 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.64", %"class.internal::TableBaseAccessors::Accessor.64"* %5, i32 0, i32 1
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  ret double* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.59"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::vector.59"* %0, %"class.std::vector.59"** %2, align 8
  %5 = load %"class.std::vector.59"*, %"class.std::vector.59"** %2, align 8
  %6 = bitcast %"class.std::vector.59"* %5 to %"struct.std::_Vector_base.60"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Tensor*, %class.Tensor** %9, align 8
  %11 = bitcast %"class.std::vector.59"* %5 to %"struct.std::_Vector_base.60"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %12 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %class.Tensor*, %class.Tensor** %14, align 8
  %16 = bitcast %"class.std::vector.59"* %5 to %"struct.std::_Vector_base.60"*
  %17 = invoke dereferenceable(1) %"class.std::allocator.61"* @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.60"* %16)
          to label %18 unwind label %21

; <label>:18:                                     ; preds = %1
  invoke void @_ZSt8_DestroyIP6TensorILi1ELi3EES1_EvT_S3_RSaIT0_E(%class.Tensor* %10, %class.Tensor* %15, %"class.std::allocator.61"* dereferenceable(1) %17)
          to label %19 unwind label %21

; <label>:19:                                     ; preds = %18
  %20 = bitcast %"class.std::vector.59"* %5 to %"struct.std::_Vector_base.60"*
  call void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.60"* %20)
  ret void

; <label>:21:                                     ; preds = %18, %1
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %3, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %4, align 4
  %25 = bitcast %"class.std::vector.59"* %5 to %"struct.std::_Vector_base.60"*
  invoke void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.60"* %25)
          to label %26 unwind label %32

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

; <label>:32:                                     ; preds = %21
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.67"*, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %2, align 8
  %3 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %2, align 8
  %4 = bitcast %"class.std::allocator.67"* %3 to %"class.__gnu_cxx::new_allocator.68"*
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEEC2Ev(%"class.__gnu_cxx::new_allocator.68"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"*, i64, %class.Tensor.33* dereferenceable(72), %"class.std::allocator.67"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::vector.65"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %class.Tensor.33*, align 8
  %8 = alloca %"class.std::allocator.67"*, align 8
  %9 = alloca i8*
  %10 = alloca i32
  store %"class.std::vector.65"* %0, %"class.std::vector.65"** %5, align 8
  store i64 %1, i64* %6, align 8
  store %class.Tensor.33* %2, %class.Tensor.33** %7, align 8
  store %"class.std::allocator.67"* %3, %"class.std::allocator.67"** %8, align 8
  %11 = load %"class.std::vector.65"*, %"class.std::vector.65"** %5, align 8
  %12 = bitcast %"class.std::vector.65"* %11 to %"struct.std::_Vector_base.66"*
  %13 = load i64, i64* %6, align 8
  %14 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %8, align 8
  %15 = call i64 @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE17_S_check_init_lenEmRKS2_(i64 %13, %"class.std::allocator.67"* dereferenceable(1) %14)
  %16 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %8, align 8
  call void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base.66"* %12, i64 %15, %"class.std::allocator.67"* dereferenceable(1) %16)
  %17 = load i64, i64* %6, align 8
  %18 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.65"* %11, i64 %17, %class.Tensor.33* dereferenceable(72) %18)
          to label %19 unwind label %20

; <label>:19:                                     ; preds = %4
  ret void

; <label>:20:                                     ; preds = %4
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %9, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %10, align 4
  %24 = bitcast %"class.std::vector.65"* %11 to %"struct.std::_Vector_base.66"*
  invoke void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.66"* %24)
          to label %25 unwind label %31

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

; <label>:31:                                     ; preds = %20
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.67"*, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %2, align 8
  %3 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %2, align 8
  %4 = bitcast %"class.std::allocator.67"* %3 to %"class.__gnu_cxx::new_allocator.68"*
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEED2Ev(%"class.__gnu_cxx::new_allocator.68"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %3 = alloca %"class.std::vector.65"*, align 8
  store %"class.std::vector.65"* %0, %"class.std::vector.65"** %3, align 8
  %4 = load %"class.std::vector.65"*, %"class.std::vector.65"** %3, align 8
  %5 = bitcast %"class.std::vector.65"* %4 to %"struct.std::_Vector_base.66"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.70"* %2, %class.Tensor.33** dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %2, i32 0, i32 0
  %10 = load %class.Tensor.33*, %class.Tensor.33** %9, align 8
  ret %class.Tensor.33* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.70"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.70"* %0, %"class.__gnu_cxx::__normal_iterator.70"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.70"*, %"class.__gnu_cxx::__normal_iterator.70"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %3, i32 0, i32 0
  %5 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  ret %class.Tensor.33* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"*) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.65"*, align 8
  store %"class.std::vector.65"* %0, %"class.std::vector.65"** %2, align 8
  %3 = load %"class.std::vector.65"*, %"class.std::vector.65"** %2, align 8
  %4 = bitcast %"class.std::vector.65"* %3 to %"struct.std::_Vector_base.66"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %5 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  %9 = bitcast %"class.std::vector.65"* %3 to %"struct.std::_Vector_base.66"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %class.Tensor.33*, %class.Tensor.33** %12, align 8
  %14 = ptrtoint %class.Tensor.33* %8 to i64
  %15 = ptrtoint %class.Tensor.33* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 72
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor.33* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor.58"*) #1 comdat align 2 {
  %2 = alloca %"class.internal::TableBaseAccessors::Accessor.58"*, align 8
  store %"class.internal::TableBaseAccessors::Accessor.58"* %0, %"class.internal::TableBaseAccessors::Accessor.58"** %2, align 8
  %3 = load %"class.internal::TableBaseAccessors::Accessor.58"*, %"class.internal::TableBaseAccessors::Accessor.58"** %2, align 8
  %4 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.58", %"class.internal::TableBaseAccessors::Accessor.58"* %3, i32 0, i32 1
  %5 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  ret %class.Tensor.33* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* noalias sret, %class.Tensor.33* dereferenceable(72)) #0 comdat {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca [3 x [3 x double]], align 16
  store %class.Tensor.33* %1, %class.Tensor.33** %3, align 8
  %5 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %6 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %7 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %8 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %7, i32 0)
  %9 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %8, i32 0)
  store double %9, double* %6, align 8
  %10 = getelementptr inbounds double, double* %6, i64 1
  %11 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %12 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %11, i32 1)
  %13 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %12, i32 0)
  store double %13, double* %10, align 8
  %14 = getelementptr inbounds double, double* %10, i64 1
  %15 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %16 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %15, i32 2)
  %17 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %16, i32 0)
  store double %17, double* %14, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 1
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %20 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %21 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %20, i32 0)
  %22 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %21, i32 1)
  store double %22, double* %19, align 8
  %23 = getelementptr inbounds double, double* %19, i64 1
  %24 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %25 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %24, i32 1)
  %26 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %25, i32 1)
  store double %26, double* %23, align 8
  %27 = getelementptr inbounds double, double* %23, i64 1
  %28 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %29 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %28, i32 2)
  %30 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %29, i32 1)
  store double %30, double* %27, align 8
  %31 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 1
  %32 = getelementptr inbounds [3 x double], [3 x double]* %31, i64 0, i64 0
  %33 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %34 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %33, i32 0)
  %35 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %34, i32 2)
  store double %35, double* %32, align 8
  %36 = getelementptr inbounds double, double* %32, i64 1
  %37 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %38 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %37, i32 1)
  %39 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %38, i32 2)
  store double %39, double* %36, align 8
  %40 = getelementptr inbounds double, double* %36, i64 1
  %41 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %42 = call dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33* %41, i32 2)
  %43 = call double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor* %42, i32 2)
  store double %43, double* %40, align 8
  call void @_ZN6TensorILi2ELi3EEC2ERA3_A3_Kd(%class.Tensor.33* %0, [3 x [3 x double]]* dereferenceable(72) %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"*, i64) #1 comdat align 2 {
  %3 = alloca %"class.std::vector.65"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.65"* %0, %"class.std::vector.65"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.65"*, %"class.std::vector.65"** %3, align 8
  %6 = bitcast %"class.std::vector.65"* %5 to %"struct.std::_Vector_base.66"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Tensor.33*, %class.Tensor.33** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %10, i64 %11
  ret %class.Tensor.33* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33*, %class.Tensor.33* dereferenceable(72)) #1 comdat align 2 {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca %class.Tensor.33*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %4, align 8
  %6 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %12 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %12, i64 0, i64 %14
  %16 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %6, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %16, i64 0, i64 %18
  %20 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %19, %class.Tensor* dereferenceable(24) %15)
  br label %21

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  ret %class.Tensor.33* %6
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.65"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::vector.65"* %0, %"class.std::vector.65"** %2, align 8
  %5 = load %"class.std::vector.65"*, %"class.std::vector.65"** %2, align 8
  %6 = bitcast %"class.std::vector.65"* %5 to %"struct.std::_Vector_base.66"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Tensor.33*, %class.Tensor.33** %9, align 8
  %11 = bitcast %"class.std::vector.65"* %5 to %"struct.std::_Vector_base.66"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %12 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %class.Tensor.33*, %class.Tensor.33** %14, align 8
  %16 = bitcast %"class.std::vector.65"* %5 to %"struct.std::_Vector_base.66"*
  %17 = invoke dereferenceable(1) %"class.std::allocator.67"* @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.66"* %16)
          to label %18 unwind label %21

; <label>:18:                                     ; preds = %1
  invoke void @_ZSt8_DestroyIP6TensorILi2ELi3EES1_EvT_S3_RSaIT0_E(%class.Tensor.33* %10, %class.Tensor.33* %15, %"class.std::allocator.67"* dereferenceable(1) %17)
          to label %19 unwind label %21

; <label>:19:                                     ; preds = %18
  %20 = bitcast %"class.std::vector.65"* %5 to %"struct.std::_Vector_base.66"*
  call void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.66"* %20)
  ret void

; <label>:21:                                     ; preds = %18, %1
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %3, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %4, align 4
  %25 = bitcast %"class.std::vector.65"* %5 to %"struct.std::_Vector_base.66"*
  invoke void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.66"* %25)
          to label %26 unwind label %32

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

; <label>:32:                                     ; preds = %21
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #10
  unreachable
}

declare void @_ZNK17FiniteElementBaseILi3EE11compute_2ndERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRNS2_16InternalDataBaseERNS0_16InternalDataBaseER12FEValuesDataILi3EE(%class.FiniteElementBase*, %class.Mapping* dereferenceable(24), %class.TriaIterator* nonnull, i32, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %"class.FiniteElementBase<3>::InternalDataBase"* dereferenceable(64), %class.FEValuesData* dereferenceable(272)) #2

declare i32 @_ZN10QProjectorILi3EE17DataSetDescriptor4cellEv() #2

declare i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"*) #2

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK10FE_NedelecILi3EE19fill_fe_face_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRK10QuadratureILi2EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE(%class.FE_Nedelec*, %class.Mapping* dereferenceable(24), %class.TriaIterator* dereferenceable(24), i32, %class.Quadrature.126* dereferenceable(80), %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %class.FEValuesData* dereferenceable(272)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %9 = alloca %class.FE_Nedelec*, align 8
  %10 = alloca %class.Mapping*, align 8
  %11 = alloca %class.TriaIterator*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %class.Quadrature.126*, align 8
  %14 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  %15 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  %16 = alloca %class.FEValuesData*, align 8
  %17 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %18 = alloca %"class.QProjector<3>::DataSetDescriptor", align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %"class.std::vector.59", align 8
  %22 = alloca %class.Tensor, align 8
  %23 = alloca %"class.std::allocator.61", align 1
  %24 = alloca i8*
  %25 = alloca i32
  %26 = alloca i32, align 4
  %27 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %28 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %29 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %"class.internal::TableBaseAccessors::Accessor.64", align 8
  %33 = alloca %"class.std::vector.65", align 8
  %34 = alloca %class.Tensor.33, align 8
  %35 = alloca %"class.std::allocator.67", align 1
  %36 = alloca %"class.std::vector.65", align 8
  %37 = alloca %class.Tensor.33, align 8
  %38 = alloca %"class.std::allocator.67", align 1
  %39 = alloca i32, align 4
  %40 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %41 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %42 = alloca %"class.internal::TableBaseAccessors::Accessor.58", align 8
  %43 = alloca i32, align 4
  %44 = alloca %class.Tensor.33, align 8
  %45 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %46 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %47 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %48 = alloca i32, align 4
  %49 = alloca %class.Tensor.33, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %9, align 8
  store %class.Mapping* %1, %class.Mapping** %10, align 8
  store %class.TriaIterator* %2, %class.TriaIterator** %11, align 8
  store i32 %3, i32* %12, align 4
  store %class.Quadrature.126* %4, %class.Quadrature.126** %13, align 8
  store %"class.Mapping<3>::InternalDataBase"* %5, %"class.Mapping<3>::InternalDataBase"** %14, align 8
  store %"class.Mapping<3>::InternalDataBase"* %6, %"class.Mapping<3>::InternalDataBase"** %15, align 8
  store %class.FEValuesData* %7, %class.FEValuesData** %16, align 8
  %53 = load %class.FE_Nedelec*, %class.FE_Nedelec** %9, align 8
  %54 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %15, align 8
  %55 = bitcast %"class.Mapping<3>::InternalDataBase"* %54 to i8*
  %56 = call i8* @__dynamic_cast(i8* %55, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7MappingILi3EE16InternalDataBaseE to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10FE_NedelecILi3EE12InternalDataE to i8*), i64 0) #12
  %57 = bitcast i8* %56 to %"class.FE_Nedelec<3>::InternalData"*
  %58 = icmp eq %"class.FE_Nedelec<3>::InternalData"* %57, null
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %8
  call void @__cxa_bad_cast() #15
  unreachable

; <label>:60:                                     ; preds = %8
  store %"class.FE_Nedelec<3>::InternalData"* %57, %"class.FE_Nedelec<3>::InternalData"** %17, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %class.TriaIterator*, %class.TriaIterator** %11, align 8
  %63 = bitcast %class.TriaIterator* %62 to %class.TriaRawIterator*
  %64 = call %class.DoFCellAccessor* @_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEptEv(%class.TriaRawIterator* %63)
  %65 = bitcast %class.DoFCellAccessor* %64 to i8*
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  %67 = bitcast i8* %66 to %class.TriaObjectAccessor*
  %68 = load i32, i32* %12, align 4
  %69 = call zeroext i1 @_ZNK18TriaObjectAccessorILi3ELi3EE16face_orientationEj(%class.TriaObjectAccessor* %67, i32 %68)
  %70 = load %class.Quadrature.126*, %class.Quadrature.126** %13, align 8
  %71 = getelementptr inbounds %class.Quadrature.126, %class.Quadrature.126* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @_ZN10QProjectorILi3EE17DataSetDescriptor4faceEjbj(i32 %61, i1 zeroext %69, i32 %72)
  %74 = getelementptr inbounds %"class.QProjector<3>::DataSetDescriptor", %"class.QProjector<3>::DataSetDescriptor"* %18, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %17, align 8
  %76 = bitcast %"class.FE_Nedelec<3>::InternalData"* %75 to %"class.Mapping<3>::InternalDataBase"*
  %77 = call i32 @_ZNK7MappingILi3EE16InternalDataBase20current_update_flagsEv(%"class.Mapping<3>::InternalDataBase"* %76)
  store i32 %77, i32* %19, align 4
  %78 = load %class.Quadrature.126*, %class.Quadrature.126** %13, align 8
  %79 = getelementptr inbounds %class.Quadrature.126, %class.Quadrature.126* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @_Zan11UpdateFlagsS_(i32 %81, i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %175

; <label>:84:                                     ; preds = %60
  %85 = load i32, i32* %20, align 4
  %86 = zext i32 %85 to i64
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %22, i1 zeroext true)
  call void @_ZNSaI6TensorILi1ELi3EEEC2Ev(%"class.std::allocator.61"* %23) #12
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.59"* %21, i64 %86, %class.Tensor* dereferenceable(24) %22, %"class.std::allocator.61"* dereferenceable(1) %23)
          to label %87 unwind label %157

; <label>:87:                                     ; preds = %84
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %23) #12
  store i32 0, i32* %26, align 4
  br label %88

; <label>:88:                                     ; preds = %170, %87
  %89 = load i32, i32* %26, align 4
  %90 = bitcast %class.FE_Nedelec* %53 to i8*
  %91 = getelementptr inbounds i8, i8* %90, i64 24
  %92 = bitcast i8* %91 to %class.FiniteElementData*
  %93 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %89, %94
  br i1 %95, label %96, label %173

; <label>:96:                                     ; preds = %88
  %97 = load %class.Mapping*, %class.Mapping** %10, align 8
  %98 = bitcast %class.Mapping* %97 to void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)***
  %99 = load void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*** %98, align 8
  %100 = getelementptr inbounds void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)** %99, i64 4
  %101 = load void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)** %100, align 8
  %102 = invoke %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"* %21)
          to label %103 unwind label %161

; <label>:103:                                    ; preds = %96
  %104 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %27, i32 0, i32 0
  store %class.Tensor* %102, %class.Tensor** %104, align 8
  %105 = invoke dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %27)
          to label %106 unwind label %161

; <label>:106:                                    ; preds = %103
  %107 = invoke %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"* %21)
          to label %108 unwind label %161

; <label>:108:                                    ; preds = %106
  %109 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %28, i32 0, i32 0
  store %class.Tensor* %107, %class.Tensor** %109, align 8
  %110 = invoke dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %28)
          to label %111 unwind label %161

; <label>:111:                                    ; preds = %108
  %112 = invoke i64 @_ZNKSt6vectorI6TensorILi1ELi3EESaIS1_EE4sizeEv(%"class.std::vector.59"* %21)
          to label %113 unwind label %161

; <label>:113:                                    ; preds = %111
  %114 = getelementptr inbounds %class.Tensor, %class.Tensor* %110, i64 %112
  %115 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %17, align 8
  %116 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %115, i32 0, i32 1
  %117 = load i32, i32* %26, align 4
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %29, %class.Table.50* %116, i32 %117)
          to label %118 unwind label %161

; <label>:118:                                    ; preds = %113
  %119 = invoke %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor"* %29)
          to label %120 unwind label %161

; <label>:120:                                    ; preds = %118
  %121 = invoke i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %18)
          to label %122 unwind label %161

; <label>:122:                                    ; preds = %120
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds %class.Tensor, %class.Tensor* %119, i64 %123
  %125 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %14, align 8
  invoke void %101(%class.Mapping* %97, %class.Tensor* %105, %class.Tensor* %114, %class.Tensor* %124, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %125)
          to label %126 unwind label %161

; <label>:126:                                    ; preds = %122
  store i32 0, i32* %30, align 4
  br label %127

; <label>:127:                                    ; preds = %166, %126
  %128 = load i32, i32* %30, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %169

; <label>:131:                                    ; preds = %127
  store i32 0, i32* %31, align 4
  br label %132

; <label>:132:                                    ; preds = %154, %131
  %133 = load i32, i32* %31, align 4
  %134 = icmp ult i32 %133, 3
  br i1 %134, label %135, label %165

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %30, align 4
  %137 = zext i32 %136 to i64
  %138 = invoke dereferenceable(24) %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEixEm(%"class.std::vector.59"* %21, i64 %137)
          to label %139 unwind label %161

; <label>:139:                                    ; preds = %135
  %140 = load i32, i32* %31, align 4
  %141 = invoke dereferenceable(8) double* @_ZN6TensorILi1ELi3EEixEj(%class.Tensor* %138, i32 %140)
          to label %142 unwind label %161

; <label>:142:                                    ; preds = %139
  %143 = load double, double* %141, align 8
  %144 = load %class.FEValuesData*, %class.FEValuesData** %16, align 8
  %145 = getelementptr inbounds %class.FEValuesData, %class.FEValuesData* %144, i32 0, i32 0
  %146 = load i32, i32* %26, align 4
  %147 = mul i32 %146, 3
  %148 = load i32, i32* %31, align 4
  %149 = add i32 %147, %148
  invoke void @_ZN5TableILi2EdEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* sret %32, %class.Table* %145, i32 %149)
          to label %150 unwind label %161

; <label>:150:                                    ; preds = %142
  %151 = load i32, i32* %30, align 4
  %152 = invoke dereferenceable(8) double* @_ZNK8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* %32, i32 %151)
          to label %153 unwind label %161

; <label>:153:                                    ; preds = %150
  store double %143, double* %152, align 8
  br label %154

; <label>:154:                                    ; preds = %153
  %155 = load i32, i32* %31, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %31, align 4
  br label %132

; <label>:157:                                    ; preds = %84
  %158 = landingpad { i8*, i32 }
          cleanup
  %159 = extractvalue { i8*, i32 } %158, 0
  store i8* %159, i8** %24, align 8
  %160 = extractvalue { i8*, i32 } %158, 1
  store i32 %160, i32* %25, align 4
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %23) #12
  br label %365

; <label>:161:                                    ; preds = %150, %142, %139, %135, %122, %120, %118, %113, %111, %108, %106, %103, %96
  %162 = landingpad { i8*, i32 }
          cleanup
  %163 = extractvalue { i8*, i32 } %162, 0
  store i8* %163, i8** %24, align 8
  %164 = extractvalue { i8*, i32 } %162, 1
  store i32 %164, i32* %25, align 4
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"* %21)
          to label %174 unwind label %370

; <label>:165:                                    ; preds = %132
  br label %166

; <label>:166:                                    ; preds = %165
  %167 = load i32, i32* %30, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %30, align 4
  br label %127

; <label>:169:                                    ; preds = %127
  br label %170

; <label>:170:                                    ; preds = %169
  %171 = load i32, i32* %26, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %26, align 4
  br label %88

; <label>:173:                                    ; preds = %88
  call void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"* %21)
  br label %175

; <label>:174:                                    ; preds = %161
  br label %365

; <label>:175:                                    ; preds = %173, %60
  %176 = load i32, i32* %19, align 4
  %177 = call i32 @_Zan11UpdateFlagsS_(i32 %176, i32 2)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %351

; <label>:179:                                    ; preds = %175
  %180 = load i32, i32* %20, align 4
  %181 = zext i32 %180 to i64
  call void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %34)
  call void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"* %35) #12
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"* %33, i64 %181, %class.Tensor.33* dereferenceable(72) %34, %"class.std::allocator.67"* dereferenceable(1) %35)
          to label %182 unwind label %245

; <label>:182:                                    ; preds = %179
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %35) #12
  %183 = load i32, i32* %20, align 4
  %184 = zext i32 %183 to i64
  invoke void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %37)
          to label %185 unwind label %249

; <label>:185:                                    ; preds = %182
  call void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"* %38) #12
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"* %36, i64 %184, %class.Tensor.33* dereferenceable(72) %37, %"class.std::allocator.67"* dereferenceable(1) %38)
          to label %186 unwind label %253

; <label>:186:                                    ; preds = %185
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %38) #12
  store i32 0, i32* %39, align 4
  br label %187

; <label>:187:                                    ; preds = %343, %186
  %188 = load i32, i32* %39, align 4
  %189 = bitcast %class.FE_Nedelec* %53 to i8*
  %190 = getelementptr inbounds i8, i8* %189, i64 24
  %191 = bitcast i8* %190 to %class.FiniteElementData*
  %192 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = icmp ult i32 %188, %193
  br i1 %194, label %195, label %346

; <label>:195:                                    ; preds = %187
  %196 = load %class.Mapping*, %class.Mapping** %10, align 8
  %197 = bitcast %class.Mapping* %196 to void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)***
  %198 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*** %197, align 8
  %199 = getelementptr inbounds void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %198, i64 5
  %200 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %199, align 8
  %201 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %33)
          to label %202 unwind label %257

; <label>:202:                                    ; preds = %195
  %203 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %40, i32 0, i32 0
  store %class.Tensor.33* %201, %class.Tensor.33** %203, align 8
  %204 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %40)
          to label %205 unwind label %257

; <label>:205:                                    ; preds = %202
  %206 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %33)
          to label %207 unwind label %257

; <label>:207:                                    ; preds = %205
  %208 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %41, i32 0, i32 0
  store %class.Tensor.33* %206, %class.Tensor.33** %208, align 8
  %209 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %41)
          to label %210 unwind label %257

; <label>:210:                                    ; preds = %207
  %211 = invoke i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"* %33)
          to label %212 unwind label %257

; <label>:212:                                    ; preds = %210
  %213 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %209, i64 %211
  %214 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %17, align 8
  %215 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %214, i32 0, i32 2
  %216 = load i32, i32* %39, align 4
  invoke void @_ZN5TableILi2E6TensorILi2ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor.58"* sret %42, %class.Table.54* %215, i32 %216)
          to label %217 unwind label %257

; <label>:217:                                    ; preds = %212
  %218 = invoke %class.Tensor.33* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor.58"* %42)
          to label %219 unwind label %257

; <label>:219:                                    ; preds = %217
  %220 = invoke i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %18)
          to label %221 unwind label %257

; <label>:221:                                    ; preds = %219
  %222 = zext i32 %220 to i64
  %223 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %218, i64 %222
  %224 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %14, align 8
  invoke void %200(%class.Mapping* %196, %class.Tensor.33* %204, %class.Tensor.33* %213, %class.Tensor.33* %223, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %224)
          to label %225 unwind label %257

; <label>:225:                                    ; preds = %221
  store i32 0, i32* %43, align 4
  br label %226

; <label>:226:                                    ; preds = %242, %225
  %227 = load i32, i32* %43, align 4
  %228 = load i32, i32* %20, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %261

; <label>:230:                                    ; preds = %226
  %231 = load i32, i32* %43, align 4
  %232 = zext i32 %231 to i64
  %233 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %33, i64 %232)
          to label %234 unwind label %257

; <label>:234:                                    ; preds = %230
  invoke void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* sret %44, %class.Tensor.33* dereferenceable(72) %233)
          to label %235 unwind label %257

; <label>:235:                                    ; preds = %234
  %236 = load i32, i32* %43, align 4
  %237 = zext i32 %236 to i64
  %238 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %36, i64 %237)
          to label %239 unwind label %257

; <label>:239:                                    ; preds = %235
  %240 = invoke dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %238, %class.Tensor.33* dereferenceable(72) %44)
          to label %241 unwind label %257

; <label>:241:                                    ; preds = %239
  br label %242

; <label>:242:                                    ; preds = %241
  %243 = load i32, i32* %43, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %43, align 4
  br label %226

; <label>:245:                                    ; preds = %179
  %246 = landingpad { i8*, i32 }
          cleanup
  %247 = extractvalue { i8*, i32 } %246, 0
  store i8* %247, i8** %24, align 8
  %248 = extractvalue { i8*, i32 } %246, 1
  store i32 %248, i32* %25, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %35) #12
  br label %365

; <label>:249:                                    ; preds = %346, %182
  %250 = landingpad { i8*, i32 }
          cleanup
  %251 = extractvalue { i8*, i32 } %250, 0
  store i8* %251, i8** %24, align 8
  %252 = extractvalue { i8*, i32 } %250, 1
  store i32 %252, i32* %25, align 4
  br label %349

; <label>:253:                                    ; preds = %185
  %254 = landingpad { i8*, i32 }
          cleanup
  %255 = extractvalue { i8*, i32 } %254, 0
  store i8* %255, i8** %24, align 8
  %256 = extractvalue { i8*, i32 } %254, 1
  store i32 %256, i32* %25, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %38) #12
  br label %349

; <label>:257:                                    ; preds = %332, %329, %322, %319, %315, %300, %296, %295, %291, %284, %281, %278, %276, %273, %271, %268, %261, %239, %235, %234, %230, %221, %219, %217, %212, %210, %207, %205, %202, %195
  %258 = landingpad { i8*, i32 }
          cleanup
  %259 = extractvalue { i8*, i32 } %258, 0
  store i8* %259, i8** %24, align 8
  %260 = extractvalue { i8*, i32 } %258, 1
  store i32 %260, i32* %25, align 4
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %36)
          to label %348 unwind label %370

; <label>:261:                                    ; preds = %226
  %262 = load %class.Mapping*, %class.Mapping** %10, align 8
  %263 = bitcast %class.Mapping* %262 to void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)***
  %264 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*** %263, align 8
  %265 = getelementptr inbounds void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %264, i64 5
  %266 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %265, align 8
  %267 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %33)
          to label %268 unwind label %257

; <label>:268:                                    ; preds = %261
  %269 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %45, i32 0, i32 0
  store %class.Tensor.33* %267, %class.Tensor.33** %269, align 8
  %270 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %45)
          to label %271 unwind label %257

; <label>:271:                                    ; preds = %268
  %272 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %33)
          to label %273 unwind label %257

; <label>:273:                                    ; preds = %271
  %274 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %46, i32 0, i32 0
  store %class.Tensor.33* %272, %class.Tensor.33** %274, align 8
  %275 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %46)
          to label %276 unwind label %257

; <label>:276:                                    ; preds = %273
  %277 = invoke i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"* %33)
          to label %278 unwind label %257

; <label>:278:                                    ; preds = %276
  %279 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %275, i64 %277
  %280 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %36)
          to label %281 unwind label %257

; <label>:281:                                    ; preds = %278
  %282 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %47, i32 0, i32 0
  store %class.Tensor.33* %280, %class.Tensor.33** %282, align 8
  %283 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %47)
          to label %284 unwind label %257

; <label>:284:                                    ; preds = %281
  %285 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %14, align 8
  invoke void %266(%class.Mapping* %262, %class.Tensor.33* %270, %class.Tensor.33* %279, %class.Tensor.33* %283, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %285)
          to label %286 unwind label %257

; <label>:286:                                    ; preds = %284
  store i32 0, i32* %48, align 4
  br label %287

; <label>:287:                                    ; preds = %303, %286
  %288 = load i32, i32* %48, align 4
  %289 = load i32, i32* %20, align 4
  %290 = icmp ult i32 %288, %289
  br i1 %290, label %291, label %306

; <label>:291:                                    ; preds = %287
  %292 = load i32, i32* %48, align 4
  %293 = zext i32 %292 to i64
  %294 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %33, i64 %293)
          to label %295 unwind label %257

; <label>:295:                                    ; preds = %291
  invoke void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* sret %49, %class.Tensor.33* dereferenceable(72) %294)
          to label %296 unwind label %257

; <label>:296:                                    ; preds = %295
  %297 = load i32, i32* %48, align 4
  %298 = zext i32 %297 to i64
  %299 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %36, i64 %298)
          to label %300 unwind label %257

; <label>:300:                                    ; preds = %296
  %301 = invoke dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %299, %class.Tensor.33* dereferenceable(72) %49)
          to label %302 unwind label %257

; <label>:302:                                    ; preds = %300
  br label %303

; <label>:303:                                    ; preds = %302
  %304 = load i32, i32* %48, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %48, align 4
  br label %287

; <label>:306:                                    ; preds = %287
  store i32 0, i32* %50, align 4
  br label %307

; <label>:307:                                    ; preds = %339, %306
  %308 = load i32, i32* %50, align 4
  %309 = load i32, i32* %20, align 4
  %310 = icmp ult i32 %308, %309
  br i1 %310, label %311, label %342

; <label>:311:                                    ; preds = %307
  store i32 0, i32* %51, align 4
  br label %312

; <label>:312:                                    ; preds = %335, %311
  %313 = load i32, i32* %51, align 4
  %314 = icmp ult i32 %313, 3
  br i1 %314, label %315, label %338

; <label>:315:                                    ; preds = %312
  %316 = load i32, i32* %50, align 4
  %317 = zext i32 %316 to i64
  %318 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %36, i64 %317)
          to label %319 unwind label %257

; <label>:319:                                    ; preds = %315
  %320 = load i32, i32* %51, align 4
  %321 = invoke dereferenceable(24) %class.Tensor* @_ZN6TensorILi2ELi3EEixEj(%class.Tensor.33* %318, i32 %320)
          to label %322 unwind label %257

; <label>:322:                                    ; preds = %319
  %323 = load %class.FEValuesData*, %class.FEValuesData** %16, align 8
  %324 = getelementptr inbounds %class.FEValuesData, %class.FEValuesData* %323, i32 0, i32 1
  %325 = load i32, i32* %39, align 4
  %326 = mul i32 %325, 3
  %327 = load i32, i32* %51, align 4
  %328 = add i32 %326, %327
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %52, %class.Table.50* %324, i32 %328)
          to label %329 unwind label %257

; <label>:329:                                    ; preds = %322
  %330 = load i32, i32* %50, align 4
  %331 = invoke dereferenceable(24) %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor"* %52, i32 %330)
          to label %332 unwind label %257

; <label>:332:                                    ; preds = %329
  %333 = invoke dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %331, %class.Tensor* dereferenceable(24) %321)
          to label %334 unwind label %257

; <label>:334:                                    ; preds = %332
  br label %335

; <label>:335:                                    ; preds = %334
  %336 = load i32, i32* %51, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %51, align 4
  br label %312

; <label>:338:                                    ; preds = %312
  br label %339

; <label>:339:                                    ; preds = %338
  %340 = load i32, i32* %50, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %50, align 4
  br label %307

; <label>:342:                                    ; preds = %307
  br label %343

; <label>:343:                                    ; preds = %342
  %344 = load i32, i32* %39, align 4
  %345 = add i32 %344, 1
  store i32 %345, i32* %39, align 4
  br label %187

; <label>:346:                                    ; preds = %187
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %36)
          to label %347 unwind label %249

; <label>:347:                                    ; preds = %346
  call void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %33)
  br label %351

; <label>:348:                                    ; preds = %257
  br label %349

; <label>:349:                                    ; preds = %348, %253, %249
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %33)
          to label %350 unwind label %370

; <label>:350:                                    ; preds = %349
  br label %365

; <label>:351:                                    ; preds = %347, %175
  %352 = load i32, i32* %19, align 4
  %353 = call i32 @_Zan11UpdateFlagsS_(i32 %352, i32 4)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %364

; <label>:355:                                    ; preds = %351
  %356 = bitcast %class.FE_Nedelec* %53 to %class.FiniteElementBase*
  %357 = load %class.Mapping*, %class.Mapping** %10, align 8
  %358 = load %class.TriaIterator*, %class.TriaIterator** %11, align 8
  %359 = call i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %18)
  %360 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %14, align 8
  %361 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %17, align 8
  %362 = bitcast %"class.FE_Nedelec<3>::InternalData"* %361 to %"class.FiniteElementBase<3>::InternalDataBase"*
  %363 = load %class.FEValuesData*, %class.FEValuesData** %16, align 8
  call void @_ZNK17FiniteElementBaseILi3EE11compute_2ndERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRNS2_16InternalDataBaseERNS0_16InternalDataBaseER12FEValuesDataILi3EE(%class.FiniteElementBase* %356, %class.Mapping* dereferenceable(24) %357, %class.TriaIterator* dereferenceable(24) %358, i32 %359, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %360, %"class.FiniteElementBase<3>::InternalDataBase"* dereferenceable(64) %362, %class.FEValuesData* dereferenceable(272) %363)
  br label %364

; <label>:364:                                    ; preds = %355, %351
  ret void

; <label>:365:                                    ; preds = %350, %245, %174, %157
  %366 = load i8*, i8** %24, align 8
  %367 = load i32, i32* %25, align 4
  %368 = insertvalue { i8*, i32 } undef, i8* %366, 0
  %369 = insertvalue { i8*, i32 } %368, i32 %367, 1
  resume { i8*, i32 } %369

; <label>:370:                                    ; preds = %349, %257, %161
  %371 = landingpad { i8*, i32 }
          catch i8* null
  %372 = extractvalue { i8*, i32 } %371, 0
  call void @__clang_call_terminate(i8* %372) #10
  unreachable
}

declare i32 @_ZN10QProjectorILi3EE17DataSetDescriptor4faceEjbj(i32, i1 zeroext, i32) #2

; Function Attrs: noinline uwtable
define linkonce_odr %class.DoFCellAccessor* @_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEptEv(%class.TriaRawIterator*) #0 comdat align 2 {
  %2 = alloca %class.TriaRawIterator*, align 8
  store %class.TriaRawIterator* %0, %class.TriaRawIterator** %2, align 8
  %3 = load %class.TriaRawIterator*, %class.TriaRawIterator** %2, align 8
  %4 = call dereferenceable(24) %class.DoFCellAccessor* @_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEdeEv(%class.TriaRawIterator* %3)
  ret %class.DoFCellAccessor* %4
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZNK18TriaObjectAccessorILi3ELi3EE16face_orientationEj(%class.TriaObjectAccessor*, i32) #0 comdat align 2 {
  %3 = alloca %class.TriaObjectAccessor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::_Bit_reference", align 8
  store %class.TriaObjectAccessor* %0, %class.TriaObjectAccessor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.TriaObjectAccessor*, %class.TriaObjectAccessor** %3, align 8
  %7 = bitcast %class.TriaObjectAccessor* %6 to %class.TriaAccessor*
  %8 = getelementptr inbounds %class.TriaAccessor, %class.TriaAccessor* %7, i32 0, i32 2
  %9 = load %class.Triangulation*, %class.Triangulation** %8, align 8
  %10 = getelementptr inbounds %class.Triangulation, %class.Triangulation* %9, i32 0, i32 1
  %11 = bitcast %class.TriaObjectAccessor* %6 to %class.TriaAccessor*
  %12 = getelementptr inbounds %class.TriaAccessor, %class.TriaAccessor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = call dereferenceable(8) %class.TriangulationLevel** @_ZNKSt6vectorIP18TriangulationLevelILi3EESaIS2_EEixEm(%"class.std::vector.72"* %10, i64 %14)
  %16 = load %class.TriangulationLevel*, %class.TriangulationLevel** %15, align 8
  %17 = getelementptr inbounds %class.TriangulationLevel, %class.TriangulationLevel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %"struct.TriangulationLevel<3>::HexesData", %"struct.TriangulationLevel<3>::HexesData"* %17, i32 0, i32 6
  %19 = bitcast %class.TriaObjectAccessor* %6 to %class.TriaAccessor*
  %20 = getelementptr inbounds %class.TriaAccessor, %class.TriaAccessor* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %21, 6
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.7"* %18, i64 %25)
  %27 = bitcast %"struct.std::_Bit_reference"* %5 to { i64*, i64 }*
  %28 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %27, i32 0, i32 0
  %29 = extractvalue { i64*, i64 } %26, 0
  store i64* %29, i64** %28, align 8
  %30 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %27, i32 0, i32 1
  %31 = extractvalue { i64*, i64 } %26, 1
  store i64 %31, i64* %30, align 8
  %32 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %5)
  ret i1 %32
}

; Function Attrs: noinline uwtable
define weak_odr void @_ZNK10FE_NedelecILi3EE22fill_fe_subface_valuesERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjjRK10QuadratureILi2EERNS2_16InternalDataBaseESG_R12FEValuesDataILi3EE(%class.FE_Nedelec*, %class.Mapping* dereferenceable(24), %class.TriaIterator* dereferenceable(24), i32, i32, %class.Quadrature.126* dereferenceable(80), %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %"class.Mapping<3>::InternalDataBase"* dereferenceable(40), %class.FEValuesData* dereferenceable(272)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %10 = alloca %class.FE_Nedelec*, align 8
  %11 = alloca %class.Mapping*, align 8
  %12 = alloca %class.TriaIterator*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %class.Quadrature.126*, align 8
  %16 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  %17 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  %18 = alloca %class.FEValuesData*, align 8
  %19 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %20 = alloca %"class.QProjector<3>::DataSetDescriptor", align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %"class.std::vector.59", align 8
  %24 = alloca %class.Tensor, align 8
  %25 = alloca %"class.std::allocator.61", align 1
  %26 = alloca i8*
  %27 = alloca i32
  %28 = alloca i32, align 4
  %29 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %30 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %31 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %"class.internal::TableBaseAccessors::Accessor.64", align 8
  %35 = alloca %"class.std::vector.65", align 8
  %36 = alloca %class.Tensor.33, align 8
  %37 = alloca %"class.std::allocator.67", align 1
  %38 = alloca %"class.std::vector.65", align 8
  %39 = alloca %class.Tensor.33, align 8
  %40 = alloca %"class.std::allocator.67", align 1
  %41 = alloca i32, align 4
  %42 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %43 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %44 = alloca %"class.internal::TableBaseAccessors::Accessor.58", align 8
  %45 = alloca i32, align 4
  %46 = alloca %class.Tensor.33, align 8
  %47 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %48 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %49 = alloca %"class.__gnu_cxx::__normal_iterator.70", align 8
  %50 = alloca i32, align 4
  %51 = alloca %class.Tensor.33, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca %"class.internal::TableBaseAccessors::Accessor", align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %10, align 8
  store %class.Mapping* %1, %class.Mapping** %11, align 8
  store %class.TriaIterator* %2, %class.TriaIterator** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %class.Quadrature.126* %5, %class.Quadrature.126** %15, align 8
  store %"class.Mapping<3>::InternalDataBase"* %6, %"class.Mapping<3>::InternalDataBase"** %16, align 8
  store %"class.Mapping<3>::InternalDataBase"* %7, %"class.Mapping<3>::InternalDataBase"** %17, align 8
  store %class.FEValuesData* %8, %class.FEValuesData** %18, align 8
  %55 = load %class.FE_Nedelec*, %class.FE_Nedelec** %10, align 8
  %56 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %17, align 8
  %57 = bitcast %"class.Mapping<3>::InternalDataBase"* %56 to i8*
  %58 = call i8* @__dynamic_cast(i8* %57, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7MappingILi3EE16InternalDataBaseE to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10FE_NedelecILi3EE12InternalDataE to i8*), i64 0) #12
  %59 = bitcast i8* %58 to %"class.FE_Nedelec<3>::InternalData"*
  %60 = icmp eq %"class.FE_Nedelec<3>::InternalData"* %59, null
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %9
  call void @__cxa_bad_cast() #15
  unreachable

; <label>:62:                                     ; preds = %9
  store %"class.FE_Nedelec<3>::InternalData"* %59, %"class.FE_Nedelec<3>::InternalData"** %19, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %class.TriaIterator*, %class.TriaIterator** %12, align 8
  %66 = bitcast %class.TriaIterator* %65 to %class.TriaRawIterator*
  %67 = call %class.DoFCellAccessor* @_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEptEv(%class.TriaRawIterator* %66)
  %68 = bitcast %class.DoFCellAccessor* %67 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  %70 = bitcast i8* %69 to %class.TriaObjectAccessor*
  %71 = load i32, i32* %13, align 4
  %72 = call zeroext i1 @_ZNK18TriaObjectAccessorILi3ELi3EE16face_orientationEj(%class.TriaObjectAccessor* %70, i32 %71)
  %73 = load %class.Quadrature.126*, %class.Quadrature.126** %15, align 8
  %74 = getelementptr inbounds %class.Quadrature.126, %class.Quadrature.126* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @_ZN10QProjectorILi3EE17DataSetDescriptor8sub_faceEjjbj(i32 %63, i32 %64, i1 zeroext %72, i32 %75)
  %77 = getelementptr inbounds %"class.QProjector<3>::DataSetDescriptor", %"class.QProjector<3>::DataSetDescriptor"* %20, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %19, align 8
  %79 = bitcast %"class.FE_Nedelec<3>::InternalData"* %78 to %"class.Mapping<3>::InternalDataBase"*
  %80 = call i32 @_ZNK7MappingILi3EE16InternalDataBase20current_update_flagsEv(%"class.Mapping<3>::InternalDataBase"* %79)
  store i32 %80, i32* %21, align 4
  %81 = load %class.Quadrature.126*, %class.Quadrature.126** %15, align 8
  %82 = getelementptr inbounds %class.Quadrature.126, %class.Quadrature.126* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @_Zan11UpdateFlagsS_(i32 %84, i32 1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %178

; <label>:87:                                     ; preds = %62
  %88 = load i32, i32* %22, align 4
  %89 = zext i32 %88 to i64
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %24, i1 zeroext true)
  call void @_ZNSaI6TensorILi1ELi3EEEC2Ev(%"class.std::allocator.61"* %25) #12
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.59"* %23, i64 %89, %class.Tensor* dereferenceable(24) %24, %"class.std::allocator.61"* dereferenceable(1) %25)
          to label %90 unwind label %160

; <label>:90:                                     ; preds = %87
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %25) #12
  store i32 0, i32* %28, align 4
  br label %91

; <label>:91:                                     ; preds = %173, %90
  %92 = load i32, i32* %28, align 4
  %93 = bitcast %class.FE_Nedelec* %55 to i8*
  %94 = getelementptr inbounds i8, i8* %93, i64 24
  %95 = bitcast i8* %94 to %class.FiniteElementData*
  %96 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %92, %97
  br i1 %98, label %99, label %176

; <label>:99:                                     ; preds = %91
  %100 = load %class.Mapping*, %class.Mapping** %11, align 8
  %101 = bitcast %class.Mapping* %100 to void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)***
  %102 = load void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*** %101, align 8
  %103 = getelementptr inbounds void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)** %102, i64 4
  %104 = load void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor*, %class.Tensor*, %class.Tensor*, %"class.Mapping<3>::InternalDataBase"*)** %103, align 8
  %105 = invoke %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"* %23)
          to label %106 unwind label %164

; <label>:106:                                    ; preds = %99
  %107 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %29, i32 0, i32 0
  store %class.Tensor* %105, %class.Tensor** %107, align 8
  %108 = invoke dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %29)
          to label %109 unwind label %164

; <label>:109:                                    ; preds = %106
  %110 = invoke %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE5beginEv(%"class.std::vector.59"* %23)
          to label %111 unwind label %164

; <label>:111:                                    ; preds = %109
  %112 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %30, i32 0, i32 0
  store %class.Tensor* %110, %class.Tensor** %112, align 8
  %113 = invoke dereferenceable(24) %class.Tensor* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %30)
          to label %114 unwind label %164

; <label>:114:                                    ; preds = %111
  %115 = invoke i64 @_ZNKSt6vectorI6TensorILi1ELi3EESaIS1_EE4sizeEv(%"class.std::vector.59"* %23)
          to label %116 unwind label %164

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds %class.Tensor, %class.Tensor* %113, i64 %115
  %118 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %19, align 8
  %119 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %118, i32 0, i32 1
  %120 = load i32, i32* %28, align 4
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %31, %class.Table.50* %119, i32 %120)
          to label %121 unwind label %164

; <label>:121:                                    ; preds = %116
  %122 = invoke %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor"* %31)
          to label %123 unwind label %164

; <label>:123:                                    ; preds = %121
  %124 = invoke i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %20)
          to label %125 unwind label %164

; <label>:125:                                    ; preds = %123
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds %class.Tensor, %class.Tensor* %122, i64 %126
  %128 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %16, align 8
  invoke void %104(%class.Mapping* %100, %class.Tensor* %108, %class.Tensor* %117, %class.Tensor* %127, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %128)
          to label %129 unwind label %164

; <label>:129:                                    ; preds = %125
  store i32 0, i32* %32, align 4
  br label %130

; <label>:130:                                    ; preds = %169, %129
  %131 = load i32, i32* %32, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %172

; <label>:134:                                    ; preds = %130
  store i32 0, i32* %33, align 4
  br label %135

; <label>:135:                                    ; preds = %157, %134
  %136 = load i32, i32* %33, align 4
  %137 = icmp ult i32 %136, 3
  br i1 %137, label %138, label %168

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %32, align 4
  %140 = zext i32 %139 to i64
  %141 = invoke dereferenceable(24) %class.Tensor* @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EEixEm(%"class.std::vector.59"* %23, i64 %140)
          to label %142 unwind label %164

; <label>:142:                                    ; preds = %138
  %143 = load i32, i32* %33, align 4
  %144 = invoke dereferenceable(8) double* @_ZN6TensorILi1ELi3EEixEj(%class.Tensor* %141, i32 %143)
          to label %145 unwind label %164

; <label>:145:                                    ; preds = %142
  %146 = load double, double* %144, align 8
  %147 = load %class.FEValuesData*, %class.FEValuesData** %18, align 8
  %148 = getelementptr inbounds %class.FEValuesData, %class.FEValuesData* %147, i32 0, i32 0
  %149 = load i32, i32* %28, align 4
  %150 = mul i32 %149, 3
  %151 = load i32, i32* %33, align 4
  %152 = add i32 %150, %151
  invoke void @_ZN5TableILi2EdEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* sret %34, %class.Table* %148, i32 %152)
          to label %153 unwind label %164

; <label>:153:                                    ; preds = %145
  %154 = load i32, i32* %32, align 4
  %155 = invoke dereferenceable(8) double* @_ZNK8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor.64"* %34, i32 %154)
          to label %156 unwind label %164

; <label>:156:                                    ; preds = %153
  store double %146, double* %155, align 8
  br label %157

; <label>:157:                                    ; preds = %156
  %158 = load i32, i32* %33, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %33, align 4
  br label %135

; <label>:160:                                    ; preds = %87
  %161 = landingpad { i8*, i32 }
          cleanup
  %162 = extractvalue { i8*, i32 } %161, 0
  store i8* %162, i8** %26, align 8
  %163 = extractvalue { i8*, i32 } %161, 1
  store i32 %163, i32* %27, align 4
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %25) #12
  br label %368

; <label>:164:                                    ; preds = %153, %145, %142, %138, %125, %123, %121, %116, %114, %111, %109, %106, %99
  %165 = landingpad { i8*, i32 }
          cleanup
  %166 = extractvalue { i8*, i32 } %165, 0
  store i8* %166, i8** %26, align 8
  %167 = extractvalue { i8*, i32 } %165, 1
  store i32 %167, i32* %27, align 4
  invoke void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"* %23)
          to label %177 unwind label %373

; <label>:168:                                    ; preds = %135
  br label %169

; <label>:169:                                    ; preds = %168
  %170 = load i32, i32* %32, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %32, align 4
  br label %130

; <label>:172:                                    ; preds = %130
  br label %173

; <label>:173:                                    ; preds = %172
  %174 = load i32, i32* %28, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %28, align 4
  br label %91

; <label>:176:                                    ; preds = %91
  call void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EED2Ev(%"class.std::vector.59"* %23)
  br label %178

; <label>:177:                                    ; preds = %164
  br label %368

; <label>:178:                                    ; preds = %176, %62
  %179 = load i32, i32* %21, align 4
  %180 = call i32 @_Zan11UpdateFlagsS_(i32 %179, i32 2)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %354

; <label>:182:                                    ; preds = %178
  %183 = load i32, i32* %22, align 4
  %184 = zext i32 %183 to i64
  call void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %36)
  call void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"* %37) #12
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"* %35, i64 %184, %class.Tensor.33* dereferenceable(72) %36, %"class.std::allocator.67"* dereferenceable(1) %37)
          to label %185 unwind label %248

; <label>:185:                                    ; preds = %182
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %37) #12
  %186 = load i32, i32* %22, align 4
  %187 = zext i32 %186 to i64
  invoke void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %39)
          to label %188 unwind label %252

; <label>:188:                                    ; preds = %185
  call void @_ZNSaI6TensorILi2ELi3EEEC2Ev(%"class.std::allocator.67"* %40) #12
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEC2EmRKS1_RKS2_(%"class.std::vector.65"* %38, i64 %187, %class.Tensor.33* dereferenceable(72) %39, %"class.std::allocator.67"* dereferenceable(1) %40)
          to label %189 unwind label %256

; <label>:189:                                    ; preds = %188
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %40) #12
  store i32 0, i32* %41, align 4
  br label %190

; <label>:190:                                    ; preds = %346, %189
  %191 = load i32, i32* %41, align 4
  %192 = bitcast %class.FE_Nedelec* %55 to i8*
  %193 = getelementptr inbounds i8, i8* %192, i64 24
  %194 = bitcast i8* %193 to %class.FiniteElementData*
  %195 = getelementptr inbounds %class.FiniteElementData, %class.FiniteElementData* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = icmp ult i32 %191, %196
  br i1 %197, label %198, label %349

; <label>:198:                                    ; preds = %190
  %199 = load %class.Mapping*, %class.Mapping** %11, align 8
  %200 = bitcast %class.Mapping* %199 to void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)***
  %201 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*** %200, align 8
  %202 = getelementptr inbounds void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %201, i64 5
  %203 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %202, align 8
  %204 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %35)
          to label %205 unwind label %260

; <label>:205:                                    ; preds = %198
  %206 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %42, i32 0, i32 0
  store %class.Tensor.33* %204, %class.Tensor.33** %206, align 8
  %207 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %42)
          to label %208 unwind label %260

; <label>:208:                                    ; preds = %205
  %209 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %35)
          to label %210 unwind label %260

; <label>:210:                                    ; preds = %208
  %211 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %43, i32 0, i32 0
  store %class.Tensor.33* %209, %class.Tensor.33** %211, align 8
  %212 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %43)
          to label %213 unwind label %260

; <label>:213:                                    ; preds = %210
  %214 = invoke i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"* %35)
          to label %215 unwind label %260

; <label>:215:                                    ; preds = %213
  %216 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %212, i64 %214
  %217 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %19, align 8
  %218 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %217, i32 0, i32 2
  %219 = load i32, i32* %41, align 4
  invoke void @_ZN5TableILi2E6TensorILi2ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor.58"* sret %44, %class.Table.54* %218, i32 %219)
          to label %220 unwind label %260

; <label>:220:                                    ; preds = %215
  %221 = invoke %class.Tensor.33* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EE5beginEv(%"class.internal::TableBaseAccessors::Accessor.58"* %44)
          to label %222 unwind label %260

; <label>:222:                                    ; preds = %220
  %223 = invoke i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %20)
          to label %224 unwind label %260

; <label>:224:                                    ; preds = %222
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %221, i64 %225
  %227 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %16, align 8
  invoke void %203(%class.Mapping* %199, %class.Tensor.33* %207, %class.Tensor.33* %216, %class.Tensor.33* %226, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %227)
          to label %228 unwind label %260

; <label>:228:                                    ; preds = %224
  store i32 0, i32* %45, align 4
  br label %229

; <label>:229:                                    ; preds = %245, %228
  %230 = load i32, i32* %45, align 4
  %231 = load i32, i32* %22, align 4
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %264

; <label>:233:                                    ; preds = %229
  %234 = load i32, i32* %45, align 4
  %235 = zext i32 %234 to i64
  %236 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %35, i64 %235)
          to label %237 unwind label %260

; <label>:237:                                    ; preds = %233
  invoke void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* sret %46, %class.Tensor.33* dereferenceable(72) %236)
          to label %238 unwind label %260

; <label>:238:                                    ; preds = %237
  %239 = load i32, i32* %45, align 4
  %240 = zext i32 %239 to i64
  %241 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %38, i64 %240)
          to label %242 unwind label %260

; <label>:242:                                    ; preds = %238
  %243 = invoke dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %241, %class.Tensor.33* dereferenceable(72) %46)
          to label %244 unwind label %260

; <label>:244:                                    ; preds = %242
  br label %245

; <label>:245:                                    ; preds = %244
  %246 = load i32, i32* %45, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %45, align 4
  br label %229

; <label>:248:                                    ; preds = %182
  %249 = landingpad { i8*, i32 }
          cleanup
  %250 = extractvalue { i8*, i32 } %249, 0
  store i8* %250, i8** %26, align 8
  %251 = extractvalue { i8*, i32 } %249, 1
  store i32 %251, i32* %27, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %37) #12
  br label %368

; <label>:252:                                    ; preds = %349, %185
  %253 = landingpad { i8*, i32 }
          cleanup
  %254 = extractvalue { i8*, i32 } %253, 0
  store i8* %254, i8** %26, align 8
  %255 = extractvalue { i8*, i32 } %253, 1
  store i32 %255, i32* %27, align 4
  br label %352

; <label>:256:                                    ; preds = %188
  %257 = landingpad { i8*, i32 }
          cleanup
  %258 = extractvalue { i8*, i32 } %257, 0
  store i8* %258, i8** %26, align 8
  %259 = extractvalue { i8*, i32 } %257, 1
  store i32 %259, i32* %27, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %40) #12
  br label %352

; <label>:260:                                    ; preds = %335, %332, %325, %322, %318, %303, %299, %298, %294, %287, %284, %281, %279, %276, %274, %271, %264, %242, %238, %237, %233, %224, %222, %220, %215, %213, %210, %208, %205, %198
  %261 = landingpad { i8*, i32 }
          cleanup
  %262 = extractvalue { i8*, i32 } %261, 0
  store i8* %262, i8** %26, align 8
  %263 = extractvalue { i8*, i32 } %261, 1
  store i32 %263, i32* %27, align 4
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %38)
          to label %351 unwind label %373

; <label>:264:                                    ; preds = %229
  %265 = load %class.Mapping*, %class.Mapping** %11, align 8
  %266 = bitcast %class.Mapping* %265 to void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)***
  %267 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)**, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*** %266, align 8
  %268 = getelementptr inbounds void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %267, i64 5
  %269 = load void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)*, void (%class.Mapping*, %class.Tensor.33*, %class.Tensor.33*, %class.Tensor.33*, %"class.Mapping<3>::InternalDataBase"*)** %268, align 8
  %270 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %35)
          to label %271 unwind label %260

; <label>:271:                                    ; preds = %264
  %272 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %47, i32 0, i32 0
  store %class.Tensor.33* %270, %class.Tensor.33** %272, align 8
  %273 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %47)
          to label %274 unwind label %260

; <label>:274:                                    ; preds = %271
  %275 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %35)
          to label %276 unwind label %260

; <label>:276:                                    ; preds = %274
  %277 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %48, i32 0, i32 0
  store %class.Tensor.33* %275, %class.Tensor.33** %277, align 8
  %278 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %48)
          to label %279 unwind label %260

; <label>:279:                                    ; preds = %276
  %280 = invoke i64 @_ZNKSt6vectorI6TensorILi2ELi3EESaIS1_EE4sizeEv(%"class.std::vector.65"* %35)
          to label %281 unwind label %260

; <label>:281:                                    ; preds = %279
  %282 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %278, i64 %280
  %283 = invoke %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE5beginEv(%"class.std::vector.65"* %38)
          to label %284 unwind label %260

; <label>:284:                                    ; preds = %281
  %285 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %49, i32 0, i32 0
  store %class.Tensor.33* %283, %class.Tensor.33** %285, align 8
  %286 = invoke dereferenceable(72) %class.Tensor.33* @_ZNK9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.70"* %49)
          to label %287 unwind label %260

; <label>:287:                                    ; preds = %284
  %288 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %16, align 8
  invoke void %269(%class.Mapping* %265, %class.Tensor.33* %273, %class.Tensor.33* %282, %class.Tensor.33* %286, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %288)
          to label %289 unwind label %260

; <label>:289:                                    ; preds = %287
  store i32 0, i32* %50, align 4
  br label %290

; <label>:290:                                    ; preds = %306, %289
  %291 = load i32, i32* %50, align 4
  %292 = load i32, i32* %22, align 4
  %293 = icmp ult i32 %291, %292
  br i1 %293, label %294, label %309

; <label>:294:                                    ; preds = %290
  %295 = load i32, i32* %50, align 4
  %296 = zext i32 %295 to i64
  %297 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %35, i64 %296)
          to label %298 unwind label %260

; <label>:298:                                    ; preds = %294
  invoke void @_Z9transposeRK6TensorILi2ELi3EE(%class.Tensor.33* sret %51, %class.Tensor.33* dereferenceable(72) %297)
          to label %299 unwind label %260

; <label>:299:                                    ; preds = %298
  %300 = load i32, i32* %50, align 4
  %301 = zext i32 %300 to i64
  %302 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %38, i64 %301)
          to label %303 unwind label %260

; <label>:303:                                    ; preds = %299
  %304 = invoke dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %302, %class.Tensor.33* dereferenceable(72) %51)
          to label %305 unwind label %260

; <label>:305:                                    ; preds = %303
  br label %306

; <label>:306:                                    ; preds = %305
  %307 = load i32, i32* %50, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %50, align 4
  br label %290

; <label>:309:                                    ; preds = %290
  store i32 0, i32* %52, align 4
  br label %310

; <label>:310:                                    ; preds = %342, %309
  %311 = load i32, i32* %52, align 4
  %312 = load i32, i32* %22, align 4
  %313 = icmp ult i32 %311, %312
  br i1 %313, label %314, label %345

; <label>:314:                                    ; preds = %310
  store i32 0, i32* %53, align 4
  br label %315

; <label>:315:                                    ; preds = %338, %314
  %316 = load i32, i32* %53, align 4
  %317 = icmp ult i32 %316, 3
  br i1 %317, label %318, label %341

; <label>:318:                                    ; preds = %315
  %319 = load i32, i32* %52, align 4
  %320 = zext i32 %319 to i64
  %321 = invoke dereferenceable(72) %class.Tensor.33* @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EEixEm(%"class.std::vector.65"* %38, i64 %320)
          to label %322 unwind label %260

; <label>:322:                                    ; preds = %318
  %323 = load i32, i32* %53, align 4
  %324 = invoke dereferenceable(24) %class.Tensor* @_ZN6TensorILi2ELi3EEixEj(%class.Tensor.33* %321, i32 %323)
          to label %325 unwind label %260

; <label>:325:                                    ; preds = %322
  %326 = load %class.FEValuesData*, %class.FEValuesData** %18, align 8
  %327 = getelementptr inbounds %class.FEValuesData, %class.FEValuesData* %326, i32 0, i32 1
  %328 = load i32, i32* %41, align 4
  %329 = mul i32 %328, 3
  %330 = load i32, i32* %53, align 4
  %331 = add i32 %329, %330
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEEixEj(%"class.internal::TableBaseAccessors::Accessor"* sret %54, %class.Table.50* %327, i32 %331)
          to label %332 unwind label %260

; <label>:332:                                    ; preds = %325
  %333 = load i32, i32* %52, align 4
  %334 = invoke dereferenceable(24) %class.Tensor* @_ZNK8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEixEj(%"class.internal::TableBaseAccessors::Accessor"* %54, i32 %333)
          to label %335 unwind label %260

; <label>:335:                                    ; preds = %332
  %336 = invoke dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %334, %class.Tensor* dereferenceable(24) %324)
          to label %337 unwind label %260

; <label>:337:                                    ; preds = %335
  br label %338

; <label>:338:                                    ; preds = %337
  %339 = load i32, i32* %53, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %53, align 4
  br label %315

; <label>:341:                                    ; preds = %315
  br label %342

; <label>:342:                                    ; preds = %341
  %343 = load i32, i32* %52, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %52, align 4
  br label %310

; <label>:345:                                    ; preds = %310
  br label %346

; <label>:346:                                    ; preds = %345
  %347 = load i32, i32* %41, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %41, align 4
  br label %190

; <label>:349:                                    ; preds = %190
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %38)
          to label %350 unwind label %252

; <label>:350:                                    ; preds = %349
  call void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %35)
  br label %354

; <label>:351:                                    ; preds = %260
  br label %352

; <label>:352:                                    ; preds = %351, %256, %252
  invoke void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EED2Ev(%"class.std::vector.65"* %35)
          to label %353 unwind label %373

; <label>:353:                                    ; preds = %352
  br label %368

; <label>:354:                                    ; preds = %350, %178
  %355 = load i32, i32* %21, align 4
  %356 = call i32 @_Zan11UpdateFlagsS_(i32 %355, i32 4)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %367

; <label>:358:                                    ; preds = %354
  %359 = bitcast %class.FE_Nedelec* %55 to %class.FiniteElementBase*
  %360 = load %class.Mapping*, %class.Mapping** %11, align 8
  %361 = load %class.TriaIterator*, %class.TriaIterator** %12, align 8
  %362 = call i32 @_ZNK10QProjectorILi3EE17DataSetDescriptorcvjEv(%"class.QProjector<3>::DataSetDescriptor"* %20)
  %363 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %16, align 8
  %364 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %19, align 8
  %365 = bitcast %"class.FE_Nedelec<3>::InternalData"* %364 to %"class.FiniteElementBase<3>::InternalDataBase"*
  %366 = load %class.FEValuesData*, %class.FEValuesData** %18, align 8
  call void @_ZNK17FiniteElementBaseILi3EE11compute_2ndERK7MappingILi3EERK12TriaIteratorILi3E15DoFCellAccessorILi3EEEjRNS2_16InternalDataBaseERNS0_16InternalDataBaseER12FEValuesDataILi3EE(%class.FiniteElementBase* %359, %class.Mapping* dereferenceable(24) %360, %class.TriaIterator* dereferenceable(24) %361, i32 %362, %"class.Mapping<3>::InternalDataBase"* dereferenceable(40) %363, %"class.FiniteElementBase<3>::InternalDataBase"* dereferenceable(64) %365, %class.FEValuesData* dereferenceable(272) %366)
  br label %367

; <label>:367:                                    ; preds = %358, %354
  ret void

; <label>:368:                                    ; preds = %353, %248, %177, %160
  %369 = load i8*, i8** %26, align 8
  %370 = load i32, i32* %27, align 4
  %371 = insertvalue { i8*, i32 } undef, i8* %369, 0
  %372 = insertvalue { i8*, i32 } %371, i32 %370, 1
  resume { i8*, i32 } %372

; <label>:373:                                    ; preds = %352, %260, %164
  %374 = landingpad { i8*, i32 }
          catch i8* null
  %375 = extractvalue { i8*, i32 } %374, 0
  call void @__clang_call_terminate(i8* %375) #10
  unreachable
}

declare i32 @_ZN10QProjectorILi3EE17DataSetDescriptor8sub_faceEjjbj(i32, i32, i1 zeroext, i32) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIjEC2Ev(%"class.std::allocator.30"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.30"*, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %2, align 8
  %3 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %2, align 8
  %4 = bitcast %"class.std::allocator.30"* %3 to %"class.__gnu_cxx::new_allocator.31"*
  call void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(%"class.__gnu_cxx::new_allocator.31"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_(%"class.std::vector.28"*, i64, i32* dereferenceable(4), %"class.std::allocator.30"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::vector.28"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator.30"*, align 8
  %9 = alloca i8*
  %10 = alloca i32
  store %"class.std::vector.28"* %0, %"class.std::vector.28"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator.30"* %3, %"class.std::allocator.30"** %8, align 8
  %11 = load %"class.std::vector.28"*, %"class.std::vector.28"** %5, align 8
  %12 = bitcast %"class.std::vector.28"* %11 to %"struct.std::_Vector_base.29"*
  %13 = load i64, i64* %6, align 8
  %14 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %8, align 8
  %15 = call i64 @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_(i64 %13, %"class.std::allocator.30"* dereferenceable(1) %14)
  %16 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %8, align 8
  call void @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_(%"struct.std::_Vector_base.29"* %12, i64 %15, %"class.std::allocator.30"* dereferenceable(1) %16)
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %7, align 8
  invoke void @_ZNSt6vectorIjSaIjEE18_M_fill_initializeEmRKj(%"class.std::vector.28"* %11, i64 %17, i32* dereferenceable(4) %18)
          to label %19 unwind label %20

; <label>:19:                                     ; preds = %4
  ret void

; <label>:20:                                     ; preds = %4
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %9, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %10, align 4
  %24 = bitcast %"class.std::vector.28"* %11 to %"struct.std::_Vector_base.29"*
  invoke void @_ZNSt12_Vector_baseIjSaIjEED2Ev(%"struct.std::_Vector_base.29"* %24)
          to label %25 unwind label %31

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

; <label>:31:                                     ; preds = %20
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIjED2Ev(%"class.std::allocator.30"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.30"*, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %2, align 8
  %3 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %2, align 8
  %4 = bitcast %"class.std::allocator.30"* %3 to %"class.__gnu_cxx::new_allocator.31"*
  call void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(%"class.__gnu_cxx::new_allocator.31"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt6vectorIjSaIjEEixEm(%"class.std::vector.28"*, i64) #1 comdat align 2 {
  %3 = alloca %"class.std::vector.28"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.28"* %0, %"class.std::vector.28"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.28"*, %"class.std::vector.28"** %3, align 8
  %6 = bitcast %"class.std::vector.28"* %5 to %"struct.std::_Vector_base.29"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %7 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  ret i32* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%class.TableBase*, %class.TableIndices* dereferenceable(8)) #0 comdat align 2 {
  %3 = alloca %class.TableBase*, align 8
  %4 = alloca %class.TableIndices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.TableIndices, align 4
  store %class.TableBase* %0, %class.TableBase** %3, align 8
  store %class.TableIndices* %1, %class.TableIndices** %4, align 8
  %7 = load %class.TableBase*, %class.TableBase** %3, align 8
  %8 = load %class.TableIndices*, %class.TableIndices** %4, align 8
  %9 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 3
  %10 = bitcast %class.TableIndices* %9 to i8*
  %11 = bitcast %class.TableIndices* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 4, i1 false)
  %12 = call i32 @_ZNK9TableBaseILi2EdE10n_elementsEv(%class.TableBase* %7)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 1
  %17 = load double*, double** %16, align 8
  %18 = icmp ne double* %17, null
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 1
  %21 = load double*, double** %20, align 8
  %22 = icmp eq double* %21, null
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %19
  %24 = bitcast double* %21 to i8*
  call void @_ZdaPv(i8* %24) #14
  br label %25

; <label>:25:                                     ; preds = %23, %19
  br label %26

; <label>:26:                                     ; preds = %25, %15
  %27 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 1
  store double* null, double** %27, align 8
  %28 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 2
  store i32 0, i32* %28, align 8
  call void @_ZN12TableIndicesILi2EEC2Ev(%class.TableIndices* %6)
  %29 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 3
  %30 = bitcast %class.TableIndices* %29 to i8*
  %31 = bitcast %class.TableIndices* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 4, i1 false)
  br label %62

; <label>:32:                                     ; preds = %2
  %33 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %61

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 1
  %39 = load double*, double** %38, align 8
  %40 = icmp ne double* %39, null
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 1
  %43 = load double*, double** %42, align 8
  %44 = icmp eq double* %43, null
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %41
  %46 = bitcast double* %43 to i8*
  call void @_ZdaPv(i8* %46) #14
  br label %47

; <label>:47:                                     ; preds = %45, %41
  br label %48

; <label>:48:                                     ; preds = %47, %37
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  %54 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %53, i64 8)
  %55 = extractvalue { i64, i1 } %54, 1
  %56 = extractvalue { i64, i1 } %54, 0
  %57 = select i1 %55, i64 -1, i64 %56
  %58 = call i8* @_Znam(i64 %57) #13
  %59 = bitcast i8* %58 to double*
  %60 = getelementptr inbounds %class.TableBase, %class.TableBase* %7, i32 0, i32 1
  store double* %59, double** %60, align 8
  br label %61

; <label>:61:                                     ; preds = %48, %32
  call void @_ZN9TableBaseILi2EdE12reset_valuesEv(%class.TableBase* %7)
  br label %62

; <label>:62:                                     ; preds = %61, %26
  ret void
}

declare i64 @_ZNK17FiniteElementBaseILi3EE26interface_constraints_sizeEv(%class.FiniteElementBase*) #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10FullMatrixIdE4fillIdEEvPKT_(%class.FullMatrix*, double*) #0 comdat align 2 {
  %3 = alloca %class.FullMatrix*, align 8
  %4 = alloca double*, align 8
  store %class.FullMatrix* %0, %class.FullMatrix** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %class.FullMatrix*, %class.FullMatrix** %3, align 8
  %6 = bitcast %class.FullMatrix* %5 to %class.Table*
  %7 = bitcast %class.Table* %6 to %class.TableBase*
  %8 = load double*, double** %4, align 8
  call void @_ZN9TableBaseILi2EdE4fillIdEEvPKT_(%class.TableBase* %7, double* %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2EdE6reinitEjj(%class.Table*, i32, i32) #0 comdat align 2 {
  %4 = alloca %class.Table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.TableIndices, align 4
  store %class.Table* %0, %class.Table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %class.Table*, %class.Table** %4, align 8
  %9 = bitcast %class.Table* %8 to %class.TableBase*
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  call void @_ZN12TableIndicesILi2EEC2Ejj(%class.TableIndices* %7, i32 %10, i32 %11)
  call void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%class.TableBase* %9, %class.TableIndices* dereferenceable(8) %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZN5TableILi2EdEclEjj(%class.Table*, i32, i32) #1 comdat align 2 {
  %4 = alloca %class.Table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.Table* %0, %class.Table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.Table*, %class.Table** %4, align 8
  %8 = bitcast %class.Table* %7 to %class.TableBase*
  %9 = getelementptr inbounds %class.TableBase, %class.TableBase* %8, i32 0, i32 1
  %10 = load double*, double** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = bitcast %class.Table* %7 to %class.TableBase*
  %13 = getelementptr inbounds %class.TableBase, %class.TableBase* %12, i32 0, i32 3
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
define linkonce_odr void @_ZNSt6vectorI5PointILi3EESaIS1_EE6resizeEmS1_(%"class.std::vector.11"*, i64, %class.Point*) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.11"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.129", align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.std::vector.11"*, %"class.std::vector.11"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %7)
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %3
  %12 = call %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EE3endEv(%"class.std::vector.11"* %7)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %6, i32 0, i32 0
  store %class.Point* %12, %class.Point** %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %7)
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %6, i32 0, i32 0
  %18 = load %class.Point*, %class.Point** %17, align 8
  call void @_ZNSt6vectorI5PointILi3EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(%"class.std::vector.11"* %7, %class.Point* %18, i64 %16, %class.Point* dereferenceable(24) %2)
  br label %32

; <label>:19:                                     ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %7)
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %19
  %24 = bitcast %"class.std::vector.11"* %7 to %"struct.std::_Vector_base.12"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %25 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %26, i32 0, i32 0
  %28 = load %class.Point*, %class.Point** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %class.Point, %class.Point* %28, i64 %29
  call void @_ZNSt6vectorI5PointILi3EESaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.11"* %7, %class.Point* %30)
  br label %31

; <label>:31:                                     ; preds = %23, %19
  br label %32

; <label>:32:                                     ; preds = %31, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5PointILi3EEC2Ev(%class.Point*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %2, align 8
  %3 = load %class.Point*, %class.Point** %2, align 8
  %4 = bitcast %class.Point* %3 to %class.Tensor*
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %4, i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjj(i32, i32) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [12 x [2 x i32]], [12 x [2 x i32]]* @_ZZN12GeometryInfoILi3EE25vertices_adjacent_to_lineEjjE14vertex_indices, i64 0, i64 %6
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12GeometryInfoILi3EE16unit_cell_vertexEj(%class.Point* noalias sret, i32) #0 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x %class.Point], align 16
  store i32 %1, i32* %3, align 4
  %5 = getelementptr inbounds [8 x %class.Point], [8 x %class.Point]* %4, i64 0, i64 0
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %5, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %6 = getelementptr inbounds %class.Point, %class.Point* %5, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %6, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %7 = getelementptr inbounds %class.Point, %class.Point* %6, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %7, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %8 = getelementptr inbounds %class.Point, %class.Point* %7, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %8, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %9 = getelementptr inbounds %class.Point, %class.Point* %8, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %9, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %10 = getelementptr inbounds %class.Point, %class.Point* %9, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %10, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %11 = getelementptr inbounds %class.Point, %class.Point* %10, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %11, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %12 = getelementptr inbounds %class.Point, %class.Point* %11, i64 1
  call void @_ZN5PointILi3EEC2Eddd(%class.Point* %12, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [8 x %class.Point], [8 x %class.Point]* %4, i64 0, i64 %14
  call void @_ZN5PointILi3EEC2ERKS0_(%class.Point* %0, %class.Point* dereferenceable(24) %15)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK5PointILi3EEplERK6TensorILi1ELi3EE(%class.Point* noalias sret, %class.Point*, %class.Tensor* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Tensor*, align 8
  %6 = alloca %class.Point, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  store %class.Tensor* %2, %class.Tensor** %5, align 8
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = load %class.Tensor*, %class.Tensor** %5, align 8
  call void @_ZN5PointILi3EEC2ERKS0_(%class.Point* %6, %class.Point* dereferenceable(24) %7)
  %9 = bitcast %class.Point* %6 to %class.Tensor*
  %10 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEpLERKS0_(%class.Tensor* %9, %class.Tensor* dereferenceable(24) %8)
  call void @_ZN5PointILi3EEC2ERK6TensorILi1ELi3EE(%class.Point* %0, %class.Tensor* dereferenceable(24) %10)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK5PointILi3EEdvEd(%class.Point* noalias sret, %class.Point*, double) #0 comdat align 2 {
  %4 = alloca %class.Point*, align 8
  %5 = alloca double, align 8
  %6 = alloca %class.Point, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  store double %2, double* %5, align 8
  %7 = load %class.Point*, %class.Point** %4, align 8
  call void @_ZN5PointILi3EEC2ERKS0_(%class.Point* %6, %class.Point* dereferenceable(24) %7)
  %8 = bitcast %class.Point* %6 to %class.Tensor*
  %9 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEdVERKd(%class.Tensor* %8, double* dereferenceable(8) %5)
  call void @_ZN5PointILi3EEC2ERK6TensorILi1ELi3EE(%class.Point* %0, %class.Tensor* dereferenceable(24) %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EEixEm(%"class.std::vector.11"*, i64) #1 comdat align 2 {
  %3 = alloca %"class.std::vector.11"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.11"*, %"class.std::vector.11"** %3, align 8
  %6 = bitcast %"class.std::vector.11"* %5 to %"struct.std::_Vector_base.12"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Point*, %class.Point** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Point, %class.Point* %10, i64 %11
  ret %class.Point* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.Point* @_ZN5PointILi3EEaSERKS0_(%class.Point*, %class.Point* dereferenceable(24)) #0 comdat align 2 {
  %3 = alloca %class.Point*, align 8
  %4 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  %5 = load %class.Point*, %class.Point** %3, align 8
  %6 = bitcast %class.Point* %5 to %class.Tensor*
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = bitcast %class.Point* %7 to %class.Tensor*
  %9 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %6, %class.Tensor* dereferenceable(24) %8)
  ret %class.Point* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI5PointILi2EESaIS1_EE6resizeEmS1_(%"class.std::vector.16"*, i64, %class.Point.21*) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.16"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.130", align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.std::vector.16"*, %"class.std::vector.16"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %7)
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %3
  %12 = call %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EE3endEv(%"class.std::vector.16"* %7)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %6, i32 0, i32 0
  store %class.Point.21* %12, %class.Point.21** %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %7)
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %6, i32 0, i32 0
  %18 = load %class.Point.21*, %class.Point.21** %17, align 8
  call void @_ZNSt6vectorI5PointILi2EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(%"class.std::vector.16"* %7, %class.Point.21* %18, i64 %16, %class.Point.21* dereferenceable(16) %2)
  br label %32

; <label>:19:                                     ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %7)
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %19
  %24 = bitcast %"class.std::vector.16"* %7 to %"struct.std::_Vector_base.17"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %25 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %26, i32 0, i32 0
  %28 = load %class.Point.21*, %class.Point.21** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %class.Point.21, %class.Point.21* %28, i64 %29
  call void @_ZNSt6vectorI5PointILi2EESaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.16"* %7, %class.Point.21* %30)
  br label %31

; <label>:31:                                     ; preds = %23, %19
  br label %32

; <label>:32:                                     ; preds = %31, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5PointILi2EEC2Ev(%class.Point.21*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %2, align 8
  %3 = load %class.Point.21*, %class.Point.21** %2, align 8
  %4 = bitcast %class.Point.21* %3 to %class.Tensor.22*
  call void @_ZN6TensorILi1ELi2EEC2Eb(%class.Tensor.22* %4, i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjj(i32, i32) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* @_ZZN12GeometryInfoILi2EE25vertices_adjacent_to_lineEjjE14vertex_indices, i64 0, i64 %6
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12GeometryInfoILi2EE16unit_cell_vertexEj(%class.Point.21* noalias sret, i32) #0 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x %class.Point.21], align 16
  store i32 %1, i32* %3, align 4
  %5 = getelementptr inbounds [4 x %class.Point.21], [4 x %class.Point.21]* %4, i64 0, i64 0
  call void @_ZN5PointILi2EEC2Edd(%class.Point.21* %5, double 0.000000e+00, double 0.000000e+00)
  %6 = getelementptr inbounds %class.Point.21, %class.Point.21* %5, i64 1
  call void @_ZN5PointILi2EEC2Edd(%class.Point.21* %6, double 1.000000e+00, double 0.000000e+00)
  %7 = getelementptr inbounds %class.Point.21, %class.Point.21* %6, i64 1
  call void @_ZN5PointILi2EEC2Edd(%class.Point.21* %7, double 1.000000e+00, double 1.000000e+00)
  %8 = getelementptr inbounds %class.Point.21, %class.Point.21* %7, i64 1
  call void @_ZN5PointILi2EEC2Edd(%class.Point.21* %8, double 0.000000e+00, double 1.000000e+00)
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [4 x %class.Point.21], [4 x %class.Point.21]* %4, i64 0, i64 %10
  call void @_ZN5PointILi2EEC2ERKS0_(%class.Point.21* %0, %class.Point.21* dereferenceable(16) %11)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK5PointILi2EEplERK6TensorILi1ELi2EE(%class.Point.21* noalias sret, %class.Point.21*, %class.Tensor.22* dereferenceable(16)) #0 comdat align 2 {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Tensor.22*, align 8
  %6 = alloca %class.Point.21, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  store %class.Tensor.22* %2, %class.Tensor.22** %5, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = load %class.Tensor.22*, %class.Tensor.22** %5, align 8
  call void @_ZN5PointILi2EEC2ERKS0_(%class.Point.21* %6, %class.Point.21* dereferenceable(16) %7)
  %9 = bitcast %class.Point.21* %6 to %class.Tensor.22*
  %10 = call dereferenceable(16) %class.Tensor.22* @_ZN6TensorILi1ELi2EEpLERKS0_(%class.Tensor.22* %9, %class.Tensor.22* dereferenceable(16) %8)
  call void @_ZN5PointILi2EEC2ERK6TensorILi1ELi2EE(%class.Point.21* %0, %class.Tensor.22* dereferenceable(16) %10)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK5PointILi2EEdvEd(%class.Point.21* noalias sret, %class.Point.21*, double) #0 comdat align 2 {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca double, align 8
  %6 = alloca %class.Point.21, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  store double %2, double* %5, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  call void @_ZN5PointILi2EEC2ERKS0_(%class.Point.21* %6, %class.Point.21* dereferenceable(16) %7)
  %8 = bitcast %class.Point.21* %6 to %class.Tensor.22*
  %9 = call dereferenceable(16) %class.Tensor.22* @_ZN6TensorILi1ELi2EEdVERKd(%class.Tensor.22* %8, double* dereferenceable(8) %5)
  call void @_ZN5PointILi2EEC2ERK6TensorILi1ELi2EE(%class.Point.21* %0, %class.Tensor.22* dereferenceable(16) %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EEixEm(%"class.std::vector.16"*, i64) #1 comdat align 2 {
  %3 = alloca %"class.std::vector.16"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.16"*, %"class.std::vector.16"** %3, align 8
  %6 = bitcast %"class.std::vector.16"* %5 to %"struct.std::_Vector_base.17"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.Point.21*, %class.Point.21** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.Point.21, %class.Point.21* %10, i64 %11
  ret %class.Point.21* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %class.Point.21* @_ZN5PointILi2EEaSERKS0_(%class.Point.21*, %class.Point.21* dereferenceable(16)) #0 comdat align 2 {
  %3 = alloca %class.Point.21*, align 8
  %4 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  %5 = load %class.Point.21*, %class.Point.21** %3, align 8
  %6 = bitcast %class.Point.21* %5 to %class.Tensor.22*
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = bitcast %class.Point.21* %7 to %class.Tensor.22*
  %9 = call dereferenceable(16) %class.Tensor.22* @_ZN6TensorILi1ELi2EEaSERKS0_(%class.Tensor.22* %6, %class.Tensor.22* dereferenceable(16) %8)
  ret %class.Point.21* %5
}

; Function Attrs: noinline nounwind uwtable
define weak_odr i32 @_ZNK10FE_NedelecILi3EE11update_onceE11UpdateFlags(%class.FE_Nedelec*, i32) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.FE_Nedelec*, align 8
  %4 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.FE_Nedelec*, %class.FE_Nedelec** %3, align 8
  ret i32 0
}

; Function Attrs: noinline uwtable
define weak_odr i32 @_ZNK10FE_NedelecILi3EE11update_eachE11UpdateFlags(%class.FE_Nedelec*, i32) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.FE_Nedelec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.FE_Nedelec*, %class.FE_Nedelec** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_Zan11UpdateFlagsS_(i32 %7, i32 1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = call i32 @_Zor11UpdateFlagsS_(i32 1, i32 512)
  %12 = call dereferenceable(4) i32* @_ZoRR11UpdateFlagsS_(i32* dereferenceable(4) %5, i32 %11)
  br label %13

; <label>:13:                                     ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @_Zan11UpdateFlagsS_(i32 %14, i32 2)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %13
  %18 = call i32 @_Zor11UpdateFlagsS_(i32 2, i32 512)
  %19 = call dereferenceable(4) i32* @_ZoRR11UpdateFlagsS_(i32* dereferenceable(4) %5, i32 %18)
  br label %20

; <label>:20:                                     ; preds = %17, %13
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @_Zan11UpdateFlagsS_(i32 %21, i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %20
  %25 = call i32 @_Zor11UpdateFlagsS_(i32 4, i32 512)
  %26 = call dereferenceable(4) i32* @_ZoRR11UpdateFlagsS_(i32* dereferenceable(4) %5, i32 %25)
  br label %27

; <label>:27:                                     ; preds = %24, %20
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZoRR11UpdateFlagsS_(i32* dereferenceable(4), i32) #1 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_Zor11UpdateFlagsS_(i32 %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %3, align 8
  ret i32* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EED2Ev(%class.FE_Nedelec*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.FE_Nedelec*, align 8
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %3 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  %4 = bitcast %class.FE_Nedelec* %3 to %class.FiniteElement*
  call void @_ZN13FiniteElementILi3EED2Ev(%class.FiniteElement* %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EED0Ev(%class.FE_Nedelec*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.FE_Nedelec*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.FE_Nedelec* %0, %class.FE_Nedelec** %2, align 8
  %5 = load %class.FE_Nedelec*, %class.FE_Nedelec** %2, align 8
  invoke void @_ZN10FE_NedelecILi3EED2Ev(%class.FE_Nedelec* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.FE_Nedelec* %5 to i8*
  call void @_ZdlPv(i8* %7) #14
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.FE_Nedelec* %5 to i8*
  call void @_ZdlPv(i8* %12) #14
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

declare double @_ZNK17FiniteElementBaseILi3EE11shape_valueEjRK5PointILi3EE(%class.FiniteElementBase*, i32, %class.Point* dereferenceable(24)) unnamed_addr #2

declare void @_ZNK17FiniteElementBaseILi3EE10shape_gradEjRK5PointILi3EE(%class.Tensor* sret, %class.FiniteElementBase*, i32, %class.Point* dereferenceable(24)) unnamed_addr #2

declare void @_ZNK17FiniteElementBaseILi3EE15shape_grad_gradEjRK5PointILi3EE(%class.Tensor.33* sret, %class.FiniteElementBase*, i32, %class.Point* dereferenceable(24)) unnamed_addr #2

declare void @_ZNK17FiniteElementBaseILi3EE24get_interpolation_matrixERKS0_R10FullMatrixIdE(%class.FiniteElementBase*, %class.FiniteElementBase* dereferenceable(1160), %class.FullMatrix* dereferenceable(48)) unnamed_addr #2

declare void @_ZNK17FiniteElementBaseILi3EE18unit_support_pointEj(%class.Point* sret, %class.FiniteElementBase*, i32) unnamed_addr #2

declare void @_ZNK17FiniteElementBaseILi3EE23unit_face_support_pointEj(%class.Point.21* sret, %class.FiniteElementBase*, i32) unnamed_addr #2

declare %"class.Mapping<3>::InternalDataBase"* @_ZNK13FiniteElementILi3EE13get_face_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi2EE(%class.FiniteElement*, i32, %class.Mapping* dereferenceable(24), %class.Quadrature.126* dereferenceable(80)) unnamed_addr #2

declare %"class.Mapping<3>::InternalDataBase"* @_ZNK13FiniteElementILi3EE16get_subface_dataE11UpdateFlagsRK7MappingILi3EERK10QuadratureILi2EE(%class.FiniteElement*, i32, %class.Mapping* dereferenceable(24), %class.Quadrature.126* dereferenceable(80)) unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD2Ev(%"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*, align 8
  store %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"* %0, %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"** %2, align 8
  %3 = load %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*, %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"** %2, align 8
  %4 = bitcast %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"* %3 to %class.ExceptionBase*
  call void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD0Ev(%"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*, align 8
  store %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"* %0, %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"** %2, align 8
  %3 = load %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"*, %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"** %2, align 8
  call void @_ZN10FE_NedelecILi3EE27ExcNotUsefulInThisDimensionD2Ev(%"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"* %3) #12
  %4 = bitcast %"class.FE_Nedelec<3>::ExcNotUsefulInThisDimension"* %3 to i8*
  call void @_ZdlPv(i8* %4) #14
  ret void
}

; Function Attrs: nounwind
declare i8* @_ZNK13ExceptionBase4whatEv(%class.ExceptionBase*) unnamed_addr #7

declare void @_ZNK13ExceptionBase9PrintInfoERSo(%class.ExceptionBase*, %"class.std::basic_ostream"* dereferenceable(272)) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseC2Ev(%"class.FiniteElementBase<3>::InternalDataBase"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.FiniteElementBase<3>::InternalDataBase"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.FiniteElementBase<3>::InternalDataBase"* %0, %"class.FiniteElementBase<3>::InternalDataBase"** %2, align 8
  %5 = load %"class.FiniteElementBase<3>::InternalDataBase"*, %"class.FiniteElementBase<3>::InternalDataBase"** %2, align 8
  %6 = bitcast %"class.FiniteElementBase<3>::InternalDataBase"* %5 to %"class.Mapping<3>::InternalDataBase"*
  call void @_ZN7MappingILi3EE16InternalDataBaseC2Ev(%"class.Mapping<3>::InternalDataBase"* %6)
  %7 = bitcast %"class.FiniteElementBase<3>::InternalDataBase"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN17FiniteElementBaseILi3EE16InternalDataBaseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = getelementptr inbounds %"class.FiniteElementBase<3>::InternalDataBase", %"class.FiniteElementBase<3>::InternalDataBase"* %5, i32 0, i32 1
  invoke void @_ZNSt6vectorIP8FEValuesILi3EESaIS2_EEC2Ev(%"class.std::vector.45"* %8)
          to label %9 unwind label %10

; <label>:9:                                      ; preds = %1
  ret void

; <label>:10:                                     ; preds = %1
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %3, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %4, align 4
  %14 = bitcast %"class.FiniteElementBase<3>::InternalDataBase"* %5 to %"class.Mapping<3>::InternalDataBase"*
  invoke void @_ZN7MappingILi3EE16InternalDataBaseD2Ev(%"class.Mapping<3>::InternalDataBase"* %14)
          to label %15 unwind label %21

; <label>:15:                                     ; preds = %10
  br label %16

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

; <label>:21:                                     ; preds = %10
  %22 = landingpad { i8*, i32 }
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  call void @__clang_call_terminate(i8* %23) #10
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi1ELi3EEEC2Ev(%class.Table.50*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Table.50*, align 8
  store %class.Table.50* %0, %class.Table.50** %2, align 8
  %3 = load %class.Table.50*, %class.Table.50** %2, align 8
  %4 = bitcast %class.Table.50* %3 to %class.TableBase.51*
  call void @_ZN9TableBaseILi2E6TensorILi1ELi3EEEC2Ev(%class.TableBase.51* %4)
  %5 = bitcast %class.Table.50* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV5TableILi2E6TensorILi1ELi3EEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi2ELi3EEEC2Ev(%class.Table.54*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Table.54*, align 8
  store %class.Table.54* %0, %class.Table.54** %2, align 8
  %3 = load %class.Table.54*, %class.Table.54** %2, align 8
  %4 = bitcast %class.Table.54* %3 to %class.TableBase.55*
  call void @_ZN9TableBaseILi2E6TensorILi2ELi3EEEC2Ev(%class.TableBase.55* %4)
  %5 = bitcast %class.Table.54* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV5TableILi2E6TensorILi2ELi3EEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi1ELi3EEED2Ev(%class.Table.50*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Table.50*, align 8
  store %class.Table.50* %0, %class.Table.50** %2, align 8
  %3 = load %class.Table.50*, %class.Table.50** %2, align 8
  %4 = bitcast %class.Table.50* %3 to %class.TableBase.51*
  call void @_ZN9TableBaseILi2E6TensorILi1ELi3EEED2Ev(%class.TableBase.51* %4)
  ret void
}

declare void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD2Ev(%"class.FiniteElementBase<3>::InternalDataBase"*) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EE12InternalDataD2Ev(%"class.FE_Nedelec<3>::InternalData"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.FE_Nedelec<3>::InternalData"* %0, %"class.FE_Nedelec<3>::InternalData"** %2, align 8
  %5 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %2, align 8
  %6 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN10FE_NedelecILi3EE12InternalDataE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %5, i32 0, i32 2
  invoke void @_ZN5TableILi2E6TensorILi2ELi3EEED2Ev(%class.Table.54* %7)
          to label %8 unwind label %12

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %5, i32 0, i32 1
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEED2Ev(%class.Table.50* %9)
          to label %10 unwind label %17

; <label>:10:                                     ; preds = %8
  %11 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to %"class.FiniteElementBase<3>::InternalDataBase"*
  call void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD2Ev(%"class.FiniteElementBase<3>::InternalDataBase"* %11)
  ret void

; <label>:12:                                     ; preds = %1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %3, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %4, align 4
  %16 = getelementptr inbounds %"class.FE_Nedelec<3>::InternalData", %"class.FE_Nedelec<3>::InternalData"* %5, i32 0, i32 1
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEED2Ev(%class.Table.50* %16)
          to label %21 unwind label %30

; <label>:17:                                     ; preds = %8
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %3, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %4, align 4
  br label %22

; <label>:21:                                     ; preds = %12
  br label %22

; <label>:22:                                     ; preds = %21, %17
  %23 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to %"class.FiniteElementBase<3>::InternalDataBase"*
  invoke void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD2Ev(%"class.FiniteElementBase<3>::InternalDataBase"* %23)
          to label %24 unwind label %30

; <label>:24:                                     ; preds = %22
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

; <label>:30:                                     ; preds = %22, %12
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #10
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10FE_NedelecILi3EE12InternalDataD0Ev(%"class.FE_Nedelec<3>::InternalData"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.FE_Nedelec<3>::InternalData"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.FE_Nedelec<3>::InternalData"* %0, %"class.FE_Nedelec<3>::InternalData"** %2, align 8
  %5 = load %"class.FE_Nedelec<3>::InternalData"*, %"class.FE_Nedelec<3>::InternalData"** %2, align 8
  invoke void @_ZN10FE_NedelecILi3EE12InternalDataD2Ev(%"class.FE_Nedelec<3>::InternalData"* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to i8*
  call void @_ZdlPv(i8* %7) #14
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %"class.FE_Nedelec<3>::InternalData"* %5 to i8*
  call void @_ZdlPv(i8* %12) #14
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN7MappingILi3EE16InternalDataBase16clear_first_cellEv(%"class.Mapping<3>::InternalDataBase"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.Mapping<3>::InternalDataBase"*, align 8
  store %"class.Mapping<3>::InternalDataBase"* %0, %"class.Mapping<3>::InternalDataBase"** %2, align 8
  %3 = load %"class.Mapping<3>::InternalDataBase"*, %"class.Mapping<3>::InternalDataBase"** %2, align 8
  %4 = getelementptr inbounds %"class.Mapping<3>::InternalDataBase", %"class.Mapping<3>::InternalDataBase"* %3, i32 0, i32 4
  store i8 0, i8* %4, align 4
  ret void
}

declare i32 @_ZNK7MappingILi3EE16InternalDataBase18memory_consumptionEv(%"class.Mapping<3>::InternalDataBase"*) unnamed_addr #2

declare void @_ZN7MappingILi3EE16InternalDataBaseC2Ev(%"class.Mapping<3>::InternalDataBase"*) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIP8FEValuesILi3EESaIS2_EEC2Ev(%"class.std::vector.45"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::vector.45"*, align 8
  store %"class.std::vector.45"* %0, %"class.std::vector.45"** %2, align 8
  %3 = load %"class.std::vector.45"*, %"class.std::vector.45"** %2, align 8
  %4 = bitcast %"class.std::vector.45"* %3 to %"struct.std::_Vector_base.46"*
  call void @_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EEC2Ev(%"struct.std::_Vector_base.46"* %4)
  ret void
}

declare void @_ZN7MappingILi3EE16InternalDataBaseD2Ev(%"class.Mapping<3>::InternalDataBase"*) unnamed_addr #2

declare void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD1Ev(%"class.FiniteElementBase<3>::InternalDataBase"*) unnamed_addr #2

declare void @_ZN17FiniteElementBaseILi3EE16InternalDataBaseD0Ev(%"class.FiniteElementBase<3>::InternalDataBase"*) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EEC2Ev(%"struct.std::_Vector_base.46"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.46"*, align 8
  store %"struct.std::_Vector_base.46"* %0, %"struct.std::_Vector_base.46"** %2, align 8
  %3 = load %"struct.std::_Vector_base.46"*, %"struct.std::_Vector_base.46"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.46", %"struct.std::_Vector_base.46"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"* %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"* %0, %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"** %2, align 8
  %5 = load %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"*, %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"** %2, align 8
  %6 = bitcast %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"* %5 to %"class.std::allocator.47"*
  call void @_ZNSaIP8FEValuesILi3EEEC2Ev(%"class.std::allocator.47"* %6) #12
  %7 = bitcast %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"* %5 to %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"*
  invoke void @_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"* %7)
          to label %8 unwind label %9

; <label>:8:                                      ; preds = %1
  ret void

; <label>:9:                                      ; preds = %1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  %13 = bitcast %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl"* %5 to %"class.std::allocator.47"*
  call void @_ZNSaIP8FEValuesILi3EEED2Ev(%"class.std::allocator.47"* %13) #12
  br label %14

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIP8FEValuesILi3EEEC2Ev(%"class.std::allocator.47"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.47"*, align 8
  store %"class.std::allocator.47"* %0, %"class.std::allocator.47"** %2, align 8
  %3 = load %"class.std::allocator.47"*, %"class.std::allocator.47"** %2, align 8
  %4 = bitcast %"class.std::allocator.47"* %3 to %"class.__gnu_cxx::new_allocator.48"*
  call void @_ZN9__gnu_cxx13new_allocatorIP8FEValuesILi3EEEC2Ev(%"class.__gnu_cxx::new_allocator.48"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP8FEValuesILi3EESaIS2_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"*, %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data", %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"* %3, i32 0, i32 0
  store %class.FEValues** null, %class.FEValues*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data", %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"* %3, i32 0, i32 1
  store %class.FEValues** null, %class.FEValues*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data", %"struct.std::_Vector_base<FEValues<3> *, std::allocator<FEValues<3> *> >::_Vector_impl_data"* %3, i32 0, i32 2
  store %class.FEValues** null, %class.FEValues*** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIP8FEValuesILi3EEED2Ev(%"class.std::allocator.47"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.47"*, align 8
  store %"class.std::allocator.47"* %0, %"class.std::allocator.47"** %2, align 8
  %3 = load %"class.std::allocator.47"*, %"class.std::allocator.47"** %2, align 8
  %4 = bitcast %"class.std::allocator.47"* %3 to %"class.__gnu_cxx::new_allocator.48"*
  call void @_ZN9__gnu_cxx13new_allocatorIP8FEValuesILi3EEED2Ev(%"class.__gnu_cxx::new_allocator.48"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8FEValuesILi3EEEC2Ev(%"class.__gnu_cxx::new_allocator.48"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.48"*, align 8
  store %"class.__gnu_cxx::new_allocator.48"* %0, %"class.__gnu_cxx::new_allocator.48"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.48"*, %"class.__gnu_cxx::new_allocator.48"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8FEValuesILi3EEED2Ev(%"class.__gnu_cxx::new_allocator.48"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.48"*, align 8
  store %"class.__gnu_cxx::new_allocator.48"* %0, %"class.__gnu_cxx::new_allocator.48"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.48"*, %"class.__gnu_cxx::new_allocator.48"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi1ELi3EEEC2Ev(%class.TableBase.51*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.TableBase.51*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.TableBase.51* %0, %class.TableBase.51** %2, align 8
  %5 = load %class.TableBase.51*, %class.TableBase.51** %2, align 8
  %6 = bitcast %class.TableBase.51* %5 to %class.Subscriptor*
  call void @_ZN11SubscriptorC2Ev(%class.Subscriptor* %6)
  %7 = bitcast %class.TableBase.51* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV9TableBaseILi2E6TensorILi1ELi3EEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %5, i32 0, i32 1
  store %class.Tensor* null, %class.Tensor** %8, align 8
  %9 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %5, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %5, i32 0, i32 3
  invoke void @_ZN12TableIndicesILi2EEC2Ev(%class.TableIndices* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %1
  ret void

; <label>:12:                                     ; preds = %1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %3, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %4, align 4
  %16 = bitcast %class.TableBase.51* %5 to %class.Subscriptor*
  invoke void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %16)
          to label %17 unwind label %23

; <label>:17:                                     ; preds = %12
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22

; <label>:23:                                     ; preds = %12
  %24 = landingpad { i8*, i32 }
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  call void @__clang_call_terminate(i8* %25) #10
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi1ELi3EEED0Ev(%class.Table.50*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.Table.50*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.Table.50* %0, %class.Table.50** %2, align 8
  %5 = load %class.Table.50*, %class.Table.50** %2, align 8
  invoke void @_ZN5TableILi2E6TensorILi1ELi3EEED2Ev(%class.Table.50* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.Table.50* %5 to i8*
  call void @_ZdlPv(i8* %7) #14
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.Table.50* %5 to i8*
  call void @_ZdlPv(i8* %12) #14
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

declare void @_ZN11SubscriptorC2Ev(%class.Subscriptor*) unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12TableIndicesILi2EEC2Ev(%class.TableIndices*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.TableIndices*, align 8
  store %class.TableIndices* %0, %class.TableIndices** %2, align 8
  %3 = load %class.TableIndices*, %class.TableIndices** %2, align 8
  %4 = bitcast %class.TableIndices* %3 to %class.TableIndicesBase*
  %5 = bitcast %class.TableIndices* %3 to %class.TableIndicesBase*
  %6 = getelementptr inbounds %class.TableIndicesBase, %class.TableIndicesBase* %5, i32 0, i32 0
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %7, align 4
  %8 = bitcast %class.TableIndices* %3 to %class.TableIndicesBase*
  %9 = getelementptr inbounds %class.TableIndicesBase, %class.TableIndicesBase* %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %10, align 4
  ret void
}

declare void @_ZN11SubscriptorD2Ev(%class.Subscriptor*) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi1ELi3EEED2Ev(%class.TableBase.51*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.TableBase.51*, align 8
  store %class.TableBase.51* %0, %class.TableBase.51** %2, align 8
  %3 = load %class.TableBase.51*, %class.TableBase.51** %2, align 8
  %4 = bitcast %class.TableBase.51* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV9TableBaseILi2E6TensorILi1ELi3EEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %3, i32 0, i32 1
  %6 = load %class.Tensor*, %class.Tensor** %5, align 8
  %7 = icmp ne %class.Tensor* %6, null
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %3, i32 0, i32 1
  %10 = load %class.Tensor*, %class.Tensor** %9, align 8
  %11 = icmp eq %class.Tensor* %10, null
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = bitcast %class.Tensor* %10 to i8*
  call void @_ZdaPv(i8* %13) #14
  br label %14

; <label>:14:                                     ; preds = %12, %8
  br label %15

; <label>:15:                                     ; preds = %14, %1
  %16 = bitcast %class.TableBase.51* %3 to %class.Subscriptor*
  call void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %16)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi1ELi3EEED0Ev(%class.TableBase.51*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.TableBase.51*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.TableBase.51* %0, %class.TableBase.51** %2, align 8
  %5 = load %class.TableBase.51*, %class.TableBase.51** %2, align 8
  invoke void @_ZN9TableBaseILi2E6TensorILi1ELi3EEED2Ev(%class.TableBase.51* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.TableBase.51* %5 to i8*
  call void @_ZdlPv(i8* %7) #14
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.TableBase.51* %5 to i8*
  call void @_ZdlPv(i8* %12) #14
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi2ELi3EEEC2Ev(%class.TableBase.55*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.TableBase.55*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.TableBase.55* %0, %class.TableBase.55** %2, align 8
  %5 = load %class.TableBase.55*, %class.TableBase.55** %2, align 8
  %6 = bitcast %class.TableBase.55* %5 to %class.Subscriptor*
  call void @_ZN11SubscriptorC2Ev(%class.Subscriptor* %6)
  %7 = bitcast %class.TableBase.55* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV9TableBaseILi2E6TensorILi2ELi3EEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %5, i32 0, i32 1
  store %class.Tensor.33* null, %class.Tensor.33** %8, align 8
  %9 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %5, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %5, i32 0, i32 3
  invoke void @_ZN12TableIndicesILi2EEC2Ev(%class.TableIndices* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %1
  ret void

; <label>:12:                                     ; preds = %1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %3, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %4, align 4
  %16 = bitcast %class.TableBase.55* %5 to %class.Subscriptor*
  invoke void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %16)
          to label %17 unwind label %23

; <label>:17:                                     ; preds = %12
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22

; <label>:23:                                     ; preds = %12
  %24 = landingpad { i8*, i32 }
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  call void @__clang_call_terminate(i8* %25) #10
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi2ELi3EEED2Ev(%class.Table.54*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Table.54*, align 8
  store %class.Table.54* %0, %class.Table.54** %2, align 8
  %3 = load %class.Table.54*, %class.Table.54** %2, align 8
  %4 = bitcast %class.Table.54* %3 to %class.TableBase.55*
  call void @_ZN9TableBaseILi2E6TensorILi2ELi3EEED2Ev(%class.TableBase.55* %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5TableILi2E6TensorILi2ELi3EEED0Ev(%class.Table.54*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.Table.54*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.Table.54* %0, %class.Table.54** %2, align 8
  %5 = load %class.Table.54*, %class.Table.54** %2, align 8
  invoke void @_ZN5TableILi2E6TensorILi2ELi3EEED2Ev(%class.Table.54* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.Table.54* %5 to i8*
  call void @_ZdlPv(i8* %7) #14
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.Table.54* %5 to i8*
  call void @_ZdlPv(i8* %12) #14
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi2ELi3EEED2Ev(%class.TableBase.55*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.TableBase.55*, align 8
  store %class.TableBase.55* %0, %class.TableBase.55** %2, align 8
  %3 = load %class.TableBase.55*, %class.TableBase.55** %2, align 8
  %4 = bitcast %class.TableBase.55* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV9TableBaseILi2E6TensorILi2ELi3EEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %3, i32 0, i32 1
  %6 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  %7 = icmp ne %class.Tensor.33* %6, null
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %3, i32 0, i32 1
  %10 = load %class.Tensor.33*, %class.Tensor.33** %9, align 8
  %11 = icmp eq %class.Tensor.33* %10, null
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = bitcast %class.Tensor.33* %10 to i8*
  call void @_ZdaPv(i8* %13) #14
  br label %14

; <label>:14:                                     ; preds = %12, %8
  br label %15

; <label>:15:                                     ; preds = %14, %1
  %16 = bitcast %class.TableBase.55* %3 to %class.Subscriptor*
  call void @_ZN11SubscriptorD2Ev(%class.Subscriptor* %16)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi2ELi3EEED0Ev(%class.TableBase.55*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.TableBase.55*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.TableBase.55* %0, %class.TableBase.55** %2, align 8
  %5 = load %class.TableBase.55*, %class.TableBase.55** %2, align 8
  invoke void @_ZN9TableBaseILi2E6TensorILi2ELi3EEED2Ev(%class.TableBase.55* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = bitcast %class.TableBase.55* %5 to i8*
  call void @_ZdlPv(i8* %7) #14
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = bitcast %class.TableBase.55* %5 to i8*
  call void @_ZdlPv(i8* %12) #14
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZNK6TensorILi2ELi3EEixEj(%class.Tensor.33*, i32) #1 comdat align 2 {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca i32, align 4
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %6 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %6, i64 0, i64 %8
  ret %class.Tensor* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK6TensorILi1ELi3EEixEj(%class.Tensor*, i32) #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Tensor*, %class.Tensor** %3, align 8
  %6 = getelementptr inbounds %class.Tensor, %class.Tensor* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %8
  %10 = load double, double* %9, align 8
  ret double %10
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5PointILi3EEC2Eddd(%class.Point*, double, double, double) unnamed_addr #0 comdat align 2 {
  %5 = alloca %class.Point*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %class.Point* %0, %class.Point** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = bitcast %class.Point* %9 to %class.Tensor*
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %10, i1 zeroext true)
  %11 = load double, double* %6, align 8
  %12 = bitcast %class.Point* %9 to %class.Tensor*
  %13 = getelementptr inbounds %class.Tensor, %class.Tensor* %12, i32 0, i32 0
  %14 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 0
  store double %11, double* %14, align 8
  %15 = load double, double* %7, align 8
  %16 = bitcast %class.Point* %9 to %class.Tensor*
  %17 = getelementptr inbounds %class.Tensor, %class.Tensor* %16, i32 0, i32 0
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 1
  store double %15, double* %18, align 8
  %19 = load double, double* %8, align 8
  %20 = bitcast %class.Point* %9 to %class.Tensor*
  %21 = getelementptr inbounds %class.Tensor, %class.Tensor* %20, i32 0, i32 0
  %22 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 2
  store double %19, double* %22, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5PointILi3EEC2ERKS0_(%class.Point*, %class.Point* dereferenceable(24)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.Point*, align 8
  %4 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  %5 = load %class.Point*, %class.Point** %3, align 8
  %6 = bitcast %class.Point* %5 to %class.Tensor*
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = bitcast %class.Point* %7 to %class.Tensor*
  call void @_ZN6TensorILi1ELi3EEC2ERKS0_(%class.Tensor* %6, %class.Tensor* dereferenceable(24) %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5PointILi2EEC2Edd(%class.Point.21*, double, double) unnamed_addr #0 comdat align 2 {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = bitcast %class.Point.21* %7 to %class.Tensor.22*
  call void @_ZN6TensorILi1ELi2EEC2Eb(%class.Tensor.22* %8, i1 zeroext true)
  %9 = load double, double* %5, align 8
  %10 = bitcast %class.Point.21* %7 to %class.Tensor.22*
  %11 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %10, i32 0, i32 0
  %12 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 0
  store double %9, double* %12, align 8
  %13 = load double, double* %6, align 8
  %14 = bitcast %class.Point.21* %7 to %class.Tensor.22*
  %15 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 1
  store double %13, double* %16, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5PointILi2EEC2ERKS0_(%class.Point.21*, %class.Point.21* dereferenceable(16)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.Point.21*, align 8
  %4 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  %5 = load %class.Point.21*, %class.Point.21** %3, align 8
  %6 = bitcast %class.Point.21* %5 to %class.Tensor.22*
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = bitcast %class.Point.21* %7 to %class.Tensor.22*
  call void @_ZN6TensorILi1ELi2EEC2ERKS0_(%class.Tensor.22* %6, %class.Tensor.22* dereferenceable(16) %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6TensorILi1ELi2EEC2Eb(%class.Tensor.22*, i1 zeroext) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Tensor.22*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.Tensor.22* %0, %class.Tensor.22** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.Tensor.22*, %class.Tensor.22** %3, align 8
  %8 = load i8, i8* %4, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %19, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %7, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 %17
  store double 0.000000e+00, double* %18, align 8
  br label %19

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %11

; <label>:22:                                     ; preds = %11
  br label %23

; <label>:23:                                     ; preds = %22, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6TensorILi1ELi2EEC2ERKS0_(%class.Tensor.22*, %class.Tensor.22* dereferenceable(16)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Tensor.22*, align 8
  %4 = alloca %class.Tensor.22*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor.22* %0, %class.Tensor.22** %3, align 8
  store %class.Tensor.22* %1, %class.Tensor.22** %4, align 8
  %6 = load %class.Tensor.22*, %class.Tensor.22** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor.22*, %class.Tensor.22** %4, align 8
  %12 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %6, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 %19
  store double %16, double* %20, align 8
  br label %21

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %class.Tensor.22* @_ZN6TensorILi1ELi2EEaSERKS0_(%class.Tensor.22*, %class.Tensor.22* dereferenceable(16)) #1 comdat align 2 {
  %3 = alloca %class.Tensor.22*, align 8
  %4 = alloca %class.Tensor.22*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor.22* %0, %class.Tensor.22** %3, align 8
  store %class.Tensor.22* %1, %class.Tensor.22** %4, align 8
  %6 = load %class.Tensor.22*, %class.Tensor.22** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor.22*, %class.Tensor.22** %4, align 8
  %12 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %6, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 %19
  store double %16, double* %20, align 8
  br label %21

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  ret %class.Tensor.22* %6
}

; Function Attrs: nounwind
declare void @_ZN13ExceptionBaseD2Ev(%class.ExceptionBase*) unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(%"class.__gnu_cxx::new_allocator.31"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %0, %"class.__gnu_cxx::new_allocator.31"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(%"class.__gnu_cxx::new_allocator.31"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %0, %"class.__gnu_cxx::new_allocator.31"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.35"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.35"*, align 8
  store %"class.__gnu_cxx::new_allocator.35"* %0, %"class.__gnu_cxx::new_allocator.35"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.35"*, %"class.__gnu_cxx::new_allocator.35"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.35"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.35"*, align 8
  store %"class.__gnu_cxx::new_allocator.35"* %0, %"class.__gnu_cxx::new_allocator.35"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.35"*, %"class.__gnu_cxx::new_allocator.35"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(i32*, i32*, %"class.std::allocator.30"* dereferenceable(1)) #0 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::allocator.30"*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %"class.std::allocator.30"* %2, %"class.std::allocator.30"** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  call void @_ZSt8_DestroyIPjEvT_S1_(i32* %7, i32* %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.30"* @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.29"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.29"*, align 8
  store %"struct.std::_Vector_base.29"* %0, %"struct.std::_Vector_base.29"** %2, align 8
  %3 = load %"struct.std::_Vector_base.29"*, %"struct.std::_Vector_base.29"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %4 to %"class.std::allocator.30"*
  ret %"class.std::allocator.30"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEED2Ev(%"struct.std::_Vector_base.29"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base.29"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base.29"* %0, %"struct.std::_Vector_base.29"** %2, align 8
  %5 = load %"struct.std::_Vector_base.29"*, %"struct.std::_Vector_base.29"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %6 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %10 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %14 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = ptrtoint i32* %13 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  invoke void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(%"struct.std::_Vector_base.29"* %5, i32* %9, i64 %21)
          to label %22 unwind label %24

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %23) #12
  ret void

; <label>:24:                                     ; preds = %1
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %28) #12
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPjEvT_S1_(i32*, i32*) #0 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(i32*, i32*) #1 comdat align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(%"struct.std::_Vector_base.29"*, i32*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.29"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.29"* %0, %"struct.std::_Vector_base.29"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.29"*, %"struct.std::_Vector_base.29"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %11 to %"class.std::allocator.30"*
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE10deallocateERS1_Pjm(%"class.std::allocator.30"* dereferenceable(1) %12, i32* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %0, %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"*, %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %3 to %"class.std::allocator.30"*
  call void @_ZNSaIjED2Ev(%"class.std::allocator.30"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE10deallocateERS1_Pjm(%"class.std::allocator.30"* dereferenceable(1), i32*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.30"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %4, align 8
  %8 = bitcast %"class.std::allocator.30"* %7 to %"class.__gnu_cxx::new_allocator.31"*
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(%"class.__gnu_cxx::new_allocator.31"* %8, i32* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(%"class.__gnu_cxx::new_allocator.31"*, i32*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %0, %"class.__gnu_cxx::new_allocator.31"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"*, %"class.std::allocator.34"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Bvector_base"*, align 8
  %4 = alloca %"class.std::allocator.34"*, align 8
  %5 = alloca %"class.std::allocator.8", align 1
  %6 = alloca i8*
  %7 = alloca i32
  store %"struct.std::_Bvector_base"* %0, %"struct.std::_Bvector_base"** %3, align 8
  store %"class.std::allocator.34"* %1, %"class.std::allocator.34"** %4, align 8
  %8 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %3, align 8
  %9 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %8, i32 0, i32 0
  %10 = load %"class.std::allocator.34"*, %"class.std::allocator.34"** %4, align 8
  call void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.8"* %5, %"class.std::allocator.34"* dereferenceable(1) %10) #12
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %9, %"class.std::allocator.8"* dereferenceable(1) %5)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %2
  call void @_ZNSaImED2Ev(%"class.std::allocator.8"* %5) #12
  ret void

; <label>:12:                                     ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %6, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %7, align 4
  call void @_ZNSaImED2Ev(%"class.std::allocator.8"* %5) #12
  br label %16

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.7"*, i64) #0 comdat align 2 {
  %3 = alloca %"class.std::vector.7"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

; <label>:12:                                     ; preds = %2
  %13 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %14 = load i64, i64* %4, align 8
  %15 = call i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %13, i64 %14)
  store i64* %15, i64** %5, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %17)
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %21 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %20, i32 0, i32 0
  %22 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %21 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %22, i32 0, i32 2
  store i64* %19, i64** %23, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = call i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %24)
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %6, i64* %25, i32 0)
  %26 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %27 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %26, i32 0, i32 0
  %28 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %27 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %29 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Bit_iterator"* %29 to i8*
  %31 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 12, i32 8, i1 false)
  br label %43

; <label>:32:                                     ; preds = %2
  %33 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %34 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %33, i32 0, i32 0
  %35 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %34 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %36 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %35, i32 0, i32 2
  store i64* null, i64** %36, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %7, i64* null, i32 0)
  %37 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %38 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %37, i32 0, i32 0
  %39 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %38 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %40 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %39, i32 0, i32 0
  %41 = bitcast %"struct.std::_Bit_iterator"* %40 to i8*
  %42 = bitcast %"struct.std::_Bit_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 12, i32 8, i1 false)
  br label %43

; <label>:43:                                     ; preds = %32, %12
  %44 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %45 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %44, i32 0, i32 0
  %46 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %45 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %47 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %46, i32 0, i32 0
  %48 = load i64, i64* %4, align 8
  %49 = call { i64*, i32 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %47, i64 %48)
  %50 = bitcast %"struct.std::_Bit_iterator"* %8 to { i64*, i32 }*
  %51 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 0
  %52 = extractvalue { i64*, i32 } %49, 0
  store i64* %52, i64** %51, align 8
  %53 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 1
  %54 = extractvalue { i64*, i32 } %49, 1
  store i32 %54, i32* %53, align 8
  %55 = bitcast %"class.std::vector.7"* %9 to %"struct.std::_Bvector_base"*
  %56 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %55, i32 0, i32 0
  %57 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %56 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %58 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %57, i32 0, i32 1
  %59 = bitcast %"struct.std::_Bit_iterator"* %58 to i8*
  %60 = bitcast %"struct.std::_Bit_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 12, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(%"class.std::vector.7"*, i1 zeroext) #0 comdat align 2 {
  %3 = alloca %"class.std::vector.7"*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %8 = bitcast %"class.std::vector.7"* %7 to %"struct.std::_Bvector_base"*
  %9 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %9 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_Bit_iterator"* %11 to %"struct.std::_Bit_iterator_base"*
  %13 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %5, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %33

; <label>:17:                                     ; preds = %2
  %18 = load i64*, i64** %5, align 8
  %19 = bitcast i64* %18 to i8*
  %20 = load i8, i8* %4, align 1
  %21 = trunc i8 %20 to i1
  %22 = select i1 %21, i32 -1, i32 0
  %23 = trunc i32 %22 to i8
  %24 = bitcast %"class.std::vector.7"* %7 to %"struct.std::_Bvector_base"*
  %25 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %24, i32 0, i32 0
  %26 = call i64* @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %25)
  %27 = load i64*, i64** %5, align 8
  %28 = ptrtoint i64* %26 to i64
  %29 = ptrtoint i64* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = mul i64 %31, 8
  call void @llvm.memset.p0i8.i64(i8* %19, i8 %23, i64 %32, i32 8, i1 false)
  br label %33

; <label>:33:                                     ; preds = %17, %2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Bvector_base"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Bvector_base"* %0, %"struct.std::_Bvector_base"** %2, align 8
  %5 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %2, align 8
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %5)
          to label %6 unwind label %8

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %7) #12
  ret void

; <label>:8:                                      ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %12) #12
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.8"*, %"class.std::allocator.34"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.8"*, align 8
  %4 = alloca %"class.std::allocator.34"*, align 8
  store %"class.std::allocator.8"* %0, %"class.std::allocator.8"** %3, align 8
  store %"class.std::allocator.34"* %1, %"class.std::allocator.34"** %4, align 8
  %5 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %3, align 8
  %6 = bitcast %"class.std::allocator.8"* %5 to %"class.__gnu_cxx::new_allocator.9"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.9"* %6) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"class.std::allocator.8"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  %4 = alloca %"class.std::allocator.8"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %0, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %3, align 8
  store %"class.std::allocator.8"* %1, %"class.std::allocator.8"** %4, align 8
  %7 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %3, align 8
  %8 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %7 to %"class.std::allocator.8"*
  %9 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %4, align 8
  call void @_ZNSaImEC2ERKS_(%"class.std::allocator.8"* %8, %"class.std::allocator.8"* dereferenceable(1) %9) #12
  %10 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %7 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  invoke void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %2
  ret void

; <label>:12:                                     ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %7 to %"class.std::allocator.8"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.8"* %16) #12
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaImED2Ev(%"class.std::allocator.8"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.8"*, align 8
  store %"class.std::allocator.8"* %0, %"class.std::allocator.8"** %2, align 8
  %3 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %2, align 8
  %4 = bitcast %"class.std::allocator.8"* %3 to %"class.__gnu_cxx::new_allocator.9"*
  call void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.9"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.9"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %0, %"class.__gnu_cxx::new_allocator.9"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaImEC2ERKS_(%"class.std::allocator.8"*, %"class.std::allocator.8"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.8"*, align 8
  %4 = alloca %"class.std::allocator.8"*, align 8
  store %"class.std::allocator.8"* %0, %"class.std::allocator.8"** %3, align 8
  store %"class.std::allocator.8"* %1, %"class.std::allocator.8"** %4, align 8
  %5 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %3, align 8
  %6 = bitcast %"class.std::allocator.8"* %5 to %"class.__gnu_cxx::new_allocator.9"*
  %7 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %4, align 8
  %8 = bitcast %"class.std::allocator.8"* %7 to %"class.__gnu_cxx::new_allocator.9"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.9"* %6, %"class.__gnu_cxx::new_allocator.9"* dereferenceable(1) %8) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*, align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %0, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %3, i32 0, i32 0
  call void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %4)
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %3, i32 0, i32 1
  call void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %5)
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %3, i32 0, i32 2
  store i64* null, i64** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %0, %"class.__gnu_cxx::new_allocator.9"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %1, %"class.__gnu_cxx::new_allocator.9"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"** %3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %2, align 8
  %3 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %2, align 8
  %4 = bitcast %"struct.std::_Bit_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %4, i64* null, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"*, i64*, i32) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %"struct.std::_Bit_iterator_base"* %0, %"struct.std::_Bit_iterator_base"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %4, align 8
  %8 = bitcast %"struct.std::_Bit_iterator_base"* %7 to %"struct.std::iterator"*
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %7, i32 0, i32 0
  %10 = load i64*, i64** %5, align 8
  store i64* %10, i64** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %7, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.9"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %0, %"class.__gnu_cxx::new_allocator.9"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Bvector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Bvector_base"* %0, %"struct.std::_Bvector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %6 to %"class.std::allocator.8"*
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %8)
  %10 = call i64* @_ZN9__gnu_cxx14__alloc_traitsISaImEmE8allocateERS1_m(%"class.std::allocator.8"* dereferenceable(1) %7, i64 %9)
  ret i64* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64) #1 comdat align 2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, 64
  %5 = sub i64 %4, 1
  %6 = udiv i64 %5, 64
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8)) #1 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  ret i64* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"*, i64*, i32) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_Bit_iterator"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %4, align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %7 to %"struct.std::_Bit_iterator_base"*
  %9 = load i64*, i64** %5, align 8
  %10 = load i32, i32* %6, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %8, i64* %9, i32 %10)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %4, align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  %9 = bitcast %"struct.std::_Bit_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load i64, i64* %5, align 8
  %11 = call dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"* %6, i64 %10)
  %12 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %13 = bitcast %"struct.std::_Bit_iterator"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %14 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64*, i32 }*
  %15 = load { i64*, i32 }, { i64*, i32 }* %14, align 8
  ret { i64*, i32 } %15
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx14__alloc_traitsISaImEmE8allocateERS1_m(%"class.std::allocator.8"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.8"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.8"* %0, %"class.std::allocator.8"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %3, align 8
  %6 = bitcast %"class.std::allocator.8"* %5 to %"class.__gnu_cxx::new_allocator.9"*
  %7 = load i64, i64* %4, align 8
  %8 = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.9"* %6, i64 %7, i8* null)
  ret i64* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.9"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %0, %"class.__gnu_cxx::new_allocator.9"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.9"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 8
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to i64*
  ret i64* %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.9"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %0, %"class.__gnu_cxx::new_allocator.9"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"** %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Bit_iterator"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %3, align 8
  %6 = bitcast %"struct.std::_Bit_iterator"* %5 to %"struct.std::_Bit_iterator_base"*
  %7 = load i64, i64* %4, align 8
  call void @_ZNSt18_Bit_iterator_base7_M_incrEl(%"struct.std::_Bit_iterator_base"* %6, i64 %7)
  ret %"struct.std::_Bit_iterator"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_base7_M_incrEl(%"struct.std::_Bit_iterator_base"*, i64) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %"struct.std::_Bit_iterator_base"* %0, %"struct.std::_Bit_iterator_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sdiv i64 %12, 64
  %14 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 %13
  store i64* %16, i64** %14, align 8
  %17 = load i64, i64* %5, align 8
  %18 = srem i64 %17, 64
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 64
  store i64 %23, i64* %5, align 8
  %24 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 -1
  store i64* %26, i64** %24, align 8
  br label %27

; <label>:27:                                     ; preds = %21, %2
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*) #1 comdat align 2 {
  %2 = alloca i64*, align 8
  %3 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %0, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %3, align 8
  %4 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %3, align 8
  %5 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %5, i32 0, i32 2
  %7 = load i64*, i64** %6, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %1
  %10 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 -1
  %14 = call i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %13)
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64* %15, i64** %2, align 8
  br label %17

; <label>:16:                                     ; preds = %1
  store i64* null, i64** %2, align 8
  br label %17

; <label>:17:                                     ; preds = %16, %9
  %18 = load i64*, i64** %2, align 8
  ret i64* %18
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bvector_base"*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Bvector_base"* %0, %"struct.std::_Bvector_base"** %2, align 8
  %4 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Bit_iterator"* %7 to %"struct.std::_Bit_iterator_base"*
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %37

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %14 = call i64* @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %13)
  %15 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %16 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %15 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %16, i32 0, i32 0
  %18 = bitcast %"struct.std::_Bit_iterator"* %17 to %"struct.std::_Bit_iterator_base"*
  %19 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = ptrtoint i64* %14 to i64
  %22 = ptrtoint i64* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 8
  store i64 %24, i64* %3, align 8
  %25 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %26 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %25 to %"class.std::allocator.8"*
  %27 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %28 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %27 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %29 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaImEmE10deallocateERS1_Pmm(%"class.std::allocator.8"* dereferenceable(1) %26, i64* %33, i64 %34)
  %35 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %36 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %35 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %36)
  br label %37

; <label>:37:                                     ; preds = %12, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %0, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %2, align 8
  %3 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %3 to %"class.std::allocator.8"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.8"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaImEmE10deallocateERS1_Pmm(%"class.std::allocator.8"* dereferenceable(1), i64*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.8"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.8"* %0, %"class.std::allocator.8"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %4, align 8
  %8 = bitcast %"class.std::allocator.8"* %7 to %"class.__gnu_cxx::new_allocator.9"*
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.9"* %8, i64* %9, i64 %10)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*, align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %0, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"** %2, align 8
  %4 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"** %2, align 8
  call void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %3)
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %4, i32 0, i32 1
  %6 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  %7 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 12, i32 8, i1 false)
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Bit_iterator"* %8 to i8*
  %10 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 12, i32 8, i1 false)
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %4, i32 0, i32 2
  store i64* null, i64** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.9"*, i64*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.9"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.9"* %0, %"class.__gnu_cxx::new_allocator.9"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.9"*, %"class.__gnu_cxx::new_allocator.9"** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = bitcast i64* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev(%"class.__gnu_cxx::new_allocator.26"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev(%"class.__gnu_cxx::new_allocator.26"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_S_check_init_lenEmRKS2_(i64, %"class.std::allocator.25"* dereferenceable(1)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator.25"*, align 8
  %5 = alloca %"class.std::allocator.25", align 1
  %6 = alloca i8*
  %7 = alloca i32
  store i64 %0, i64* %3, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  call void @_ZNSaISt6vectorIbSaIbEEEC2ERKS2_(%"class.std::allocator.25"* %5, %"class.std::allocator.25"* dereferenceable(1) %9) #12
  %10 = invoke i64 @_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.25"* dereferenceable(1) %5)
          to label %11 unwind label %14

; <label>:11:                                     ; preds = %2
  %12 = icmp ugt i64 %8, %10
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"* %5) #12
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %11
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #15
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %6, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %7, align 4
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"* %5) #12
  br label %20

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %3, align 8
  ret i64 %19

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2EmRKS3_(%"struct.std::_Vector_base.24"*, i64, %"class.std::allocator.25"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base.24"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator.25"*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  store %"struct.std::_Vector_base.24"* %0, %"struct.std::_Vector_base.24"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator.25"* %2, %"class.std::allocator.25"** %6, align 8
  %9 = load %"struct.std::_Vector_base.24"*, %"struct.std::_Vector_base.24"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %6, align 8
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2ERKS3_(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %10, %"class.std::allocator.25"* dereferenceable(1) %11)
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_M_create_storageEm(%"struct.std::_Vector_base.24"* %9, i64 %12)
          to label %13 unwind label %14

; <label>:13:                                     ; preds = %3
  ret void

; <label>:14:                                     ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %10) #12
  br label %18

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.23"*, i64, %"class.std::vector.7"* dereferenceable(40)) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.23"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.23"* %0, %"class.std::vector.23"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::vector.7"* %2, %"class.std::vector.7"** %6, align 8
  %7 = load %"class.std::vector.23"*, %"class.std::vector.23"** %4, align 8
  %8 = bitcast %"class.std::vector.23"* %7 to %"struct.std::_Vector_base.24"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %9 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %10, i32 0, i32 0
  %12 = load %"class.std::vector.7"*, %"class.std::vector.7"** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %"class.std::vector.7"*, %"class.std::vector.7"** %6, align 8
  %15 = bitcast %"class.std::vector.23"* %7 to %"struct.std::_Vector_base.24"*
  %16 = call dereferenceable(1) %"class.std::allocator.25"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.24"* %15)
  %17 = call %"class.std::vector.7"* @_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(%"class.std::vector.7"* %12, i64 %13, %"class.std::vector.7"* dereferenceable(40) %14, %"class.std::allocator.25"* dereferenceable(1) %16)
  %18 = bitcast %"class.std::vector.23"* %7 to %"struct.std::_Vector_base.24"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %19 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %20, i32 0, i32 1
  store %"class.std::vector.7"* %17, %"class.std::vector.7"** %21, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev(%"struct.std::_Vector_base.24"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base.24"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base.24"* %0, %"struct.std::_Vector_base.24"** %2, align 8
  %5 = load %"struct.std::_Vector_base.24"*, %"struct.std::_Vector_base.24"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %"class.std::vector.7"*, %"class.std::vector.7"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %"class.std::vector.7"*, %"class.std::vector.7"** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %14 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %"class.std::vector.7"*, %"class.std::vector.7"** %16, align 8
  %18 = ptrtoint %"class.std::vector.7"* %13 to i64
  %19 = ptrtoint %"class.std::vector.7"* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 40
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.24"* %5, %"class.std::vector.7"* %9, i64 %21)
          to label %22 unwind label %24

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %23) #12
  ret void

; <label>:24:                                     ; preds = %1
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %28) #12
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.25"* dereferenceable(1)) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.25"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  store i64 230584300921369395, i64* %3, align 8
  %5 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E8max_sizeERKS4_(%"class.std::allocator.25"* dereferenceable(1) %5)
  store i64 %6, i64* %4, align 8
  %7 = call dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt6vectorIbSaIbEEEC2ERKS2_(%"class.std::allocator.25"*, %"class.std::allocator.25"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.25"*, align 8
  %4 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %3, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %4, align 8
  %5 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %3, align 8
  %6 = bitcast %"class.std::allocator.25"* %5 to %"class.__gnu_cxx::new_allocator.26"*
  %7 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  %8 = bitcast %"class.std::allocator.25"* %7 to %"class.__gnu_cxx::new_allocator.26"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2ERKS4_(%"class.__gnu_cxx::new_allocator.26"* %6, %"class.__gnu_cxx::new_allocator.26"* dereferenceable(1) %8) #12
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E8max_sizeERKS4_(%"class.std::allocator.25"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  %3 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  %4 = bitcast %"class.std::allocator.25"* %3 to %"class.__gnu_cxx::new_allocator.26"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.26"* %4) #12
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8), i64* dereferenceable(8)) #1 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.26"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  ret i64 230584300921369395
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2ERKS4_(%"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %1, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2ERKS3_(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, %"class.std::allocator.25"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, align 8
  %4 = alloca %"class.std::allocator.25"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %0, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %3, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %4, align 8
  %7 = load %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %3, align 8
  %8 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %7 to %"class.std::allocator.25"*
  %9 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  call void @_ZNSaISt6vectorIbSaIbEEEC2ERKS2_(%"class.std::allocator.25"* %8, %"class.std::allocator.25"* dereferenceable(1) %9) #12
  %10 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  invoke void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %2
  ret void

; <label>:12:                                     ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %7 to %"class.std::allocator.25"*
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"* %16) #12
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_M_create_storageEm(%"struct.std::_Vector_base.24"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.24"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.24"* %0, %"struct.std::_Vector_base.24"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.24"*, %"struct.std::_Vector_base.24"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %"class.std::vector.7"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.24"* %5, i64 %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %8 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %9, i32 0, i32 0
  store %"class.std::vector.7"* %7, %"class.std::vector.7"** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %11 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load %"class.std::vector.7"*, %"class.std::vector.7"** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %15 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %16, i32 0, i32 1
  store %"class.std::vector.7"* %14, %"class.std::vector.7"** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %18 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load %"class.std::vector.7"*, %"class.std::vector.7"** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %"class.std::vector.7", %"class.std::vector.7"* %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %24 to %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %25, i32 0, i32 2
  store %"class.std::vector.7"* %23, %"class.std::vector.7"** %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %0, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"*, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %3 to %"class.std::allocator.25"*
  call void @_ZNSaISt6vectorIbSaIbEEED2Ev(%"class.std::allocator.25"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %3, i32 0, i32 0
  store %"class.std::vector.7"* null, %"class.std::vector.7"** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %3, i32 0, i32 1
  store %"class.std::vector.7"* null, %"class.std::vector.7"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data", %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl_data"* %3, i32 0, i32 2
  store %"class.std::vector.7"* null, %"class.std::vector.7"** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"class.std::vector.7"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base.24"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.24"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.24"* %0, %"struct.std::_Vector_base.24"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.24"*, %"struct.std::_Vector_base.24"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %9 to %"class.std::allocator.25"*
  %11 = load i64, i64* %4, align 8
  %12 = call %"class.std::vector.7"* @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E8allocateERS4_m(%"class.std::allocator.25"* dereferenceable(1) %10, i64 %11)
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = phi %"class.std::vector.7"* [ %12, %8 ], [ null, %13 ]
  ret %"class.std::vector.7"* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr %"class.std::vector.7"* @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E8allocateERS4_m(%"class.std::allocator.25"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.25"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %3, align 8
  %6 = bitcast %"class.std::allocator.25"* %5 to %"class.__gnu_cxx::new_allocator.26"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"class.std::vector.7"* @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.26"* %6, i64 %7, i8* null)
  ret %"class.std::vector.7"* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr %"class.std::vector.7"* @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.26"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.26"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 40
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %"class.std::vector.7"*
  ret %"class.std::vector.7"* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr %"class.std::vector.7"* @_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(%"class.std::vector.7"*, i64, %"class.std::vector.7"* dereferenceable(40), %"class.std::allocator.25"* dereferenceable(1)) #0 comdat {
  %5 = alloca %"class.std::vector.7"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::vector.7"*, align 8
  %8 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %5, align 8
  store i64 %1, i64* %6, align 8
  store %"class.std::vector.7"* %2, %"class.std::vector.7"** %7, align 8
  store %"class.std::allocator.25"* %3, %"class.std::allocator.25"** %8, align 8
  %9 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %"class.std::vector.7"*, %"class.std::vector.7"** %7, align 8
  %12 = call %"class.std::vector.7"* @_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_(%"class.std::vector.7"* %9, i64 %10, %"class.std::vector.7"* dereferenceable(40) %11)
  ret %"class.std::vector.7"* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.25"* @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.24"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.24"*, align 8
  store %"struct.std::_Vector_base.24"* %0, %"struct.std::_Vector_base.24"** %2, align 8
  %3 = load %"struct.std::_Vector_base.24"*, %"struct.std::_Vector_base.24"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %4 to %"class.std::allocator.25"*
  ret %"class.std::allocator.25"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %"class.std::vector.7"* @_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_(%"class.std::vector.7"*, i64, %"class.std::vector.7"* dereferenceable(40)) #0 comdat {
  %4 = alloca %"class.std::vector.7"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::vector.7"*, align 8
  %7 = alloca i8, align 1
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::vector.7"* %2, %"class.std::vector.7"** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %"class.std::vector.7"*, %"class.std::vector.7"** %6, align 8
  %11 = call %"class.std::vector.7"* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_(%"class.std::vector.7"* %8, i64 %9, %"class.std::vector.7"* dereferenceable(40) %10)
  ret %"class.std::vector.7"* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %"class.std::vector.7"* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_(%"class.std::vector.7"*, i64, %"class.std::vector.7"* dereferenceable(40)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::vector.7"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::vector.7"*, align 8
  %7 = alloca %"class.std::vector.7"*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::vector.7"* %2, %"class.std::vector.7"** %6, align 8
  %10 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  store %"class.std::vector.7"* %10, %"class.std::vector.7"** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %20, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %11
  %15 = load %"class.std::vector.7"*, %"class.std::vector.7"** %7, align 8
  %16 = invoke %"class.std::vector.7"* @_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_(%"class.std::vector.7"* dereferenceable(40) %15)
          to label %17 unwind label %25

; <label>:17:                                     ; preds = %14
  %18 = load %"class.std::vector.7"*, %"class.std::vector.7"** %6, align 8
  invoke void @_ZSt10_ConstructISt6vectorIbSaIbEES2_EvPT_RKT0_(%"class.std::vector.7"* %16, %"class.std::vector.7"* dereferenceable(40) %18)
          to label %19 unwind label %25

; <label>:19:                                     ; preds = %17
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %"class.std::vector.7"*, %"class.std::vector.7"** %7, align 8
  %24 = getelementptr inbounds %"class.std::vector.7", %"class.std::vector.7"* %23, i32 1
  store %"class.std::vector.7"* %24, %"class.std::vector.7"** %7, align 8
  br label %11

; <label>:25:                                     ; preds = %17, %14
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @__cxa_begin_catch(i8* %30) #12
  %32 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %33 = load %"class.std::vector.7"*, %"class.std::vector.7"** %7, align 8
  invoke void @_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_(%"class.std::vector.7"* %32, %"class.std::vector.7"* %33)
          to label %34 unwind label %37

; <label>:34:                                     ; preds = %29
  invoke void @__cxa_rethrow() #15
          to label %51 unwind label %37

; <label>:35:                                     ; preds = %11
  %36 = load %"class.std::vector.7"*, %"class.std::vector.7"** %7, align 8
  ret %"class.std::vector.7"* %36

; <label>:37:                                     ; preds = %34, %29
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %8, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %41 unwind label %48

; <label>:41:                                     ; preds = %37
  br label %43
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1
  resume { i8*, i32 } %47

; <label>:48:                                     ; preds = %37
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #10
  unreachable

; <label>:51:                                     ; preds = %34
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructISt6vectorIbSaIbEES2_EvPT_RKT0_(%"class.std::vector.7"*, %"class.std::vector.7"* dereferenceable(40)) #0 comdat {
  %3 = alloca %"class.std::vector.7"*, align 8
  %4 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %4, align 8
  %5 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %6 = bitcast %"class.std::vector.7"* %5 to i8*
  %7 = bitcast i8* %6 to %"class.std::vector.7"*
  %8 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(%"class.std::vector.7"* %7, %"class.std::vector.7"* dereferenceable(40) %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"class.std::vector.7"* @_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_(%"class.std::vector.7"* dereferenceable(40)) #1 comdat {
  %2 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %2, align 8
  %3 = load %"class.std::vector.7"*, %"class.std::vector.7"** %2, align 8
  ret %"class.std::vector.7"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_(%"class.std::vector.7"*, %"class.std::vector.7"*) #0 comdat {
  %3 = alloca %"class.std::vector.7"*, align 8
  %4 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %4, align 8
  %5 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %6 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_(%"class.std::vector.7"* %5, %"class.std::vector.7"* %6)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2ERKS1_(%"class.std::vector.7"*, %"class.std::vector.7"* dereferenceable(40)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::vector.7"*, align 8
  %4 = alloca %"class.std::vector.7"*, align 8
  %5 = alloca %"class.std::allocator.34", align 1
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  %10 = alloca %"struct.std::_Bit_iterator", align 8
  %11 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %4, align 8
  %12 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %13 = bitcast %"class.std::vector.7"* %12 to %"struct.std::_Bvector_base"*
  %14 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %15 = bitcast %"class.std::vector.7"* %14 to %"struct.std::_Bvector_base"*
  %16 = call dereferenceable(1) %"class.std::allocator.8"* @_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv(%"struct.std::_Bvector_base"* %15)
  %17 = call dereferenceable(1) %"class.std::allocator.8"* @_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_(%"class.std::allocator.8"* dereferenceable(1) %16)
  call void @_ZNSaIbEC2ImEERKSaIT_E(%"class.std::allocator.34"* %5, %"class.std::allocator.8"* dereferenceable(1) %17) #12
  invoke void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %13, %"class.std::allocator.34"* dereferenceable(1) %5)
          to label %18 unwind label %62

; <label>:18:                                     ; preds = %2
  call void @_ZNSaIbED2Ev(%"class.std::allocator.34"* %5) #12
  %19 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %20 = invoke i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.7"* %19)
          to label %21 unwind label %66

; <label>:21:                                     ; preds = %18
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.7"* %12, i64 %20)
          to label %22 unwind label %66

; <label>:22:                                     ; preds = %21
  %23 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %24 = invoke { i64*, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.7"* %23)
          to label %25 unwind label %66

; <label>:25:                                     ; preds = %22
  %26 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %27 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i64*, i32 } %24, 0
  store i64* %28, i64** %27, align 8
  %29 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i64*, i32 } %24, 1
  store i32 %30, i32* %29, align 8
  %31 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %32 = invoke { i64*, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.7"* %31)
          to label %33 unwind label %66

; <label>:33:                                     ; preds = %25
  %34 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %35 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %34, i32 0, i32 0
  %36 = extractvalue { i64*, i32 } %32, 0
  store i64* %36, i64** %35, align 8
  %37 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %34, i32 0, i32 1
  %38 = extractvalue { i64*, i32 } %32, 1
  store i32 %38, i32* %37, align 8
  %39 = bitcast %"class.std::vector.7"* %12 to %"struct.std::_Bvector_base"*
  %40 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %39, i32 0, i32 0
  %41 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %40 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %42 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %41, i32 0, i32 0
  %43 = bitcast %"struct.std::_Bit_iterator"* %10 to i8*
  %44 = bitcast %"struct.std::_Bit_iterator"* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %46 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %45, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %51 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %50, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = invoke { i64*, i32 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(%"class.std::vector.7"* %12, i64* %47, i32 %49, i64* %52, i32 %54, %"struct.std::_Bit_iterator"* byval align 8 %10)
          to label %56 unwind label %66

; <label>:56:                                     ; preds = %33
  %57 = bitcast %"struct.std::_Bit_iterator"* %11 to { i64*, i32 }*
  %58 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %57, i32 0, i32 0
  %59 = extractvalue { i64*, i32 } %55, 0
  store i64* %59, i64** %58, align 8
  %60 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %57, i32 0, i32 1
  %61 = extractvalue { i64*, i32 } %55, 1
  store i32 %61, i32* %60, align 8
  ret void

; <label>:62:                                     ; preds = %2
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  store i8* %64, i8** %6, align 8
  %65 = extractvalue { i8*, i32 } %63, 1
  store i32 %65, i32* %7, align 4
  call void @_ZNSaIbED2Ev(%"class.std::allocator.34"* %5) #12
  br label %72

; <label>:66:                                     ; preds = %33, %25, %22, %21, %18
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %6, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %7, align 4
  %70 = bitcast %"class.std::vector.7"* %12 to %"struct.std::_Bvector_base"*
  invoke void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %70)
          to label %71 unwind label %77

; <label>:71:                                     ; preds = %66
  br label %72

; <label>:72:                                     ; preds = %71, %62
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = insertvalue { i8*, i32 } undef, i8* %73, 0
  %76 = insertvalue { i8*, i32 } %75, i32 %74, 1
  resume { i8*, i32 } %76

; <label>:77:                                     ; preds = %66
  %78 = landingpad { i8*, i32 }
          catch i8* null
  %79 = extractvalue { i8*, i32 } %78, 0
  call void @__clang_call_terminate(i8* %79) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.8"* @_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_(%"class.std::allocator.8"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.8"*, align 8
  store %"class.std::allocator.8"* %0, %"class.std::allocator.8"** %2, align 8
  %3 = load %"class.std::allocator.8"*, %"class.std::allocator.8"** %2, align 8
  ret %"class.std::allocator.8"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.8"* @_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv(%"struct.std::_Bvector_base"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Bvector_base"*, align 8
  store %"struct.std::_Bvector_base"* %0, %"struct.std::_Bvector_base"** %2, align 8
  %3 = load %"struct.std::_Bvector_base"*, %"struct.std::_Bvector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4 to %"class.std::allocator.8"*
  ret %"class.std::allocator.8"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIbEC2ImEERKSaIT_E(%"class.std::allocator.34"*, %"class.std::allocator.8"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.34"*, align 8
  %4 = alloca %"class.std::allocator.8"*, align 8
  store %"class.std::allocator.34"* %0, %"class.std::allocator.34"** %3, align 8
  store %"class.std::allocator.8"* %1, %"class.std::allocator.8"** %4, align 8
  %5 = load %"class.std::allocator.34"*, %"class.std::allocator.34"** %3, align 8
  %6 = bitcast %"class.std::allocator.34"* %5 to %"class.__gnu_cxx::new_allocator.35"*
  call void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.35"* %6) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.7"*) #0 comdat align 2 {
  %2 = alloca %"class.std::vector.7"*, align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %2, align 8
  %5 = load %"class.std::vector.7"*, %"class.std::vector.7"** %2, align 8
  %6 = call { i64*, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.7"* %5)
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64*, i32 }*
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %7, i32 0, i32 0
  %9 = extractvalue { i64*, i32 } %6, 0
  store i64* %9, i64** %8, align 8
  %10 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %7, i32 0, i32 1
  %11 = extractvalue { i64*, i32 } %6, 1
  store i32 %11, i32* %10, align 8
  %12 = bitcast %"struct.std::_Bit_const_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %13 = call { i64*, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.7"* %5)
  %14 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64*, i32 }*
  %15 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i64*, i32 } %13, 0
  store i64* %16, i64** %15, align 8
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i64*, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = bitcast %"struct.std::_Bit_const_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %20 = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* dereferenceable(16) %12, %"struct.std::_Bit_iterator_base"* dereferenceable(16) %19)
  ret i64 %20
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(%"class.std::vector.7"*, i64*, i32, i64*, i32, %"struct.std::_Bit_iterator"* byval align 8) #0 comdat align 2 {
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  %10 = alloca %"class.std::vector.7"*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %"struct.std::_Bit_const_iterator", align 8
  %13 = alloca %"struct.std::_Bit_const_iterator", align 8
  %14 = alloca %"struct.std::_Bit_iterator", align 8
  %15 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %16 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %15, i32 0, i32 0
  store i64* %1, i64** %16, align 8
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %15, i32 0, i32 1
  store i32 %2, i32* %17, align 8
  %18 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %19 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %18, i32 0, i32 0
  store i64* %3, i64** %19, align 8
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %18, i32 0, i32 1
  store i32 %4, i32* %20, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %10, align 8
  %21 = load %"class.std::vector.7"*, %"class.std::vector.7"** %10, align 8
  %22 = bitcast %"struct.std::_Bit_const_iterator"* %8 to %"struct.std::_Bit_iterator_base"*
  %23 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = bitcast %"struct.std::_Bit_const_iterator"* %9 to %"struct.std::_Bit_iterator_base"*
  %26 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = bitcast %"struct.std::_Bit_iterator"* %5 to %"struct.std::_Bit_iterator_base"*
  %29 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %24, i64* %27, i64* %30)
  store i64* %31, i64** %11, align 8
  %32 = bitcast %"struct.std::_Bit_const_iterator"* %9 to %"struct.std::_Bit_iterator_base"*
  %33 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"* %12, i64* %34, i32 0)
  %35 = bitcast %"struct.std::_Bit_const_iterator"* %13 to i8*
  %36 = bitcast %"struct.std::_Bit_const_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  %37 = load i64*, i64** %11, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %14, i64* %37, i32 0)
  %38 = bitcast %"struct.std::_Bit_const_iterator"* %12 to { i64*, i32 }*
  %39 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %38, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %"struct.std::_Bit_const_iterator"* %13 to { i64*, i32 }*
  %44 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %43, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = bitcast %"struct.std::_Bit_iterator"* %14 to { i64*, i32 }*
  %49 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %48, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call { i64*, i32 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(i64* %40, i32 %42, i64* %45, i32 %47, i64* %50, i32 %52)
  %54 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %55 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %54, i32 0, i32 0
  %56 = extractvalue { i64*, i32 } %53, 0
  store i64* %56, i64** %55, align 8
  %57 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %54, i32 0, i32 1
  %58 = extractvalue { i64*, i32 } %53, 1
  store i32 %58, i32* %57, align 8
  %59 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %60 = load { i64*, i32 }, { i64*, i32 }* %59, align 8
  ret { i64*, i32 } %60
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.7"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  %4 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %5 = bitcast %"class.std::vector.7"* %4 to %"struct.std::_Bvector_base"*
  %6 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %6 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Bit_iterator"* %8 to %"struct.std::_Bit_iterator_base"*
  %10 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"* %2, i64* %11, i32 0)
  %12 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64*, i32 }*
  %13 = load { i64*, i32 }, { i64*, i32 }* %12, align 8
  ret { i64*, i32 } %13
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.7"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  %4 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %5 = bitcast %"class.std::vector.7"* %4 to %"struct.std::_Bvector_base"*
  %6 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %6 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %7, i32 0, i32 1
  call void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %2, %"struct.std::_Bit_iterator"* dereferenceable(16) %8)
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64*, i32 }*
  %10 = load { i64*, i32 }, { i64*, i32 }* %9, align 8
  ret { i64*, i32 } %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* dereferenceable(16), %"struct.std::_Bit_iterator_base"* dereferenceable(16)) #1 comdat {
  %3 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %4 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %0, %"struct.std::_Bit_iterator_base"** %3, align 8
  store %"struct.std::_Bit_iterator_base"* %1, %"struct.std::_Bit_iterator_base"** %4, align 8
  %5 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = ptrtoint i64* %7 to i64
  %12 = ptrtoint i64* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = mul nsw i64 64, %14
  %16 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %3, align 8
  %17 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %4, align 8
  %22 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 %20, %24
  ret i64 %25
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64*, i64*, i64*) #0 comdat {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %7)
  %9 = load i64*, i64** %5, align 8
  %10 = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %9)
  %11 = load i64*, i64** %6, align 8
  %12 = call i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %8, i64* %10, i64* %11)
  ret i64* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(i64*, i32, i64*, i32, i64*, i32) #0 comdat {
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  %10 = alloca %"struct.std::_Bit_iterator", align 8
  %11 = alloca %"struct.std::_Bit_const_iterator", align 8
  %12 = alloca %"struct.std::_Bit_const_iterator", align 8
  %13 = alloca %"struct.std::_Bit_const_iterator", align 8
  %14 = alloca %"struct.std::_Bit_const_iterator", align 8
  %15 = alloca %"struct.std::_Bit_iterator", align 8
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 0
  store i64* %0, i64** %17, align 8
  %18 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 1
  store i32 %1, i32* %18, align 8
  %19 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %19, i32 0, i32 0
  store i64* %2, i64** %20, align 8
  %21 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %19, i32 0, i32 1
  store i32 %3, i32* %21, align 8
  %22 = bitcast %"struct.std::_Bit_iterator"* %10 to { i64*, i32 }*
  %23 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %22, i32 0, i32 0
  store i64* %4, i64** %23, align 8
  %24 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %22, i32 0, i32 1
  store i32 %5, i32* %24, align 8
  %25 = bitcast %"struct.std::_Bit_const_iterator"* %12 to i8*
  %26 = bitcast %"struct.std::_Bit_const_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = bitcast %"struct.std::_Bit_const_iterator"* %12 to { i64*, i32 }*
  %28 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %27, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call { i64*, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(i64* %29, i32 %31)
  %33 = bitcast %"struct.std::_Bit_const_iterator"* %11 to { i64*, i32 }*
  %34 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %33, i32 0, i32 0
  %35 = extractvalue { i64*, i32 } %32, 0
  store i64* %35, i64** %34, align 8
  %36 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %33, i32 0, i32 1
  %37 = extractvalue { i64*, i32 } %32, 1
  store i32 %37, i32* %36, align 8
  %38 = bitcast %"struct.std::_Bit_const_iterator"* %14 to i8*
  %39 = bitcast %"struct.std::_Bit_const_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %40 = bitcast %"struct.std::_Bit_const_iterator"* %14 to { i64*, i32 }*
  %41 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call { i64*, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(i64* %42, i32 %44)
  %46 = bitcast %"struct.std::_Bit_const_iterator"* %13 to { i64*, i32 }*
  %47 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %46, i32 0, i32 0
  %48 = extractvalue { i64*, i32 } %45, 0
  store i64* %48, i64** %47, align 8
  %49 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %46, i32 0, i32 1
  %50 = extractvalue { i64*, i32 } %45, 1
  store i32 %50, i32* %49, align 8
  %51 = bitcast %"struct.std::_Bit_iterator"* %15 to i8*
  %52 = bitcast %"struct.std::_Bit_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false)
  %53 = bitcast %"struct.std::_Bit_const_iterator"* %11 to { i64*, i32 }*
  %54 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %53, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = bitcast %"struct.std::_Bit_const_iterator"* %13 to { i64*, i32 }*
  %59 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %58, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = bitcast %"struct.std::_Bit_iterator"* %15 to { i64*, i32 }*
  %64 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %63, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call { i64*, i32 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64* %55, i32 %57, i64* %60, i32 %62, i64* %65, i32 %67)
  %69 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %70 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %69, i32 0, i32 0
  %71 = extractvalue { i64*, i32 } %68, 0
  store i64* %71, i64** %70, align 8
  %72 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %69, i32 0, i32 1
  %73 = extractvalue { i64*, i32 } %68, 1
  store i32 %73, i32* %72, align 8
  %74 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %75 = load { i64*, i32 }, { i64*, i32 }* %74, align 8
  ret { i64*, i32 } %75
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"*, i64*, i32) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %"struct.std::_Bit_const_iterator"* %0, %"struct.std::_Bit_const_iterator"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %4, align 8
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %7 to %"struct.std::_Bit_iterator_base"*
  %9 = load i64*, i64** %5, align 8
  %10 = load i32, i32* %6, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %8, i64* %9, i32 %10)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64*, i64*, i64*) #0 comdat {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %7)
  %9 = load i64*, i64** %5, align 8
  %10 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %9)
  %11 = load i64*, i64** %6, align 8
  %12 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %11)
  %13 = call i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %8, i64* %10, i64* %12)
  %14 = call i64* @_ZSt12__niter_wrapIPmET_RKS1_S1_(i64** dereferenceable(8) %6, i64* %13)
  ret i64* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt12__miter_baseIPmET_S1_(i64*) #1 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  ret i64* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt12__niter_wrapIPmET_RKS1_S1_(i64** dereferenceable(8), i64*) #1 comdat {
  %3 = alloca i64**, align 8
  %4 = alloca i64*, align 8
  store i64** %0, i64*** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %4, align 8
  ret i64* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64*, i64*, i64*) #0 comdat {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load i64*, i64** %4, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %8, i64* %9, i64* %10)
  ret i64* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIPmET_S1_(i64*) #1 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  ret i64* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64*, i64*, i64*) #1 comdat align 2 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = ptrtoint i64* %8 to i64
  %11 = ptrtoint i64* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %3
  %17 = load i64*, i64** %6, align 8
  %18 = bitcast i64* %17 to i8*
  %19 = load i64*, i64** %4, align 8
  %20 = bitcast i64* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %22, i32 8, i1 false)
  br label %23

; <label>:23:                                     ; preds = %16, %3
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  ret i64* %26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64*, i32, i64*, i32, i64*, i32) #0 comdat {
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  %10 = alloca %"struct.std::_Bit_iterator", align 8
  %11 = alloca %"struct.std::_Bit_iterator", align 8
  %12 = alloca %"struct.std::_Bit_const_iterator", align 8
  %13 = alloca %"struct.std::_Bit_const_iterator", align 8
  %14 = alloca %"struct.std::_Bit_const_iterator", align 8
  %15 = alloca %"struct.std::_Bit_const_iterator", align 8
  %16 = alloca %"struct.std::_Bit_iterator", align 8
  %17 = alloca %"struct.std::_Bit_iterator", align 8
  %18 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %19 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %18, i32 0, i32 0
  store i64* %0, i64** %19, align 8
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %18, i32 0, i32 1
  store i32 %1, i32* %20, align 8
  %21 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %22 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %21, i32 0, i32 0
  store i64* %2, i64** %22, align 8
  %23 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %21, i32 0, i32 1
  store i32 %3, i32* %23, align 8
  %24 = bitcast %"struct.std::_Bit_iterator"* %10 to { i64*, i32 }*
  %25 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %24, i32 0, i32 0
  store i64* %4, i64** %25, align 8
  %26 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %24, i32 0, i32 1
  store i32 %5, i32* %26, align 8
  %27 = bitcast %"struct.std::_Bit_const_iterator"* %13 to i8*
  %28 = bitcast %"struct.std::_Bit_const_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = bitcast %"struct.std::_Bit_const_iterator"* %13 to { i64*, i32 }*
  %30 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %29, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call { i64*, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(i64* %31, i32 %33)
  %35 = bitcast %"struct.std::_Bit_const_iterator"* %12 to { i64*, i32 }*
  %36 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 0
  %37 = extractvalue { i64*, i32 } %34, 0
  store i64* %37, i64** %36, align 8
  %38 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 1
  %39 = extractvalue { i64*, i32 } %34, 1
  store i32 %39, i32* %38, align 8
  %40 = bitcast %"struct.std::_Bit_const_iterator"* %15 to i8*
  %41 = bitcast %"struct.std::_Bit_const_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  %42 = bitcast %"struct.std::_Bit_const_iterator"* %15 to { i64*, i32 }*
  %43 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %42, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call { i64*, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(i64* %44, i32 %46)
  %48 = bitcast %"struct.std::_Bit_const_iterator"* %14 to { i64*, i32 }*
  %49 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %48, i32 0, i32 0
  %50 = extractvalue { i64*, i32 } %47, 0
  store i64* %50, i64** %49, align 8
  %51 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %48, i32 0, i32 1
  %52 = extractvalue { i64*, i32 } %47, 1
  store i32 %52, i32* %51, align 8
  %53 = bitcast %"struct.std::_Bit_iterator"* %17 to i8*
  %54 = bitcast %"struct.std::_Bit_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  %55 = bitcast %"struct.std::_Bit_iterator"* %17 to { i64*, i32 }*
  %56 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %55, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call { i64*, i32 } @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_(i64* %57, i32 %59)
  %61 = bitcast %"struct.std::_Bit_iterator"* %16 to { i64*, i32 }*
  %62 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %61, i32 0, i32 0
  %63 = extractvalue { i64*, i32 } %60, 0
  store i64* %63, i64** %62, align 8
  %64 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %61, i32 0, i32 1
  %65 = extractvalue { i64*, i32 } %60, 1
  store i32 %65, i32* %64, align 8
  %66 = bitcast %"struct.std::_Bit_const_iterator"* %12 to { i64*, i32 }*
  %67 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %66, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = bitcast %"struct.std::_Bit_const_iterator"* %14 to { i64*, i32 }*
  %72 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %71, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = bitcast %"struct.std::_Bit_iterator"* %16 to { i64*, i32 }*
  %77 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %76, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call { i64*, i32 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64* %68, i32 %70, i64* %73, i32 %75, i64* %78, i32 %80)
  %82 = bitcast %"struct.std::_Bit_iterator"* %11 to { i64*, i32 }*
  %83 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %82, i32 0, i32 0
  %84 = extractvalue { i64*, i32 } %81, 0
  store i64* %84, i64** %83, align 8
  %85 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %82, i32 0, i32 1
  %86 = extractvalue { i64*, i32 } %81, 1
  store i32 %86, i32* %85, align 8
  %87 = bitcast %"struct.std::_Bit_iterator"* %11 to { i64*, i32 }*
  %88 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %87, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call { i64*, i32 } @_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_(%"struct.std::_Bit_iterator"* dereferenceable(16) %10, i64* %89, i32 %91)
  %93 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %94 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %93, i32 0, i32 0
  %95 = extractvalue { i64*, i32 } %92, 0
  store i64* %95, i64** %94, align 8
  %96 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %93, i32 0, i32 1
  %97 = extractvalue { i64*, i32 } %92, 1
  store i32 %97, i32* %96, align 8
  %98 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %99 = load { i64*, i32 }, { i64*, i32 }* %98, align 8
  ret { i64*, i32 } %99
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { i64*, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(i64*, i32) #1 comdat {
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64*, i32 }*
  %6 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 0
  store i64* %0, i64** %6, align 8
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %7, align 8
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %3 to i8*
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64*, i32 }*
  %11 = load { i64*, i32 }, { i64*, i32 }* %10, align 8
  ret { i64*, i32 } %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { i64*, i32 } @_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_(%"struct.std::_Bit_iterator"* dereferenceable(16), i64*, i32) #1 comdat {
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator"*, align 8
  %7 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64*, i32 }*
  %8 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %7, i32 0, i32 0
  store i64* %1, i64** %8, align 8
  %9 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %7, i32 0, i32 1
  store i32 %2, i32* %9, align 8
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %6, align 8
  %10 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  %11 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64*, i32 }*
  %13 = load { i64*, i32 }, { i64*, i32 }* %12, align 8
  ret { i64*, i32 } %13
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64*, i32, i64*, i32, i64*, i32) #0 comdat {
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  %10 = alloca %"struct.std::_Bit_iterator", align 8
  %11 = alloca i8, align 1
  %12 = alloca %"struct.std::_Bit_const_iterator", align 8
  %13 = alloca %"struct.std::_Bit_const_iterator", align 8
  %14 = alloca %"struct.std::_Bit_iterator", align 8
  %15 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %16 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %15, i32 0, i32 0
  store i64* %0, i64** %16, align 8
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %15, i32 0, i32 1
  store i32 %1, i32* %17, align 8
  %18 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %19 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %18, i32 0, i32 0
  store i64* %2, i64** %19, align 8
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %18, i32 0, i32 1
  store i32 %3, i32* %20, align 8
  %21 = bitcast %"struct.std::_Bit_iterator"* %10 to { i64*, i32 }*
  %22 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %21, i32 0, i32 0
  store i64* %4, i64** %22, align 8
  %23 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %21, i32 0, i32 1
  store i32 %5, i32* %23, align 8
  store i8 0, i8* %11, align 1
  %24 = bitcast %"struct.std::_Bit_const_iterator"* %12 to i8*
  %25 = bitcast %"struct.std::_Bit_const_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  %26 = bitcast %"struct.std::_Bit_const_iterator"* %13 to i8*
  %27 = bitcast %"struct.std::_Bit_const_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = bitcast %"struct.std::_Bit_iterator"* %14 to i8*
  %29 = bitcast %"struct.std::_Bit_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = bitcast %"struct.std::_Bit_const_iterator"* %12 to { i64*, i32 }*
  %31 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %30, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = bitcast %"struct.std::_Bit_const_iterator"* %13 to { i64*, i32 }*
  %36 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %35, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %"struct.std::_Bit_iterator"* %14 to { i64*, i32 }*
  %41 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call { i64*, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(i64* %32, i32 %34, i64* %37, i32 %39, i64* %42, i32 %44)
  %46 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %47 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %46, i32 0, i32 0
  %48 = extractvalue { i64*, i32 } %45, 0
  store i64* %48, i64** %47, align 8
  %49 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %46, i32 0, i32 1
  %50 = extractvalue { i64*, i32 } %45, 1
  store i32 %50, i32* %49, align 8
  %51 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %52 = load { i64*, i32 }, { i64*, i32 }* %51, align 8
  ret { i64*, i32 } %52
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { i64*, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(i64*, i32) #1 comdat {
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64*, i32 }*
  %6 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 0
  store i64* %0, i64** %6, align 8
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %7, align 8
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %3 to i8*
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64*, i32 }*
  %11 = load { i64*, i32 }, { i64*, i32 }* %10, align 8
  ret { i64*, i32 } %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { i64*, i32 } @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_(i64*, i32) #1 comdat {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64*, i32 }*
  %6 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 0
  store i64* %0, i64** %6, align 8
  %7 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %7, align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %9 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64*, i32 }*
  %11 = load { i64*, i32 }, { i64*, i32 }* %10, align 8
  ret { i64*, i32 } %11
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(i64*, i32, i64*, i32, i64*, i32) #0 comdat align 2 {
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  %10 = alloca %"struct.std::_Bit_iterator", align 8
  %11 = alloca i64, align 8
  %12 = alloca %"struct.std::_Bit_reference", align 8
  %13 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64*, i32 }*
  %14 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %13, i32 0, i32 0
  store i64* %0, i64** %14, align 8
  %15 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %13, i32 0, i32 1
  store i32 %1, i32* %15, align 8
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %9 to { i64*, i32 }*
  %17 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 0
  store i64* %2, i64** %17, align 8
  %18 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %16, i32 0, i32 1
  store i32 %3, i32* %18, align 8
  %19 = bitcast %"struct.std::_Bit_iterator"* %10 to { i64*, i32 }*
  %20 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %19, i32 0, i32 0
  store i64* %4, i64** %20, align 8
  %21 = getelementptr inbounds { i64*, i32 }, { i64*, i32 }* %19, i32 0, i32 1
  store i32 %5, i32* %21, align 8
  %22 = bitcast %"struct.std::_Bit_const_iterator"* %9 to %"struct.std::_Bit_iterator_base"*
  %23 = bitcast %"struct.std::_Bit_const_iterator"* %8 to %"struct.std::_Bit_iterator_base"*
  %24 = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* dereferenceable(16) %22, %"struct.std::_Bit_iterator_base"* dereferenceable(16) %23)
  store i64 %24, i64* %11, align 8
  br label %25

; <label>:25:                                     ; preds = %39, %6
  %26 = load i64, i64* %11, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %25
  %29 = call zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(%"struct.std::_Bit_const_iterator"* %8)
  %30 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %10)
  %31 = bitcast %"struct.std::_Bit_reference"* %12 to { i64*, i64 }*
  %32 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64*, i64 } %30, 0
  store i64* %33, i64** %32, align 8
  %34 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64*, i64 } %30, 1
  store i64 %35, i64* %34, align 8
  %36 = call dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %12, i1 zeroext %29)
  %37 = call dereferenceable(16) %"struct.std::_Bit_const_iterator"* @_ZNSt19_Bit_const_iteratorppEv(%"struct.std::_Bit_const_iterator"* %8)
  %38 = call dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %10)
  br label %39

; <label>:39:                                     ; preds = %28
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %11, align 8
  br label %25

; <label>:42:                                     ; preds = %25
  %43 = bitcast %"struct.std::_Bit_iterator"* %7 to i8*
  %44 = bitcast %"struct.std::_Bit_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64*, i32 }*
  %46 = load { i64*, i32 }, { i64*, i32 }* %45, align 8
  ret { i64*, i32 } %46
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(%"struct.std::_Bit_const_iterator"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %3 = alloca %"struct.std::_Bit_reference", align 8
  store %"struct.std::_Bit_const_iterator"* %0, %"struct.std::_Bit_const_iterator"** %2, align 8
  %4 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %2, align 8
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %6 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  call void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %3, i64* %7, i64 %12)
  %13 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %3)
  ret i1 %13
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %3, align 8
  %4 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %3, align 8
  %5 = bitcast %"struct.std::_Bit_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %6 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  call void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %2, i64* %7, i64 %12)
  %13 = bitcast %"struct.std::_Bit_reference"* %2 to { i64*, i64 }*
  %14 = load { i64*, i64 }, { i64*, i64 }* %13, align 8
  ret { i64*, i64 } %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"*, i1 zeroext) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Bit_reference"*, align 8
  %4 = alloca i8, align 1
  store %"struct.std::_Bit_reference"* %0, %"struct.std::_Bit_reference"** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load %"struct.std::_Bit_reference"*, %"struct.std::_Bit_reference"** %3, align 8
  %7 = load i8, i8* %4, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %6, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %6, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %13, align 8
  %15 = or i64 %14, %11
  store i64 %15, i64* %13, align 8
  br label %24

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %18, -1
  %20 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %6, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, %19
  store i64 %23, i64* %21, align 8
  br label %24

; <label>:24:                                     ; preds = %16, %9
  ret %"struct.std::_Bit_reference"* %6
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::_Bit_const_iterator"* @_ZNSt19_Bit_const_iteratorppEv(%"struct.std::_Bit_const_iterator"*) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  store %"struct.std::_Bit_const_iterator"* %0, %"struct.std::_Bit_const_iterator"** %2, align 8
  %3 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %2, align 8
  %4 = bitcast %"struct.std::_Bit_const_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %4)
  ret %"struct.std::_Bit_const_iterator"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %0, %"struct.std::_Bit_iterator"** %2, align 8
  %3 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %2, align 8
  %4 = bitcast %"struct.std::_Bit_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %4)
  ret %"struct.std::_Bit_iterator"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"*, i64*, i64) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_Bit_reference"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Bit_reference"* %0, %"struct.std::_Bit_reference"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Bit_reference"*, %"struct.std::_Bit_reference"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %7, i32 0, i32 0
  %9 = load i64*, i64** %5, align 8
  store i64* %9, i64** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %7, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_reference"*, align 8
  store %"struct.std::_Bit_reference"* %0, %"struct.std::_Bit_reference"** %2, align 8
  %3 = load %"struct.std::_Bit_reference"*, %"struct.std::_Bit_reference"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Bit_reference", %"struct.std::_Bit_reference"* %3, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = and i64 %6, %8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  ret i1 %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %0, %"struct.std::_Bit_iterator_base"** %2, align 8
  %3 = load %"struct.std::_Bit_iterator_base"*, %"struct.std::_Bit_iterator_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, i32* %4, align 8
  %7 = icmp eq i32 %5, 63
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %12, i64** %10, align 8
  br label %13

; <label>:13:                                     ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_iterator"* dereferenceable(16)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %4 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_const_iterator"* %0, %"struct.std::_Bit_const_iterator"** %3, align 8
  store %"struct.std::_Bit_iterator"* %1, %"struct.std::_Bit_iterator"** %4, align 8
  %5 = load %"struct.std::_Bit_const_iterator"*, %"struct.std::_Bit_const_iterator"** %3, align 8
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %5 to %"struct.std::_Bit_iterator_base"*
  %7 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %4, align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %7 to %"struct.std::_Bit_iterator_base"*
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load %"struct.std::_Bit_iterator"*, %"struct.std::_Bit_iterator"** %4, align 8
  %12 = bitcast %"struct.std::_Bit_iterator"* %11 to %"struct.std::_Bit_iterator_base"*
  %13 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %6, i64* %10, i32 %14)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_(%"class.std::vector.7"*, %"class.std::vector.7"*) #0 comdat align 2 {
  %3 = alloca %"class.std::vector.7"*, align 8
  %4 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %3, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %4, align 8
  br label %5

; <label>:5:                                      ; preds = %12, %2
  %6 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %7 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %8 = icmp ne %"class.std::vector.7"* %6, %7
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %5
  %10 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %11 = call %"class.std::vector.7"* @_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_(%"class.std::vector.7"* dereferenceable(40) %10)
  call void @_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_(%"class.std::vector.7"* %11)
  br label %12

; <label>:12:                                     ; preds = %9
  %13 = load %"class.std::vector.7"*, %"class.std::vector.7"** %3, align 8
  %14 = getelementptr inbounds %"class.std::vector.7", %"class.std::vector.7"* %13, i32 1
  store %"class.std::vector.7"* %14, %"class.std::vector.7"** %3, align 8
  br label %5

; <label>:15:                                     ; preds = %5
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_(%"class.std::vector.7"*) #0 comdat {
  %2 = alloca %"class.std::vector.7"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %2, align 8
  %3 = load %"class.std::vector.7"*, %"class.std::vector.7"** %2, align 8
  call void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.7"* %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base.24"*, %"class.std::vector.7"*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.24"*, align 8
  %5 = alloca %"class.std::vector.7"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.24"* %0, %"struct.std::_Vector_base.24"** %4, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.24"*, %"struct.std::_Vector_base.24"** %4, align 8
  %8 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  %9 = icmp ne %"class.std::vector.7"* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.24", %"struct.std::_Vector_base.24"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >, std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl"* %11 to %"class.std::allocator.25"*
  %13 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E10deallocateERS4_PS3_m(%"class.std::allocator.25"* dereferenceable(1) %12, %"class.std::vector.7"* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIbSaIbEEES3_E10deallocateERS4_PS3_m(%"class.std::allocator.25"* dereferenceable(1), %"class.std::vector.7"*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.25"*, align 8
  %5 = alloca %"class.std::vector.7"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %4, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  %8 = bitcast %"class.std::allocator.25"* %7 to %"class.__gnu_cxx::new_allocator.26"*
  %9 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.26"* %8, %"class.std::vector.7"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.26"*, %"class.std::vector.7"*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  %5 = alloca %"class.std::vector.7"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  %8 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  %9 = bitcast %"class.std::vector.7"* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E(%"class.std::vector.7"*, %"class.std::vector.7"*, %"class.std::allocator.25"* dereferenceable(1)) #0 comdat {
  %4 = alloca %"class.std::vector.7"*, align 8
  %5 = alloca %"class.std::vector.7"*, align 8
  %6 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %4, align 8
  store %"class.std::vector.7"* %1, %"class.std::vector.7"** %5, align 8
  store %"class.std::allocator.25"* %2, %"class.std::allocator.25"** %6, align 8
  %7 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %8 = load %"class.std::vector.7"*, %"class.std::vector.7"** %5, align 8
  call void @_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_(%"class.std::vector.7"* %7, %"class.std::vector.7"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2Ev(%"struct.std::_Vector_base"*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %0, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"** %2, align 8
  %5 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"** %2, align 8
  %6 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %5 to %"class.std::allocator"*
  call void @_ZNSaISt4pairIjjEEC2Ev(%"class.std::allocator"* %6) #12
  %7 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %5 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  invoke void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %7)
          to label %8 unwind label %9

; <label>:8:                                      ; preds = %1
  ret void

; <label>:9:                                      ; preds = %1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  %13 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %5 to %"class.std::allocator"*
  call void @_ZNSaISt4pairIjjEED2Ev(%"class.std::allocator"* %13) #12
  br label %14

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIjjEEC2Ev(%"class.std::allocator"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev(%"class.__gnu_cxx::new_allocator"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIjjEED2Ev(%"class.std::allocator"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev(%"class.__gnu_cxx::new_allocator"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev(%"class.__gnu_cxx::new_allocator"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev(%"class.__gnu_cxx::new_allocator"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E(%"struct.std::pair"*, %"struct.std::pair"*, %"class.std::allocator"* dereferenceable(1)) #0 comdat {
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  call void @_ZSt8_DestroyIPSt4pairIjjEEvT_S3_(%"struct.std::pair"* %7, %"struct.std::pair"* %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EED2Ev(%"struct.std::_Vector_base"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %14 to %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %"struct.std::pair"*, %"struct.std::pair"** %16, align 8
  %18 = ptrtoint %"struct.std::pair"* %13 to i64
  %19 = ptrtoint %"struct.std::pair"* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  invoke void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %5, %"struct.std::pair"* %9, i64 %21)
          to label %22 unwind label %24

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %23) #12
  ret void

; <label>:24:                                     ; preds = %1
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %28) #12
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIjjEEvT_S3_(%"struct.std::pair"*, %"struct.std::pair"*) #0 comdat {
  %3 = alloca %"struct.std::pair"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %3, align 8
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIjjEEEvT_S5_(%"struct.std::pair"* %5, %"struct.std::pair"* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIjjEEEvT_S5_(%"struct.std::pair"*, %"struct.std::pair"*) #1 comdat align 2 {
  %3 = alloca %"struct.std::pair"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"*, %"struct.std::pair"*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %9 = icmp ne %"struct.std::pair"* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIjjEES2_E10deallocateERS3_PS2_m(%"class.std::allocator"* dereferenceable(1) %12, %"struct.std::pair"* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %0, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt4pairIjjEED2Ev(%"class.std::allocator"* %4) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIjjEES2_E10deallocateERS3_PS2_m(%"class.std::allocator"* dereferenceable(1), %"struct.std::pair"*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %8, %"struct.std::pair"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"*, %"struct.std::pair"*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %9 = bitcast %"struct.std::pair"* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_swap_dataERS4_(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* dereferenceable(24)) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, align 8
  %4 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, align 8
  %5 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", align 8
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %3, align 8
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %1, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  %6 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %3, align 8
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %5)
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_copy_dataERKS4_(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %5, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* dereferenceable(24) %6)
  %7 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_copy_dataERKS4_(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %6, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* dereferenceable(24) %7)
  %8 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  call void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_copy_dataERKS4_(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %8, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* dereferenceable(24) %5)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIjjEES2_E10_S_on_swapERS3_S5_(%"class.std::allocator"* dereferenceable(1), %"class.std::allocator"* dereferenceable(1)) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSt12__alloc_swapISaISt4pairIjjEELb1EE8_S_do_itERS2_S4_(%"class.std::allocator"* dereferenceable(1) %5, %"class.std::allocator"* dereferenceable(1) %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %3, i32 0, i32 0
  store %"struct.std::pair"* null, %"struct.std::pair"** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %3, i32 0, i32 1
  store %"struct.std::pair"* null, %"struct.std::pair"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %3, i32 0, i32 2
  store %"struct.std::pair"* null, %"struct.std::pair"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_data12_M_copy_dataERKS4_(%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* dereferenceable(24)) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, align 8
  %4 = alloca %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %3, align 8
  store %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %1, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  %5 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %3, align 8
  %6 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %6, i32 0, i32 0
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %5, i32 0, i32 0
  store %"struct.std::pair"* %8, %"struct.std::pair"** %9, align 8
  %10 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %10, i32 0, i32 1
  %12 = load %"struct.std::pair"*, %"struct.std::pair"** %11, align 8
  %13 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %5, i32 0, i32 1
  store %"struct.std::pair"* %12, %"struct.std::pair"** %13, align 8
  %14 = load %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"** %4, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %14, i32 0, i32 2
  %16 = load %"struct.std::pair"*, %"struct.std::pair"** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data", %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int> > >::_Vector_impl_data"* %5, i32 0, i32 2
  store %"struct.std::pair"* %16, %"struct.std::pair"** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12__alloc_swapISaISt4pairIjjEELb1EE8_S_do_itERS2_S4_(%"class.std::allocator"* dereferenceable(1), %"class.std::allocator"* dereferenceable(1)) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi1ELi3EEE6reinitERK12TableIndicesILi2EE(%class.TableBase.51*, %class.TableIndices* dereferenceable(8)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.TableBase.51*, align 8
  %4 = alloca %class.TableIndices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.TableIndices, align 4
  %7 = alloca i8*
  %8 = alloca i32
  store %class.TableBase.51* %0, %class.TableBase.51** %3, align 8
  store %class.TableIndices* %1, %class.TableIndices** %4, align 8
  %9 = load %class.TableBase.51*, %class.TableBase.51** %3, align 8
  %10 = load %class.TableIndices*, %class.TableIndices** %4, align 8
  %11 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 3
  %12 = bitcast %class.TableIndices* %11 to i8*
  %13 = bitcast %class.TableIndices* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 4, i1 false)
  %14 = call i32 @_ZNK9TableBaseILi2E6TensorILi1ELi3EEE10n_elementsEv(%class.TableBase.51* %9)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 1
  %19 = load %class.Tensor*, %class.Tensor** %18, align 8
  %20 = icmp ne %class.Tensor* %19, null
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 1
  %23 = load %class.Tensor*, %class.Tensor** %22, align 8
  %24 = icmp eq %class.Tensor* %23, null
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = bitcast %class.Tensor* %23 to i8*
  call void @_ZdaPv(i8* %26) #14
  br label %27

; <label>:27:                                     ; preds = %25, %21
  br label %28

; <label>:28:                                     ; preds = %27, %17
  %29 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 1
  store %class.Tensor* null, %class.Tensor** %29, align 8
  %30 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 2
  store i32 0, i32* %30, align 8
  call void @_ZN12TableIndicesILi2EEC2Ev(%class.TableIndices* %6)
  %31 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 3
  %32 = bitcast %class.TableIndices* %31 to i8*
  %33 = bitcast %class.TableIndices* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 4, i1 false)
  br label %77

; <label>:34:                                     ; preds = %2
  %35 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %76

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 1
  %41 = load %class.Tensor*, %class.Tensor** %40, align 8
  %42 = icmp ne %class.Tensor* %41, null
  br i1 %42, label %43, label %50

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 1
  %45 = load %class.Tensor*, %class.Tensor** %44, align 8
  %46 = icmp eq %class.Tensor* %45, null
  br i1 %46, label %49, label %47

; <label>:47:                                     ; preds = %43
  %48 = bitcast %class.Tensor* %45 to i8*
  call void @_ZdaPv(i8* %48) #14
  br label %49

; <label>:49:                                     ; preds = %47, %43
  br label %50

; <label>:50:                                     ; preds = %49, %39
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %55, i64 24)
  %57 = extractvalue { i64, i1 } %56, 1
  %58 = extractvalue { i64, i1 } %56, 0
  %59 = select i1 %57, i64 -1, i64 %58
  %60 = call i8* @_Znam(i64 %59) #13
  %61 = bitcast i8* %60 to %class.Tensor*
  %62 = icmp eq i64 %55, 0
  br i1 %62, label %70, label %63

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds %class.Tensor, %class.Tensor* %61, i64 %55
  br label %65

; <label>:65:                                     ; preds = %67, %63
  %66 = phi %class.Tensor* [ %61, %63 ], [ %68, %67 ]
  invoke void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %66, i1 zeroext true)
          to label %67 unwind label %72

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %class.Tensor, %class.Tensor* %66, i64 1
  %69 = icmp eq %class.Tensor* %68, %64
  br i1 %69, label %70, label %65

; <label>:70:                                     ; preds = %67, %50
  %71 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %9, i32 0, i32 1
  store %class.Tensor* %61, %class.Tensor** %71, align 8
  br label %76

; <label>:72:                                     ; preds = %65
  %73 = landingpad { i8*, i32 }
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  store i8* %74, i8** %7, align 8
  %75 = extractvalue { i8*, i32 } %73, 1
  store i32 %75, i32* %8, align 4
  call void @_ZdaPv(i8* %60) #14
  br label %78

; <label>:76:                                     ; preds = %70, %34
  call void @_ZN9TableBaseILi2E6TensorILi1ELi3EEE12reset_valuesEv(%class.TableBase.51* %9)
  br label %77

; <label>:77:                                     ; preds = %76, %28
  ret void

; <label>:78:                                     ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = insertvalue { i8*, i32 } undef, i8* %79, 0
  %82 = insertvalue { i8*, i32 } %81, i32 %80, 1
  resume { i8*, i32 } %82
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12TableIndicesILi2EEC2Ejj(%class.TableIndices*, i32, i32) unnamed_addr #1 comdat align 2 {
  %4 = alloca %class.TableIndices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.TableIndices* %0, %class.TableIndices** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.TableIndices*, %class.TableIndices** %4, align 8
  %8 = bitcast %class.TableIndices* %7 to %class.TableIndicesBase*
  %9 = load i32, i32* %5, align 4
  %10 = bitcast %class.TableIndices* %7 to %class.TableIndicesBase*
  %11 = getelementptr inbounds %class.TableIndicesBase, %class.TableIndicesBase* %10, i32 0, i32 0
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = bitcast %class.TableIndices* %7 to %class.TableIndicesBase*
  %15 = getelementptr inbounds %class.TableIndicesBase, %class.TableIndicesBase* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %13, i32* %16, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNK9TableBaseILi2E6TensorILi1ELi3EEE10n_elementsEv(%class.TableBase.51*) #0 comdat align 2 {
  %2 = alloca %class.TableBase.51*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.TableBase.51* %0, %class.TableBase.51** %2, align 8
  %5 = load %class.TableBase.51*, %class.TableBase.51** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %5, i32 0, i32 3
  %11 = bitcast %class.TableIndices* %10 to %class.TableIndicesBase*
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi1ELi3EEE12reset_valuesEv(%class.TableBase.51*) #0 comdat align 2 {
  %2 = alloca %class.TableBase.51*, align 8
  %3 = alloca %class.Tensor, align 8
  store %class.TableBase.51* %0, %class.TableBase.51** %2, align 8
  %4 = load %class.TableBase.51*, %class.TableBase.51** %2, align 8
  %5 = call i32 @_ZNK9TableBaseILi2E6TensorILi1ELi3EEE10n_elementsEv(%class.TableBase.51* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %4, i32 0, i32 1
  %9 = load %class.Tensor*, %class.Tensor** %8, align 8
  %10 = call i32 @_ZNK9TableBaseILi2E6TensorILi1ELi3EEE10n_elementsEv(%class.TableBase.51* %4)
  call void @_ZN6TensorILi1ELi3EEC2Eb(%class.Tensor* %3, i1 zeroext true)
  %11 = call %class.Tensor* @_ZSt6fill_nIP6TensorILi1ELi3EEjS1_ET_S3_T0_RKT1_(%class.Tensor* %9, i32 %10, %class.Tensor* dereferenceable(24) %3)
  br label %12

; <label>:12:                                     ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase*, i32) #1 comdat align 2 {
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

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZSt6fill_nIP6TensorILi1ELi3EEjS1_ET_S3_T0_RKT1_(%class.Tensor*, i32, %class.Tensor* dereferenceable(24)) #0 comdat {
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Tensor*, align 8
  store %class.Tensor* %0, %class.Tensor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %class.Tensor* %2, %class.Tensor** %6, align 8
  %7 = load %class.Tensor*, %class.Tensor** %4, align 8
  %8 = call %class.Tensor* @_ZSt12__niter_baseIP6TensorILi1ELi3EEET_S3_(%class.Tensor* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load %class.Tensor*, %class.Tensor** %6, align 8
  %11 = call %class.Tensor* @_ZSt10__fill_n_aIP6TensorILi1ELi3EEjS1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES6_T0_RKS5_(%class.Tensor* %8, i32 %9, %class.Tensor* dereferenceable(24) %10)
  %12 = call %class.Tensor* @_ZSt12__niter_wrapIP6TensorILi1ELi3EEET_RKS3_S3_(%class.Tensor** dereferenceable(8) %4, %class.Tensor* %11)
  ret %class.Tensor* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor* @_ZSt12__niter_wrapIP6TensorILi1ELi3EEET_RKS3_S3_(%class.Tensor** dereferenceable(8), %class.Tensor*) #1 comdat {
  %3 = alloca %class.Tensor**, align 8
  %4 = alloca %class.Tensor*, align 8
  store %class.Tensor** %0, %class.Tensor*** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %5 = load %class.Tensor*, %class.Tensor** %4, align 8
  ret %class.Tensor* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZSt10__fill_n_aIP6TensorILi1ELi3EEjS1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES6_T0_RKS5_(%class.Tensor*, i32, %class.Tensor* dereferenceable(24)) #0 comdat {
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Tensor*, align 8
  %7 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %class.Tensor* %2, %class.Tensor** %6, align 8
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %16, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %9
  %13 = load %class.Tensor*, %class.Tensor** %6, align 8
  %14 = load %class.Tensor*, %class.Tensor** %4, align 8
  %15 = call dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEaSERKS0_(%class.Tensor* %14, %class.Tensor* dereferenceable(24) %13)
  br label %16

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = load %class.Tensor*, %class.Tensor** %4, align 8
  %20 = getelementptr inbounds %class.Tensor, %class.Tensor* %19, i32 1
  store %class.Tensor* %20, %class.Tensor** %4, align 8
  br label %9

; <label>:21:                                     ; preds = %9
  %22 = load %class.Tensor*, %class.Tensor** %4, align 8
  ret %class.Tensor* %22
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor* @_ZSt12__niter_baseIP6TensorILi1ELi3EEET_S3_(%class.Tensor*) #1 comdat {
  %2 = alloca %class.Tensor*, align 8
  store %class.Tensor* %0, %class.Tensor** %2, align 8
  %3 = load %class.Tensor*, %class.Tensor** %2, align 8
  ret %class.Tensor* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi2ELi3EEE6reinitERK12TableIndicesILi2EE(%class.TableBase.55*, %class.TableIndices* dereferenceable(8)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.TableBase.55*, align 8
  %4 = alloca %class.TableIndices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.TableIndices, align 4
  %7 = alloca i8*
  %8 = alloca i32
  store %class.TableBase.55* %0, %class.TableBase.55** %3, align 8
  store %class.TableIndices* %1, %class.TableIndices** %4, align 8
  %9 = load %class.TableBase.55*, %class.TableBase.55** %3, align 8
  %10 = load %class.TableIndices*, %class.TableIndices** %4, align 8
  %11 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 3
  %12 = bitcast %class.TableIndices* %11 to i8*
  %13 = bitcast %class.TableIndices* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 4, i1 false)
  %14 = call i32 @_ZNK9TableBaseILi2E6TensorILi2ELi3EEE10n_elementsEv(%class.TableBase.55* %9)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 1
  %19 = load %class.Tensor.33*, %class.Tensor.33** %18, align 8
  %20 = icmp ne %class.Tensor.33* %19, null
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 1
  %23 = load %class.Tensor.33*, %class.Tensor.33** %22, align 8
  %24 = icmp eq %class.Tensor.33* %23, null
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = bitcast %class.Tensor.33* %23 to i8*
  call void @_ZdaPv(i8* %26) #14
  br label %27

; <label>:27:                                     ; preds = %25, %21
  br label %28

; <label>:28:                                     ; preds = %27, %17
  %29 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 1
  store %class.Tensor.33* null, %class.Tensor.33** %29, align 8
  %30 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 2
  store i32 0, i32* %30, align 8
  call void @_ZN12TableIndicesILi2EEC2Ev(%class.TableIndices* %6)
  %31 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 3
  %32 = bitcast %class.TableIndices* %31 to i8*
  %33 = bitcast %class.TableIndices* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 4, i1 false)
  br label %77

; <label>:34:                                     ; preds = %2
  %35 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %76

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 1
  %41 = load %class.Tensor.33*, %class.Tensor.33** %40, align 8
  %42 = icmp ne %class.Tensor.33* %41, null
  br i1 %42, label %43, label %50

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 1
  %45 = load %class.Tensor.33*, %class.Tensor.33** %44, align 8
  %46 = icmp eq %class.Tensor.33* %45, null
  br i1 %46, label %49, label %47

; <label>:47:                                     ; preds = %43
  %48 = bitcast %class.Tensor.33* %45 to i8*
  call void @_ZdaPv(i8* %48) #14
  br label %49

; <label>:49:                                     ; preds = %47, %43
  br label %50

; <label>:50:                                     ; preds = %49, %39
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %55, i64 72)
  %57 = extractvalue { i64, i1 } %56, 1
  %58 = extractvalue { i64, i1 } %56, 0
  %59 = select i1 %57, i64 -1, i64 %58
  %60 = call i8* @_Znam(i64 %59) #13
  %61 = bitcast i8* %60 to %class.Tensor.33*
  %62 = icmp eq i64 %55, 0
  br i1 %62, label %70, label %63

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %61, i64 %55
  br label %65

; <label>:65:                                     ; preds = %67, %63
  %66 = phi %class.Tensor.33* [ %61, %63 ], [ %68, %67 ]
  invoke void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %66)
          to label %67 unwind label %72

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %66, i64 1
  %69 = icmp eq %class.Tensor.33* %68, %64
  br i1 %69, label %70, label %65

; <label>:70:                                     ; preds = %67, %50
  %71 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %9, i32 0, i32 1
  store %class.Tensor.33* %61, %class.Tensor.33** %71, align 8
  br label %76

; <label>:72:                                     ; preds = %65
  %73 = landingpad { i8*, i32 }
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  store i8* %74, i8** %7, align 8
  %75 = extractvalue { i8*, i32 } %73, 1
  store i32 %75, i32* %8, align 4
  call void @_ZdaPv(i8* %60) #14
  br label %78

; <label>:76:                                     ; preds = %70, %34
  call void @_ZN9TableBaseILi2E6TensorILi2ELi3EEE12reset_valuesEv(%class.TableBase.55* %9)
  br label %77

; <label>:77:                                     ; preds = %76, %28
  ret void

; <label>:78:                                     ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = insertvalue { i8*, i32 } undef, i8* %79, 0
  %82 = insertvalue { i8*, i32 } %81, i32 %80, 1
  resume { i8*, i32 } %82
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK9TableBaseILi2E6TensorILi2ELi3EEE10n_elementsEv(%class.TableBase.55*) #1 comdat align 2 {
  %2 = alloca %class.TableBase.55*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.TableBase.55* %0, %class.TableBase.55** %2, align 8
  %5 = load %class.TableBase.55*, %class.TableBase.55** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %5, i32 0, i32 3
  %11 = bitcast %class.TableIndices* %10 to %class.TableIndicesBase*
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2E6TensorILi2ELi3EEE12reset_valuesEv(%class.TableBase.55*) #0 comdat align 2 {
  %2 = alloca %class.TableBase.55*, align 8
  %3 = alloca %class.Tensor.33, align 8
  store %class.TableBase.55* %0, %class.TableBase.55** %2, align 8
  %4 = load %class.TableBase.55*, %class.TableBase.55** %2, align 8
  %5 = call i32 @_ZNK9TableBaseILi2E6TensorILi2ELi3EEE10n_elementsEv(%class.TableBase.55* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %4, i32 0, i32 1
  %9 = load %class.Tensor.33*, %class.Tensor.33** %8, align 8
  %10 = call i32 @_ZNK9TableBaseILi2E6TensorILi2ELi3EEE10n_elementsEv(%class.TableBase.55* %4)
  call void @_ZN6TensorILi2ELi3EEC2Ev(%class.Tensor.33* %3)
  %11 = call %class.Tensor.33* @_ZSt6fill_nIP6TensorILi2ELi3EEjS1_ET_S3_T0_RKT1_(%class.Tensor.33* %9, i32 %10, %class.Tensor.33* dereferenceable(72) %3)
  br label %12

; <label>:12:                                     ; preds = %7, %1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZSt6fill_nIP6TensorILi2ELi3EEjS1_ET_S3_T0_RKT1_(%class.Tensor.33*, i32, %class.Tensor.33* dereferenceable(72)) #0 comdat {
  %4 = alloca %class.Tensor.33*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %4, align 8
  store i32 %1, i32* %5, align 4
  store %class.Tensor.33* %2, %class.Tensor.33** %6, align 8
  %7 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %8 = call %class.Tensor.33* @_ZSt12__niter_baseIP6TensorILi2ELi3EEET_S3_(%class.Tensor.33* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  %11 = call %class.Tensor.33* @_ZSt10__fill_n_aIP6TensorILi2ELi3EEjS1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES6_T0_RKS5_(%class.Tensor.33* %8, i32 %9, %class.Tensor.33* dereferenceable(72) %10)
  %12 = call %class.Tensor.33* @_ZSt12__niter_wrapIP6TensorILi2ELi3EEET_RKS3_S3_(%class.Tensor.33** dereferenceable(8) %4, %class.Tensor.33* %11)
  ret %class.Tensor.33* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor.33* @_ZSt12__niter_wrapIP6TensorILi2ELi3EEET_RKS3_S3_(%class.Tensor.33** dereferenceable(8), %class.Tensor.33*) #1 comdat {
  %3 = alloca %class.Tensor.33**, align 8
  %4 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33** %0, %class.Tensor.33*** %3, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %4, align 8
  %5 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  ret %class.Tensor.33* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZSt10__fill_n_aIP6TensorILi2ELi3EEjS1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES6_T0_RKS5_(%class.Tensor.33*, i32, %class.Tensor.33* dereferenceable(72)) #0 comdat {
  %4 = alloca %class.Tensor.33*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Tensor.33*, align 8
  %7 = alloca i32, align 4
  store %class.Tensor.33* %0, %class.Tensor.33** %4, align 8
  store i32 %1, i32* %5, align 4
  store %class.Tensor.33* %2, %class.Tensor.33** %6, align 8
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %16, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %9
  %13 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  %14 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %15 = call dereferenceable(72) %class.Tensor.33* @_ZN6TensorILi2ELi3EEaSERKS0_(%class.Tensor.33* %14, %class.Tensor.33* dereferenceable(72) %13)
  br label %16

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %20 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %19, i32 1
  store %class.Tensor.33* %20, %class.Tensor.33** %4, align 8
  br label %9

; <label>:21:                                     ; preds = %9
  %22 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  ret %class.Tensor.33* %22
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor.33* @_ZSt12__niter_baseIP6TensorILi2ELi3EEET_S3_(%class.Tensor.33*) #1 comdat {
  %2 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %2, align 8
  %3 = load %class.Tensor.33*, %class.Tensor.33** %2, align 8
  ret %class.Tensor.33* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK5TableILi2E6TensorILi1ELi3EEE6n_colsEv(%class.Table.50*) #1 comdat align 2 {
  %2 = alloca %class.Table.50*, align 8
  store %class.Table.50* %0, %class.Table.50** %2, align 8
  %3 = load %class.Table.50*, %class.Table.50** %2, align 8
  %4 = bitcast %class.Table.50* %3 to %class.TableBase.51*
  %5 = getelementptr inbounds %class.TableBase.51, %class.TableBase.51* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8internal18TableBaseAccessors8AccessorILi2E6TensorILi1ELi3EELb0ELj1EEC2ERK9TableBaseILi2ES3_EPS3_(%"class.internal::TableBaseAccessors::Accessor"*, %class.TableBase.51* dereferenceable(48), %class.Tensor*) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"class.internal::TableBaseAccessors::Accessor"*, align 8
  %5 = alloca %class.TableBase.51*, align 8
  %6 = alloca %class.Tensor*, align 8
  store %"class.internal::TableBaseAccessors::Accessor"* %0, %"class.internal::TableBaseAccessors::Accessor"** %4, align 8
  store %class.TableBase.51* %1, %class.TableBase.51** %5, align 8
  store %class.Tensor* %2, %class.Tensor** %6, align 8
  %7 = load %"class.internal::TableBaseAccessors::Accessor"*, %"class.internal::TableBaseAccessors::Accessor"** %4, align 8
  %8 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor", %"class.internal::TableBaseAccessors::Accessor"* %7, i32 0, i32 0
  %9 = load %class.TableBase.51*, %class.TableBase.51** %5, align 8
  store %class.TableBase.51* %9, %class.TableBase.51** %8, align 8
  %10 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor", %"class.internal::TableBaseAccessors::Accessor"* %7, i32 0, i32 1
  %11 = load %class.Tensor*, %class.Tensor** %6, align 8
  store %class.Tensor* %11, %class.Tensor** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK5TableILi2E6TensorILi2ELi3EEE6n_colsEv(%class.Table.54*) #1 comdat align 2 {
  %2 = alloca %class.Table.54*, align 8
  store %class.Table.54* %0, %class.Table.54** %2, align 8
  %3 = load %class.Table.54*, %class.Table.54** %2, align 8
  %4 = bitcast %class.Table.54* %3 to %class.TableBase.55*
  %5 = getelementptr inbounds %class.TableBase.55, %class.TableBase.55* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8internal18TableBaseAccessors8AccessorILi2E6TensorILi2ELi3EELb0ELj1EEC2ERK9TableBaseILi2ES3_EPS3_(%"class.internal::TableBaseAccessors::Accessor.58"*, %class.TableBase.55* dereferenceable(48), %class.Tensor.33*) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"class.internal::TableBaseAccessors::Accessor.58"*, align 8
  %5 = alloca %class.TableBase.55*, align 8
  %6 = alloca %class.Tensor.33*, align 8
  store %"class.internal::TableBaseAccessors::Accessor.58"* %0, %"class.internal::TableBaseAccessors::Accessor.58"** %4, align 8
  store %class.TableBase.55* %1, %class.TableBase.55** %5, align 8
  store %class.Tensor.33* %2, %class.Tensor.33** %6, align 8
  %7 = load %"class.internal::TableBaseAccessors::Accessor.58"*, %"class.internal::TableBaseAccessors::Accessor.58"** %4, align 8
  %8 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.58", %"class.internal::TableBaseAccessors::Accessor.58"* %7, i32 0, i32 0
  %9 = load %class.TableBase.55*, %class.TableBase.55** %5, align 8
  store %class.TableBase.55* %9, %class.TableBase.55** %8, align 8
  %10 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.58", %"class.internal::TableBaseAccessors::Accessor.58"* %7, i32 0, i32 1
  %11 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  store %class.Tensor.33* %11, %class.Tensor.33** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEEC2Ev(%"class.__gnu_cxx::new_allocator.62"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %0, %"class.__gnu_cxx::new_allocator.62"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEED2Ev(%"class.__gnu_cxx::new_allocator.62"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %0, %"class.__gnu_cxx::new_allocator.62"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE17_S_check_init_lenEmRKS2_(i64, %"class.std::allocator.61"* dereferenceable(1)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator.61"*, align 8
  %5 = alloca %"class.std::allocator.61", align 1
  %6 = alloca i8*
  %7 = alloca i32
  store i64 %0, i64* %3, align 8
  store %"class.std::allocator.61"* %1, %"class.std::allocator.61"** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %4, align 8
  call void @_ZNSaI6TensorILi1ELi3EEEC2ERKS1_(%"class.std::allocator.61"* %5, %"class.std::allocator.61"* dereferenceable(1) %9) #12
  %10 = invoke i64 @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.61"* dereferenceable(1) %5)
          to label %11 unwind label %14

; <label>:11:                                     ; preds = %2
  %12 = icmp ugt i64 %8, %10
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %5) #12
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %11
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #15
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %6, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %7, align 4
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %5) #12
  br label %20

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %3, align 8
  ret i64 %19

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base.60"*, i64, %"class.std::allocator.61"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base.60"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator.61"*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  store %"struct.std::_Vector_base.60"* %0, %"struct.std::_Vector_base.60"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator.61"* %2, %"class.std::allocator.61"** %6, align 8
  %9 = load %"struct.std::_Vector_base.60"*, %"struct.std::_Vector_base.60"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %6, align 8
  call void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %10, %"class.std::allocator.61"* dereferenceable(1) %11)
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base.60"* %9, i64 %12)
          to label %13 unwind label %14

; <label>:13:                                     ; preds = %3
  ret void

; <label>:14:                                     ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %10) #12
  br label %18

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.59"*, i64, %class.Tensor* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.59"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Tensor*, align 8
  store %"class.std::vector.59"* %0, %"class.std::vector.59"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Tensor* %2, %class.Tensor** %6, align 8
  %7 = load %"class.std::vector.59"*, %"class.std::vector.59"** %4, align 8
  %8 = bitcast %"class.std::vector.59"* %7 to %"struct.std::_Vector_base.60"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %9 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %10, i32 0, i32 0
  %12 = load %class.Tensor*, %class.Tensor** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %class.Tensor*, %class.Tensor** %6, align 8
  %15 = bitcast %"class.std::vector.59"* %7 to %"struct.std::_Vector_base.60"*
  %16 = call dereferenceable(1) %"class.std::allocator.61"* @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.60"* %15)
  %17 = call %class.Tensor* @_ZSt24__uninitialized_fill_n_aIP6TensorILi1ELi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Tensor* %12, i64 %13, %class.Tensor* dereferenceable(24) %14, %"class.std::allocator.61"* dereferenceable(1) %16)
  %18 = bitcast %"class.std::vector.59"* %7 to %"struct.std::_Vector_base.60"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %19 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %20, i32 0, i32 1
  store %class.Tensor* %17, %class.Tensor** %21, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.60"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base.60"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base.60"* %0, %"struct.std::_Vector_base.60"** %2, align 8
  %5 = load %"struct.std::_Vector_base.60"*, %"struct.std::_Vector_base.60"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %class.Tensor*, %class.Tensor** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %class.Tensor*, %class.Tensor** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %14 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %class.Tensor*, %class.Tensor** %16, align 8
  %18 = ptrtoint %class.Tensor* %13 to i64
  %19 = ptrtoint %class.Tensor* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 24
  invoke void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.60"* %5, %class.Tensor* %9, i64 %21)
          to label %22 unwind label %24

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %23) #12
  ret void

; <label>:24:                                     ; preds = %1
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %28) #12
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorI6TensorILi1ELi3EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.61"* dereferenceable(1)) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.61"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %2, align 8
  store i64 384307168202282325, i64* %3, align 8
  %5 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %2, align 8
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E8max_sizeERKS3_(%"class.std::allocator.61"* dereferenceable(1) %5)
  store i64 %6, i64* %4, align 8
  %7 = call dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6TensorILi1ELi3EEEC2ERKS1_(%"class.std::allocator.61"*, %"class.std::allocator.61"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.61"*, align 8
  %4 = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %3, align 8
  store %"class.std::allocator.61"* %1, %"class.std::allocator.61"** %4, align 8
  %5 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %3, align 8
  %6 = bitcast %"class.std::allocator.61"* %5 to %"class.__gnu_cxx::new_allocator.62"*
  %7 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %4, align 8
  %8 = bitcast %"class.std::allocator.61"* %7 to %"class.__gnu_cxx::new_allocator.62"*
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.62"* %6, %"class.__gnu_cxx::new_allocator.62"* dereferenceable(1) %8) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E8max_sizeERKS3_(%"class.std::allocator.61"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.61"*, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %2, align 8
  %3 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %2, align 8
  %4 = bitcast %"class.std::allocator.61"* %3 to %"class.__gnu_cxx::new_allocator.62"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.62"* %4) #12
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.62"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %0, %"class.__gnu_cxx::new_allocator.62"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"** %2, align 8
  ret i64 384307168202282325
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %0, %"class.__gnu_cxx::new_allocator.62"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %1, %"class.__gnu_cxx::new_allocator.62"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"** %3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"*, %"class.std::allocator.61"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"*, align 8
  %4 = alloca %"class.std::allocator.61"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %0, %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"** %3, align 8
  store %"class.std::allocator.61"* %1, %"class.std::allocator.61"** %4, align 8
  %7 = load %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"*, %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"** %3, align 8
  %8 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %7 to %"class.std::allocator.61"*
  %9 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %4, align 8
  call void @_ZNSaI6TensorILi1ELi3EEEC2ERKS1_(%"class.std::allocator.61"* %8, %"class.std::allocator.61"* dereferenceable(1) %9) #12
  %10 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  invoke void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %2
  ret void

; <label>:12:                                     ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %7 to %"class.std::allocator.61"*
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %16) #12
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base.60"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.60"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.60"* %0, %"struct.std::_Vector_base.60"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.60"*, %"struct.std::_Vector_base.60"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %class.Tensor* @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.60"* %5, i64 %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %8 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %9, i32 0, i32 0
  store %class.Tensor* %7, %class.Tensor** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %11 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load %class.Tensor*, %class.Tensor** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %15 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %16, i32 0, i32 1
  store %class.Tensor* %14, %class.Tensor** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %18 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load %class.Tensor*, %class.Tensor** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %class.Tensor, %class.Tensor* %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %24 to %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %25, i32 0, i32 2
  store %class.Tensor* %23, %class.Tensor** %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %0, %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"*, %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %3 to %"class.std::allocator.61"*
  call void @_ZNSaI6TensorILi1ELi3EEED2Ev(%"class.std::allocator.61"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %3, i32 0, i32 0
  store %class.Tensor* null, %class.Tensor** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %3, i32 0, i32 1
  store %class.Tensor* null, %class.Tensor** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl_data"* %3, i32 0, i32 2
  store %class.Tensor* null, %class.Tensor** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.60"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.60"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.60"* %0, %"struct.std::_Vector_base.60"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.60"*, %"struct.std::_Vector_base.60"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %9 to %"class.std::allocator.61"*
  %11 = load i64, i64* %4, align 8
  %12 = call %class.Tensor* @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E8allocateERS3_m(%"class.std::allocator.61"* dereferenceable(1) %10, i64 %11)
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = phi %class.Tensor* [ %12, %8 ], [ null, %13 ]
  ret %class.Tensor* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E8allocateERS3_m(%"class.std::allocator.61"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.61"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %3, align 8
  %6 = bitcast %"class.std::allocator.61"* %5 to %"class.__gnu_cxx::new_allocator.62"*
  %7 = load i64, i64* %4, align 8
  %8 = call %class.Tensor* @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.62"* %6, i64 %7, i8* null)
  ret %class.Tensor* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.62"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %0, %"class.__gnu_cxx::new_allocator.62"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.62"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 24
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %class.Tensor*
  ret %class.Tensor* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZSt24__uninitialized_fill_n_aIP6TensorILi1ELi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Tensor*, i64, %class.Tensor* dereferenceable(24), %"class.std::allocator.61"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Tensor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %class.Tensor*, align 8
  %8 = alloca %"class.std::allocator.61"*, align 8
  store %class.Tensor* %0, %class.Tensor** %5, align 8
  store i64 %1, i64* %6, align 8
  store %class.Tensor* %2, %class.Tensor** %7, align 8
  store %"class.std::allocator.61"* %3, %"class.std::allocator.61"** %8, align 8
  %9 = load %class.Tensor*, %class.Tensor** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %class.Tensor*, %class.Tensor** %7, align 8
  %12 = call %class.Tensor* @_ZSt20uninitialized_fill_nIP6TensorILi1ELi3EEmS1_ET_S3_T0_RKT1_(%class.Tensor* %9, i64 %10, %class.Tensor* dereferenceable(24) %11)
  ret %class.Tensor* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.61"* @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.60"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.60"*, align 8
  store %"struct.std::_Vector_base.60"* %0, %"struct.std::_Vector_base.60"** %2, align 8
  %3 = load %"struct.std::_Vector_base.60"*, %"struct.std::_Vector_base.60"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %4 to %"class.std::allocator.61"*
  ret %"class.std::allocator.61"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZSt20uninitialized_fill_nIP6TensorILi1ELi3EEmS1_ET_S3_T0_RKT1_(%class.Tensor*, i64, %class.Tensor* dereferenceable(24)) #0 comdat {
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Tensor*, align 8
  %7 = alloca i8, align 1
  store %class.Tensor* %0, %class.Tensor** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Tensor* %2, %class.Tensor** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %class.Tensor*, %class.Tensor** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %class.Tensor*, %class.Tensor** %6, align 8
  %11 = call %class.Tensor* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP6TensorILi1ELi3EEmS3_EET_S5_T0_RKT1_(%class.Tensor* %8, i64 %9, %class.Tensor* dereferenceable(24) %10)
  ret %class.Tensor* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP6TensorILi1ELi3EEmS3_EET_S5_T0_RKT1_(%class.Tensor*, i64, %class.Tensor* dereferenceable(24)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Tensor*, align 8
  %7 = alloca %class.Tensor*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.Tensor* %0, %class.Tensor** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Tensor* %2, %class.Tensor** %6, align 8
  %10 = load %class.Tensor*, %class.Tensor** %4, align 8
  store %class.Tensor* %10, %class.Tensor** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %20, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %11
  %15 = load %class.Tensor*, %class.Tensor** %7, align 8
  %16 = invoke %class.Tensor* @_ZSt11__addressofI6TensorILi1ELi3EEEPT_RS2_(%class.Tensor* dereferenceable(24) %15)
          to label %17 unwind label %25

; <label>:17:                                     ; preds = %14
  %18 = load %class.Tensor*, %class.Tensor** %6, align 8
  invoke void @_ZSt10_ConstructI6TensorILi1ELi3EES1_EvPT_RKT0_(%class.Tensor* %16, %class.Tensor* dereferenceable(24) %18)
          to label %19 unwind label %25

; <label>:19:                                     ; preds = %17
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %class.Tensor*, %class.Tensor** %7, align 8
  %24 = getelementptr inbounds %class.Tensor, %class.Tensor* %23, i32 1
  store %class.Tensor* %24, %class.Tensor** %7, align 8
  br label %11

; <label>:25:                                     ; preds = %17, %14
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @__cxa_begin_catch(i8* %30) #12
  %32 = load %class.Tensor*, %class.Tensor** %4, align 8
  %33 = load %class.Tensor*, %class.Tensor** %7, align 8
  invoke void @_ZSt8_DestroyIP6TensorILi1ELi3EEEvT_S3_(%class.Tensor* %32, %class.Tensor* %33)
          to label %34 unwind label %37

; <label>:34:                                     ; preds = %29
  invoke void @__cxa_rethrow() #15
          to label %51 unwind label %37

; <label>:35:                                     ; preds = %11
  %36 = load %class.Tensor*, %class.Tensor** %7, align 8
  ret %class.Tensor* %36

; <label>:37:                                     ; preds = %34, %29
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %8, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %41 unwind label %48

; <label>:41:                                     ; preds = %37
  br label %43
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1
  resume { i8*, i32 } %47

; <label>:48:                                     ; preds = %37
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #10
  unreachable

; <label>:51:                                     ; preds = %34
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructI6TensorILi1ELi3EES1_EvPT_RKT0_(%class.Tensor*, %class.Tensor* dereferenceable(24)) #0 comdat {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca %class.Tensor*, align 8
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %5 = load %class.Tensor*, %class.Tensor** %3, align 8
  %6 = bitcast %class.Tensor* %5 to i8*
  %7 = bitcast i8* %6 to %class.Tensor*
  %8 = load %class.Tensor*, %class.Tensor** %4, align 8
  call void @_ZN6TensorILi1ELi3EEC2ERKS0_(%class.Tensor* %7, %class.Tensor* dereferenceable(24) %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor* @_ZSt11__addressofI6TensorILi1ELi3EEEPT_RS2_(%class.Tensor* dereferenceable(24)) #1 comdat {
  %2 = alloca %class.Tensor*, align 8
  store %class.Tensor* %0, %class.Tensor** %2, align 8
  %3 = load %class.Tensor*, %class.Tensor** %2, align 8
  ret %class.Tensor* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP6TensorILi1ELi3EEEvT_S3_(%class.Tensor*, %class.Tensor*) #0 comdat {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca %class.Tensor*, align 8
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %5 = load %class.Tensor*, %class.Tensor** %3, align 8
  %6 = load %class.Tensor*, %class.Tensor** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6TensorILi1ELi3EEEEvT_S5_(%class.Tensor* %5, %class.Tensor* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6TensorILi1ELi3EEC2ERKS0_(%class.Tensor*, %class.Tensor* dereferenceable(24)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %6 = load %class.Tensor*, %class.Tensor** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor*, %class.Tensor** %4, align 8
  %12 = getelementptr inbounds %class.Tensor, %class.Tensor* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.Tensor, %class.Tensor* %6, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 %19
  store double %16, double* %20, align 8
  br label %21

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6TensorILi1ELi3EEEEvT_S5_(%class.Tensor*, %class.Tensor*) #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca %class.Tensor*, align 8
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi1ELi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.60"*, %class.Tensor*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.60"*, align 8
  %5 = alloca %class.Tensor*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.60"* %0, %"struct.std::_Vector_base.60"** %4, align 8
  store %class.Tensor* %1, %class.Tensor** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.60"*, %"struct.std::_Vector_base.60"** %4, align 8
  %8 = load %class.Tensor*, %class.Tensor** %5, align 8
  %9 = icmp ne %class.Tensor* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.60", %"struct.std::_Vector_base.60"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<Tensor<1, 3>, std::allocator<Tensor<1, 3> > >::_Vector_impl"* %11 to %"class.std::allocator.61"*
  %13 = load %class.Tensor*, %class.Tensor** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.61"* dereferenceable(1) %12, %class.Tensor* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi1ELi3EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.61"* dereferenceable(1), %class.Tensor*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.61"*, align 8
  %5 = alloca %class.Tensor*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.61"* %0, %"class.std::allocator.61"** %4, align 8
  store %class.Tensor* %1, %class.Tensor** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.61"*, %"class.std::allocator.61"** %4, align 8
  %8 = bitcast %"class.std::allocator.61"* %7 to %"class.__gnu_cxx::new_allocator.62"*
  %9 = load %class.Tensor*, %class.Tensor** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.62"* %8, %class.Tensor* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi1ELi3EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.62"*, %class.Tensor*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.62"*, align 8
  %5 = alloca %class.Tensor*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.62"* %0, %"class.__gnu_cxx::new_allocator.62"** %4, align 8
  store %class.Tensor* %1, %class.Tensor** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.62"*, %"class.__gnu_cxx::new_allocator.62"** %4, align 8
  %8 = load %class.Tensor*, %class.Tensor** %5, align 8
  %9 = bitcast %class.Tensor* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP6TensorILi1ELi3EES1_EvT_S3_RSaIT0_E(%class.Tensor*, %class.Tensor*, %"class.std::allocator.61"* dereferenceable(1)) #0 comdat {
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca %class.Tensor*, align 8
  %6 = alloca %"class.std::allocator.61"*, align 8
  store %class.Tensor* %0, %class.Tensor** %4, align 8
  store %class.Tensor* %1, %class.Tensor** %5, align 8
  store %"class.std::allocator.61"* %2, %"class.std::allocator.61"** %6, align 8
  %7 = load %class.Tensor*, %class.Tensor** %4, align 8
  %8 = load %class.Tensor*, %class.Tensor** %5, align 8
  call void @_ZSt8_DestroyIP6TensorILi1ELi3EEEvT_S3_(%class.Tensor* %7, %class.Tensor* %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP6TensorILi1ELi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"*, %class.Tensor** dereferenceable(8)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %class.Tensor**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %class.Tensor** %1, %class.Tensor*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load %class.Tensor**, %class.Tensor*** %4, align 8
  %8 = load %class.Tensor*, %class.Tensor** %7, align 8
  store %class.Tensor* %8, %class.Tensor** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK5TableILi2EdE6n_colsEv(%class.Table*) #1 comdat align 2 {
  %2 = alloca %class.Table*, align 8
  store %class.Table* %0, %class.Table** %2, align 8
  %3 = load %class.Table*, %class.Table** %2, align 8
  %4 = bitcast %class.Table* %3 to %class.TableBase*
  %5 = getelementptr inbounds %class.TableBase, %class.TableBase* %4, i32 0, i32 3
  %6 = bitcast %class.TableIndices* %5 to %class.TableIndicesBase*
  %7 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %6, i32 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8internal18TableBaseAccessors8AccessorILi2EdLb0ELj1EEC2ERK9TableBaseILi2EdEPd(%"class.internal::TableBaseAccessors::Accessor.64"*, %class.TableBase* dereferenceable(48), double*) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"class.internal::TableBaseAccessors::Accessor.64"*, align 8
  %5 = alloca %class.TableBase*, align 8
  %6 = alloca double*, align 8
  store %"class.internal::TableBaseAccessors::Accessor.64"* %0, %"class.internal::TableBaseAccessors::Accessor.64"** %4, align 8
  store %class.TableBase* %1, %class.TableBase** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load %"class.internal::TableBaseAccessors::Accessor.64"*, %"class.internal::TableBaseAccessors::Accessor.64"** %4, align 8
  %8 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.64", %"class.internal::TableBaseAccessors::Accessor.64"* %7, i32 0, i32 0
  %9 = load %class.TableBase*, %class.TableBase** %5, align 8
  store %class.TableBase* %9, %class.TableBase** %8, align 8
  %10 = getelementptr inbounds %"class.internal::TableBaseAccessors::Accessor.64", %"class.internal::TableBaseAccessors::Accessor.64"* %7, i32 0, i32 1
  %11 = load double*, double** %6, align 8
  store double* %11, double** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEEC2Ev(%"class.__gnu_cxx::new_allocator.68"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %0, %"class.__gnu_cxx::new_allocator.68"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEED2Ev(%"class.__gnu_cxx::new_allocator.68"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %0, %"class.__gnu_cxx::new_allocator.68"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE17_S_check_init_lenEmRKS2_(i64, %"class.std::allocator.67"* dereferenceable(1)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator.67"*, align 8
  %5 = alloca %"class.std::allocator.67", align 1
  %6 = alloca i8*
  %7 = alloca i32
  store i64 %0, i64* %3, align 8
  store %"class.std::allocator.67"* %1, %"class.std::allocator.67"** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %4, align 8
  call void @_ZNSaI6TensorILi2ELi3EEEC2ERKS1_(%"class.std::allocator.67"* %5, %"class.std::allocator.67"* dereferenceable(1) %9) #12
  %10 = invoke i64 @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.67"* dereferenceable(1) %5)
          to label %11 unwind label %14

; <label>:11:                                     ; preds = %2
  %12 = icmp ugt i64 %8, %10
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %5) #12
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %11
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #15
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %6, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %7, align 4
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %5) #12
  br label %20

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %3, align 8
  ret i64 %19

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base.66"*, i64, %"class.std::allocator.67"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base.66"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator.67"*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  store %"struct.std::_Vector_base.66"* %0, %"struct.std::_Vector_base.66"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator.67"* %2, %"class.std::allocator.67"** %6, align 8
  %9 = load %"struct.std::_Vector_base.66"*, %"struct.std::_Vector_base.66"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %6, align 8
  call void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %10, %"class.std::allocator.67"* dereferenceable(1) %11)
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base.66"* %9, i64 %12)
          to label %13 unwind label %14

; <label>:13:                                     ; preds = %3
  ret void

; <label>:14:                                     ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %10) #12
  br label %18

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE18_M_fill_initializeEmRKS1_(%"class.std::vector.65"*, i64, %class.Tensor.33* dereferenceable(72)) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.65"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Tensor.33*, align 8
  store %"class.std::vector.65"* %0, %"class.std::vector.65"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Tensor.33* %2, %class.Tensor.33** %6, align 8
  %7 = load %"class.std::vector.65"*, %"class.std::vector.65"** %4, align 8
  %8 = bitcast %"class.std::vector.65"* %7 to %"struct.std::_Vector_base.66"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %9 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %10, i32 0, i32 0
  %12 = load %class.Tensor.33*, %class.Tensor.33** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  %15 = bitcast %"class.std::vector.65"* %7 to %"struct.std::_Vector_base.66"*
  %16 = call dereferenceable(1) %"class.std::allocator.67"* @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.66"* %15)
  %17 = call %class.Tensor.33* @_ZSt24__uninitialized_fill_n_aIP6TensorILi2ELi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Tensor.33* %12, i64 %13, %class.Tensor.33* dereferenceable(72) %14, %"class.std::allocator.67"* dereferenceable(1) %16)
  %18 = bitcast %"class.std::vector.65"* %7 to %"struct.std::_Vector_base.66"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %19 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %20, i32 0, i32 1
  store %class.Tensor.33* %17, %class.Tensor.33** %21, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EED2Ev(%"struct.std::_Vector_base.66"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base.66"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base.66"* %0, %"struct.std::_Vector_base.66"** %2, align 8
  %5 = load %"struct.std::_Vector_base.66"*, %"struct.std::_Vector_base.66"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %class.Tensor.33*, %class.Tensor.33** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %class.Tensor.33*, %class.Tensor.33** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %14 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %class.Tensor.33*, %class.Tensor.33** %16, align 8
  %18 = ptrtoint %class.Tensor.33* %13 to i64
  %19 = ptrtoint %class.Tensor.33* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 72
  invoke void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.66"* %5, %class.Tensor.33* %9, i64 %21)
          to label %22 unwind label %24

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %23) #12
  ret void

; <label>:24:                                     ; preds = %1
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %28) #12
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorI6TensorILi2ELi3EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.67"* dereferenceable(1)) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.67"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %2, align 8
  store i64 128102389400760775, i64* %3, align 8
  %5 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %2, align 8
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E8max_sizeERKS3_(%"class.std::allocator.67"* dereferenceable(1) %5)
  store i64 %6, i64* %4, align 8
  %7 = call dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6TensorILi2ELi3EEEC2ERKS1_(%"class.std::allocator.67"*, %"class.std::allocator.67"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.67"*, align 8
  %4 = alloca %"class.std::allocator.67"*, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %3, align 8
  store %"class.std::allocator.67"* %1, %"class.std::allocator.67"** %4, align 8
  %5 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %3, align 8
  %6 = bitcast %"class.std::allocator.67"* %5 to %"class.__gnu_cxx::new_allocator.68"*
  %7 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %4, align 8
  %8 = bitcast %"class.std::allocator.67"* %7 to %"class.__gnu_cxx::new_allocator.68"*
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.68"* %6, %"class.__gnu_cxx::new_allocator.68"* dereferenceable(1) %8) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E8max_sizeERKS3_(%"class.std::allocator.67"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.67"*, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %2, align 8
  %3 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %2, align 8
  %4 = bitcast %"class.std::allocator.67"* %3 to %"class.__gnu_cxx::new_allocator.68"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.68"* %4) #12
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.68"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %0, %"class.__gnu_cxx::new_allocator.68"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"** %2, align 8
  ret i64 128102389400760775
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %0, %"class.__gnu_cxx::new_allocator.68"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %1, %"class.__gnu_cxx::new_allocator.68"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"** %3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"*, %"class.std::allocator.67"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"*, align 8
  %4 = alloca %"class.std::allocator.67"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %0, %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"** %3, align 8
  store %"class.std::allocator.67"* %1, %"class.std::allocator.67"** %4, align 8
  %7 = load %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"*, %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"** %3, align 8
  %8 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %7 to %"class.std::allocator.67"*
  %9 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %4, align 8
  call void @_ZNSaI6TensorILi2ELi3EEEC2ERKS1_(%"class.std::allocator.67"* %8, %"class.std::allocator.67"* dereferenceable(1) %9) #12
  %10 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %7 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  invoke void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %2
  ret void

; <label>:12:                                     ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %7 to %"class.std::allocator.67"*
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %16) #12
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base.66"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.66"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.66"* %0, %"struct.std::_Vector_base.66"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.66"*, %"struct.std::_Vector_base.66"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %class.Tensor.33* @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.66"* %5, i64 %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %8 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %9, i32 0, i32 0
  store %class.Tensor.33* %7, %class.Tensor.33** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %11 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load %class.Tensor.33*, %class.Tensor.33** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %15 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %16, i32 0, i32 1
  store %class.Tensor.33* %14, %class.Tensor.33** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %18 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load %class.Tensor.33*, %class.Tensor.33** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %24 to %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %25, i32 0, i32 2
  store %class.Tensor.33* %23, %class.Tensor.33** %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %0, %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"*, %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %3 to %"class.std::allocator.67"*
  call void @_ZNSaI6TensorILi2ELi3EEED2Ev(%"class.std::allocator.67"* %4) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"*, %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %3, i32 0, i32 0
  store %class.Tensor.33* null, %class.Tensor.33** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %3, i32 0, i32 1
  store %class.Tensor.33* null, %class.Tensor.33** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl_data"* %3, i32 0, i32 2
  store %class.Tensor.33* null, %class.Tensor.33** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.66"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.66"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.66"* %0, %"struct.std::_Vector_base.66"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.66"*, %"struct.std::_Vector_base.66"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %9 to %"class.std::allocator.67"*
  %11 = load i64, i64* %4, align 8
  %12 = call %class.Tensor.33* @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E8allocateERS3_m(%"class.std::allocator.67"* dereferenceable(1) %10, i64 %11)
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = phi %class.Tensor.33* [ %12, %8 ], [ null, %13 ]
  ret %class.Tensor.33* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E8allocateERS3_m(%"class.std::allocator.67"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.67"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %3, align 8
  %6 = bitcast %"class.std::allocator.67"* %5 to %"class.__gnu_cxx::new_allocator.68"*
  %7 = load i64, i64* %4, align 8
  %8 = call %class.Tensor.33* @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.68"* %6, i64 %7, i8* null)
  ret %class.Tensor.33* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.68"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %0, %"class.__gnu_cxx::new_allocator.68"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.68"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 72
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %class.Tensor.33*
  ret %class.Tensor.33* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZSt24__uninitialized_fill_n_aIP6TensorILi2ELi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Tensor.33*, i64, %class.Tensor.33* dereferenceable(72), %"class.std::allocator.67"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Tensor.33*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %class.Tensor.33*, align 8
  %8 = alloca %"class.std::allocator.67"*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %5, align 8
  store i64 %1, i64* %6, align 8
  store %class.Tensor.33* %2, %class.Tensor.33** %7, align 8
  store %"class.std::allocator.67"* %3, %"class.std::allocator.67"** %8, align 8
  %9 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  %12 = call %class.Tensor.33* @_ZSt20uninitialized_fill_nIP6TensorILi2ELi3EEmS1_ET_S3_T0_RKT1_(%class.Tensor.33* %9, i64 %10, %class.Tensor.33* dereferenceable(72) %11)
  ret %class.Tensor.33* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.67"* @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.66"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.66"*, align 8
  store %"struct.std::_Vector_base.66"* %0, %"struct.std::_Vector_base.66"** %2, align 8
  %3 = load %"struct.std::_Vector_base.66"*, %"struct.std::_Vector_base.66"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %4 to %"class.std::allocator.67"*
  ret %"class.std::allocator.67"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZSt20uninitialized_fill_nIP6TensorILi2ELi3EEmS1_ET_S3_T0_RKT1_(%class.Tensor.33*, i64, %class.Tensor.33* dereferenceable(72)) #0 comdat {
  %4 = alloca %class.Tensor.33*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Tensor.33*, align 8
  %7 = alloca i8, align 1
  store %class.Tensor.33* %0, %class.Tensor.33** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Tensor.33* %2, %class.Tensor.33** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  %11 = call %class.Tensor.33* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP6TensorILi2ELi3EEmS3_EET_S5_T0_RKT1_(%class.Tensor.33* %8, i64 %9, %class.Tensor.33* dereferenceable(72) %10)
  ret %class.Tensor.33* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Tensor.33* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP6TensorILi2ELi3EEmS3_EET_S5_T0_RKT1_(%class.Tensor.33*, i64, %class.Tensor.33* dereferenceable(72)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Tensor.33*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Tensor.33*, align 8
  %7 = alloca %class.Tensor.33*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.Tensor.33* %0, %class.Tensor.33** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Tensor.33* %2, %class.Tensor.33** %6, align 8
  %10 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  store %class.Tensor.33* %10, %class.Tensor.33** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %20, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %11
  %15 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  %16 = invoke %class.Tensor.33* @_ZSt11__addressofI6TensorILi2ELi3EEEPT_RS2_(%class.Tensor.33* dereferenceable(72) %15)
          to label %17 unwind label %25

; <label>:17:                                     ; preds = %14
  %18 = load %class.Tensor.33*, %class.Tensor.33** %6, align 8
  invoke void @_ZSt10_ConstructI6TensorILi2ELi3EES1_EvPT_RKT0_(%class.Tensor.33* %16, %class.Tensor.33* dereferenceable(72) %18)
          to label %19 unwind label %25

; <label>:19:                                     ; preds = %17
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  %24 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %23, i32 1
  store %class.Tensor.33* %24, %class.Tensor.33** %7, align 8
  br label %11

; <label>:25:                                     ; preds = %17, %14
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @__cxa_begin_catch(i8* %30) #12
  %32 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %33 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  invoke void @_ZSt8_DestroyIP6TensorILi2ELi3EEEvT_S3_(%class.Tensor.33* %32, %class.Tensor.33* %33)
          to label %34 unwind label %37

; <label>:34:                                     ; preds = %29
  invoke void @__cxa_rethrow() #15
          to label %51 unwind label %37

; <label>:35:                                     ; preds = %11
  %36 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  ret %class.Tensor.33* %36

; <label>:37:                                     ; preds = %34, %29
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %8, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %41 unwind label %48

; <label>:41:                                     ; preds = %37
  br label %43
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1
  resume { i8*, i32 } %47

; <label>:48:                                     ; preds = %37
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #10
  unreachable

; <label>:51:                                     ; preds = %34
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructI6TensorILi2ELi3EES1_EvPT_RKT0_(%class.Tensor.33*, %class.Tensor.33* dereferenceable(72)) #0 comdat {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %4, align 8
  %5 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %6 = bitcast %class.Tensor.33* %5 to i8*
  %7 = bitcast i8* %6 to %class.Tensor.33*
  %8 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  call void @_ZN6TensorILi2ELi3EEC2ERKS0_(%class.Tensor.33* %7, %class.Tensor.33* dereferenceable(72) %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Tensor.33* @_ZSt11__addressofI6TensorILi2ELi3EEEPT_RS2_(%class.Tensor.33* dereferenceable(72)) #1 comdat {
  %2 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %2, align 8
  %3 = load %class.Tensor.33*, %class.Tensor.33** %2, align 8
  ret %class.Tensor.33* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP6TensorILi2ELi3EEEvT_S3_(%class.Tensor.33*, %class.Tensor.33*) #0 comdat {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %4, align 8
  %5 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %6 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6TensorILi2ELi3EEEEvT_S5_(%class.Tensor.33* %5, %class.Tensor.33* %6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6TensorILi2ELi3EEC2ERKS0_(%class.Tensor.33*, %class.Tensor.33* dereferenceable(72)) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %4, align 8
  %5 = load %class.Tensor.33*, %class.Tensor.33** %3, align 8
  %6 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %5, i32 0, i32 0
  %7 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %8 = getelementptr inbounds %class.Tensor.33, %class.Tensor.33* %7, i32 0, i32 0
  %9 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %6, i64 0, i64 0
  br label %10

; <label>:10:                                     ; preds = %10, %2
  %11 = phi i64 [ 0, %2 ], [ %14, %10 ]
  %12 = getelementptr inbounds %class.Tensor, %class.Tensor* %9, i64 %11
  %13 = getelementptr inbounds [3 x %class.Tensor], [3 x %class.Tensor]* %8, i64 0, i64 %11
  call void @_ZN6TensorILi1ELi3EEC2ERKS0_(%class.Tensor* %12, %class.Tensor* dereferenceable(24) %13)
  %14 = add nuw i64 %11, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %10

; <label>:16:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6TensorILi2ELi3EEEEvT_S5_(%class.Tensor.33*, %class.Tensor.33*) #1 comdat align 2 {
  %3 = alloca %class.Tensor.33*, align 8
  %4 = alloca %class.Tensor.33*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %3, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6TensorILi2ELi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.66"*, %class.Tensor.33*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.66"*, align 8
  %5 = alloca %class.Tensor.33*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.66"* %0, %"struct.std::_Vector_base.66"** %4, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.66"*, %"struct.std::_Vector_base.66"** %4, align 8
  %8 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  %9 = icmp ne %class.Tensor.33* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.66", %"struct.std::_Vector_base.66"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<Tensor<2, 3>, std::allocator<Tensor<2, 3> > >::_Vector_impl"* %11 to %"class.std::allocator.67"*
  %13 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.67"* dereferenceable(1) %12, %class.Tensor.33* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6TensorILi2ELi3EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.67"* dereferenceable(1), %class.Tensor.33*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.67"*, align 8
  %5 = alloca %class.Tensor.33*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.67"* %0, %"class.std::allocator.67"** %4, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.67"*, %"class.std::allocator.67"** %4, align 8
  %8 = bitcast %"class.std::allocator.67"* %7 to %"class.__gnu_cxx::new_allocator.68"*
  %9 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.68"* %8, %class.Tensor.33* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6TensorILi2ELi3EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.68"*, %class.Tensor.33*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.68"*, align 8
  %5 = alloca %class.Tensor.33*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.68"* %0, %"class.__gnu_cxx::new_allocator.68"** %4, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.68"*, %"class.__gnu_cxx::new_allocator.68"** %4, align 8
  %8 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  %9 = bitcast %class.Tensor.33* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP6TensorILi2ELi3EES1_EvT_S3_RSaIT0_E(%class.Tensor.33*, %class.Tensor.33*, %"class.std::allocator.67"* dereferenceable(1)) #0 comdat {
  %4 = alloca %class.Tensor.33*, align 8
  %5 = alloca %class.Tensor.33*, align 8
  %6 = alloca %"class.std::allocator.67"*, align 8
  store %class.Tensor.33* %0, %class.Tensor.33** %4, align 8
  store %class.Tensor.33* %1, %class.Tensor.33** %5, align 8
  store %"class.std::allocator.67"* %2, %"class.std::allocator.67"** %6, align 8
  %7 = load %class.Tensor.33*, %class.Tensor.33** %4, align 8
  %8 = load %class.Tensor.33*, %class.Tensor.33** %5, align 8
  call void @_ZSt8_DestroyIP6TensorILi2ELi3EEEvT_S3_(%class.Tensor.33* %7, %class.Tensor.33* %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP6TensorILi2ELi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.70"*, %class.Tensor.33** dereferenceable(8)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.70"*, align 8
  %4 = alloca %class.Tensor.33**, align 8
  store %"class.__gnu_cxx::__normal_iterator.70"* %0, %"class.__gnu_cxx::__normal_iterator.70"** %3, align 8
  store %class.Tensor.33** %1, %class.Tensor.33*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.70"*, %"class.__gnu_cxx::__normal_iterator.70"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.70", %"class.__gnu_cxx::__normal_iterator.70"* %5, i32 0, i32 0
  %7 = load %class.Tensor.33**, %class.Tensor.33*** %4, align 8
  %8 = load %class.Tensor.33*, %class.Tensor.33** %7, align 8
  store %class.Tensor.33* %8, %class.Tensor.33** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.DoFCellAccessor* @_ZNK15TriaRawIteratorILi3E15DoFCellAccessorILi3EEEdeEv(%class.TriaRawIterator*) #1 comdat align 2 {
  %2 = alloca %class.TriaRawIterator*, align 8
  store %class.TriaRawIterator* %0, %class.TriaRawIterator** %2, align 8
  %3 = load %class.TriaRawIterator*, %class.TriaRawIterator** %2, align 8
  %4 = getelementptr inbounds %class.TriaRawIterator, %class.TriaRawIterator* %3, i32 0, i32 0
  ret %class.DoFCellAccessor* %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.TriangulationLevel** @_ZNKSt6vectorIP18TriangulationLevelILi3EESaIS2_EEixEm(%"class.std::vector.72"*, i64) #1 comdat align 2 {
  %3 = alloca %"class.std::vector.72"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.72"* %0, %"class.std::vector.72"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.72"*, %"class.std::vector.72"** %3, align 8
  %6 = bitcast %"class.std::vector.72"* %5 to %"struct.std::_Vector_base.73"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.73", %"struct.std::_Vector_base.73"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl"* %7 to %"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl_data", %"struct.std::_Vector_base<TriangulationLevel<3> *, std::allocator<TriangulationLevel<3> *> >::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.TriangulationLevel**, %class.TriangulationLevel*** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.TriangulationLevel*, %class.TriangulationLevel** %10, i64 %11
  ret %class.TriangulationLevel** %12
}

; Function Attrs: noinline uwtable
define linkonce_odr { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.7"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Bit_reference", align 8
  %4 = alloca %"class.std::vector.7"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.7"* %0, %"class.std::vector.7"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.std::vector.7"*, %"class.std::vector.7"** %4, align 8
  %8 = bitcast %"class.std::vector.7"* %7 to %"struct.std::_Bvector_base"*
  %9 = getelementptr inbounds %"struct.std::_Bvector_base", %"struct.std::_Bvector_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %9 to %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data", %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl_data"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_Bit_iterator"* %11 to %"struct.std::_Bit_iterator_base"*
  %13 = getelementptr inbounds %"struct.std::_Bit_iterator_base", %"struct.std::_Bit_iterator_base"* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = udiv i64 %15, 64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %5, align 8
  %19 = urem i64 %18, 64
  %20 = trunc i64 %19 to i32
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %6, i64* %17, i32 %20)
  %21 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %6)
  %22 = bitcast %"struct.std::_Bit_reference"* %3 to { i64*, i64 }*
  %23 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %22, i32 0, i32 0
  %24 = extractvalue { i64*, i64 } %21, 0
  store i64* %24, i64** %23, align 8
  %25 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %22, i32 0, i32 1
  %26 = extractvalue { i64*, i64 } %21, 1
  store i64 %26, i64* %25, align 8
  %27 = bitcast %"struct.std::_Bit_reference"* %3 to { i64*, i64 }*
  %28 = load { i64*, i64 }, { i64*, i64 }* %27, align 8
  ret { i64*, i64 } %28
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_(i64, %"class.std::allocator.30"* dereferenceable(1)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator.30"*, align 8
  %5 = alloca %"class.std::allocator.30", align 1
  %6 = alloca i8*
  %7 = alloca i32
  store i64 %0, i64* %3, align 8
  store %"class.std::allocator.30"* %1, %"class.std::allocator.30"** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %4, align 8
  call void @_ZNSaIjEC2ERKS_(%"class.std::allocator.30"* %5, %"class.std::allocator.30"* dereferenceable(1) %9) #12
  %10 = invoke i64 @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_(%"class.std::allocator.30"* dereferenceable(1) %5)
          to label %11 unwind label %14

; <label>:11:                                     ; preds = %2
  %12 = icmp ugt i64 %8, %10
  call void @_ZNSaIjED2Ev(%"class.std::allocator.30"* %5) #12
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %11
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #15
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %6, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %7, align 4
  call void @_ZNSaIjED2Ev(%"class.std::allocator.30"* %5) #12
  br label %20

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %3, align 8
  ret i64 %19

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_(%"struct.std::_Vector_base.29"*, i64, %"class.std::allocator.30"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base.29"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator.30"*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  store %"struct.std::_Vector_base.29"* %0, %"struct.std::_Vector_base.29"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator.30"* %2, %"class.std::allocator.30"** %6, align 8
  %9 = load %"struct.std::_Vector_base.29"*, %"struct.std::_Vector_base.29"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %6, align 8
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %10, %"class.std::allocator.30"* dereferenceable(1) %11)
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm(%"struct.std::_Vector_base.29"* %9, i64 %12)
          to label %13 unwind label %14

; <label>:13:                                     ; preds = %3
  ret void

; <label>:14:                                     ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %10) #12
  br label %18

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE18_M_fill_initializeEmRKj(%"class.std::vector.28"*, i64, i32* dereferenceable(4)) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.28"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %"class.std::vector.28"* %0, %"class.std::vector.28"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.std::vector.28"*, %"class.std::vector.28"** %4, align 8
  %8 = bitcast %"class.std::vector.28"* %7 to %"struct.std::_Vector_base.29"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %9 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast %"class.std::vector.28"* %7 to %"struct.std::_Vector_base.29"*
  %16 = call dereferenceable(1) %"class.std::allocator.30"* @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.29"* %15)
  %17 = call i32* @_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E(i32* %12, i64 %13, i32* dereferenceable(4) %14, %"class.std::allocator.30"* dereferenceable(1) %16)
  %18 = bitcast %"class.std::vector.28"* %7 to %"struct.std::_Vector_base.29"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %19 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %20, i32 0, i32 1
  store i32* %17, i32** %21, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_(%"class.std::allocator.30"* dereferenceable(1)) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.30"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %2, align 8
  store i64 2305843009213693951, i64* %3, align 8
  %5 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %2, align 8
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE8max_sizeERKS1_(%"class.std::allocator.30"* dereferenceable(1) %5)
  store i64 %6, i64* %4, align 8
  %7 = call dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIjEC2ERKS_(%"class.std::allocator.30"*, %"class.std::allocator.30"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.30"*, align 8
  %4 = alloca %"class.std::allocator.30"*, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %3, align 8
  store %"class.std::allocator.30"* %1, %"class.std::allocator.30"** %4, align 8
  %5 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %3, align 8
  %6 = bitcast %"class.std::allocator.30"* %5 to %"class.__gnu_cxx::new_allocator.31"*
  %7 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %4, align 8
  %8 = bitcast %"class.std::allocator.30"* %7 to %"class.__gnu_cxx::new_allocator.31"*
  call void @_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_(%"class.__gnu_cxx::new_allocator.31"* %6, %"class.__gnu_cxx::new_allocator.31"* dereferenceable(1) %8) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE8max_sizeERKS1_(%"class.std::allocator.30"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.30"*, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %2, align 8
  %3 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %2, align 8
  %4 = bitcast %"class.std::allocator.30"* %3 to %"class.__gnu_cxx::new_allocator.31"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv(%"class.__gnu_cxx::new_allocator.31"* %4) #12
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv(%"class.__gnu_cxx::new_allocator.31"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %0, %"class.__gnu_cxx::new_allocator.31"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"** %2, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_(%"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %0, %"class.__gnu_cxx::new_allocator.31"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %1, %"class.__gnu_cxx::new_allocator.31"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"** %3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"*, %"class.std::allocator.30"* dereferenceable(1)) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"*, align 8
  %4 = alloca %"class.std::allocator.30"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %0, %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"** %3, align 8
  store %"class.std::allocator.30"* %1, %"class.std::allocator.30"** %4, align 8
  %7 = load %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"*, %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"** %3, align 8
  %8 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %7 to %"class.std::allocator.30"*
  %9 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %4, align 8
  call void @_ZNSaIjEC2ERKS_(%"class.std::allocator.30"* %8, %"class.std::allocator.30"* dereferenceable(1) %9) #12
  %10 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %7 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  invoke void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %10)
          to label %11 unwind label %12

; <label>:11:                                     ; preds = %2
  ret void

; <label>:12:                                     ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %7 to %"class.std::allocator.30"*
  call void @_ZNSaIjED2Ev(%"class.std::allocator.30"* %16) #12
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm(%"struct.std::_Vector_base.29"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.29"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.29"* %0, %"struct.std::_Vector_base.29"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.29"*, %"struct.std::_Vector_base.29"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32* @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(%"struct.std::_Vector_base.29"* %5, i64 %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %8 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %9, i32 0, i32 0
  store i32* %7, i32** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %11 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %15 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %16, i32 0, i32 1
  store i32* %14, i32** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %18 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %24 to %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %25, i32 0, i32 2
  store i32* %23, i32** %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %0, %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"*, %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %3, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl_data"* %3, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(%"struct.std::_Vector_base.29"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.29"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.29"* %0, %"struct.std::_Vector_base.29"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.29"*, %"struct.std::_Vector_base.29"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.29", %"struct.std::_Vector_base.29"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int> >::_Vector_impl"* %9 to %"class.std::allocator.30"*
  %11 = load i64, i64* %4, align 8
  %12 = call i32* @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE8allocateERS1_m(%"class.std::allocator.30"* dereferenceable(1) %10, i64 %11)
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = phi i32* [ %12, %8 ], [ null, %13 ]
  ret i32* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE8allocateERS1_m(%"class.std::allocator.30"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.30"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.30"* %0, %"class.std::allocator.30"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.30"*, %"class.std::allocator.30"** %3, align 8
  %6 = bitcast %"class.std::allocator.30"* %5 to %"class.__gnu_cxx::new_allocator.31"*
  %7 = load i64, i64* %4, align 8
  %8 = call i32* @_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.31"* %6, i64 %7, i8* null)
  ret i32* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.31"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.31"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.31"* %0, %"class.__gnu_cxx::new_allocator.31"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.31"*, %"class.__gnu_cxx::new_allocator.31"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv(%"class.__gnu_cxx::new_allocator.31"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 4
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to i32*
  ret i32* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E(i32*, i64, i32* dereferenceable(4), %"class.std::allocator.30"* dereferenceable(1)) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator.30"*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator.30"* %3, %"class.std::allocator.30"** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32* @_ZSt20uninitialized_fill_nIPjmjET_S1_T0_RKT1_(i32* %9, i64 %10, i32* dereferenceable(4) %11)
  ret i32* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZSt20uninitialized_fill_nIPjmjET_S1_T0_RKT1_(i32*, i64, i32* dereferenceable(4)) #0 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjmjEET_S3_T0_RKT1_(i32* %8, i64 %9, i32* dereferenceable(4) %10)
  ret i32* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjmjEET_S3_T0_RKT1_(i32*, i64, i32* dereferenceable(4)) #0 comdat align 2 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32* @_ZSt6fill_nIPjmjET_S1_T0_RKT1_(i32* %7, i64 %8, i32* dereferenceable(4) %9)
  ret i32* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZSt6fill_nIPjmjET_S1_T0_RKT1_(i32*, i64, i32* dereferenceable(4)) #0 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @_ZSt12__niter_baseIPjET_S1_(i32* %7)
  %9 = load i64, i64* %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @_ZSt10__fill_n_aIPjmjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %8, i64 %9, i32* dereferenceable(4) %10)
  %12 = call i32* @_ZSt12__niter_wrapIPjET_RKS1_S1_(i32** dereferenceable(8) %4, i32* %11)
  ret i32* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32* @_ZSt12__niter_wrapIPjET_RKS1_S1_(i32** dereferenceable(8), i32*) #1 comdat {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  ret i32* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32* @_ZSt10__fill_n_aIPjmjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32*, i64, i32* dereferenceable(4)) #1 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %8, align 8
  br label %12

; <label>:12:                                     ; preds = %18, %3
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 8
  br label %12

; <label>:23:                                     ; preds = %12
  %24 = load i32*, i32** %4, align 8
  ret i32* %24
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPjET_S1_(i32*) #1 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZNK9TableBaseILi2EdE10n_elementsEv(%class.TableBase*) #1 comdat align 2 {
  %2 = alloca %class.TableBase*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.TableBase* %0, %class.TableBase** %2, align 8
  %5 = load %class.TableBase*, %class.TableBase** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %class.TableBase, %class.TableBase* %5, i32 0, i32 3
  %11 = bitcast %class.TableIndices* %10 to %class.TableIndicesBase*
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @_ZNK16TableIndicesBaseILi2EEixEj(%class.TableIndicesBase* %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2EdE12reset_valuesEv(%class.TableBase*) #0 comdat align 2 {
  %2 = alloca %class.TableBase*, align 8
  %3 = alloca double, align 8
  store %class.TableBase* %0, %class.TableBase** %2, align 8
  %4 = load %class.TableBase*, %class.TableBase** %2, align 8
  %5 = call i32 @_ZNK9TableBaseILi2EdE10n_elementsEv(%class.TableBase* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %class.TableBase, %class.TableBase* %4, i32 0, i32 1
  %9 = load double*, double** %8, align 8
  %10 = call i32 @_ZNK9TableBaseILi2EdE10n_elementsEv(%class.TableBase* %4)
  store double 0.000000e+00, double* %3, align 8
  %11 = call double* @_ZSt6fill_nIPdjdET_S1_T0_RKT1_(double* %9, i32 %10, double* dereferenceable(8) %3)
  br label %12

; <label>:12:                                     ; preds = %7, %1
  ret void
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
define linkonce_odr double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8), double*) #1 comdat {
  %3 = alloca double**, align 8
  %4 = alloca double*, align 8
  store double** %0, double*** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  ret double* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt10__fill_n_aIPdjdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double*, i32, double* dereferenceable(8)) #1 comdat {
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
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double*) #1 comdat {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  ret double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9TableBaseILi2EdE4fillIdEEvPKT_(%class.TableBase*, double*) #0 comdat align 2 {
  %3 = alloca %class.TableBase*, align 8
  %4 = alloca double*, align 8
  store %class.TableBase* %0, %class.TableBase** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %class.TableBase*, %class.TableBase** %3, align 8
  %6 = load double*, double** %4, align 8
  %7 = load double*, double** %4, align 8
  %8 = call i32 @_ZNK9TableBaseILi2EdE10n_elementsEv(%class.TableBase* %5)
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  %11 = getelementptr inbounds %class.TableBase, %class.TableBase* %5, i32 0, i32 1
  %12 = load double*, double** %11, align 8
  %13 = call double* @_ZSt4copyIPKdPdET0_T_S4_S3_(double* %6, double* %10, double* %12)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt4copyIPKdPdET0_T_S4_S3_(double*, double*, double*) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__miter_baseIPKdET_S2_(double* %7)
  %9 = load double*, double** %5, align 8
  %10 = call double* @_ZSt12__miter_baseIPKdET_S2_(double* %9)
  %11 = load double*, double** %6, align 8
  %12 = call double* @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(double* %8, double* %10, double* %11)
  ret double* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(double*, double*, double*) #0 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = call double* @_ZSt12__niter_baseIPKdET_S2_(double* %7)
  %9 = load double*, double** %5, align 8
  %10 = call double* @_ZSt12__niter_baseIPKdET_S2_(double* %9)
  %11 = load double*, double** %6, align 8
  %12 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %11)
  %13 = call double* @_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_(double* %8, double* %10, double* %12)
  %14 = call double* @_ZSt12__niter_wrapIPdET_RKS1_S1_(double** dereferenceable(8) %6, double* %13)
  ret double* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__miter_baseIPKdET_S2_(double*) #1 comdat {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  ret double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_(double*, double*, double*) #0 comdat {
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
define linkonce_odr double* @_ZSt12__niter_baseIPKdET_S2_(double*) #1 comdat {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double*, double*, double*) #1 comdat align 2 {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"*) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.11"*, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %2, align 8
  %3 = load %"class.std::vector.11"*, %"class.std::vector.11"** %2, align 8
  %4 = bitcast %"class.std::vector.11"* %3 to %"struct.std::_Vector_base.12"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %5 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %class.Point*, %class.Point** %7, align 8
  %9 = bitcast %"class.std::vector.11"* %3 to %"struct.std::_Vector_base.12"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %class.Point*, %class.Point** %12, align 8
  %14 = ptrtoint %class.Point* %8 to i64
  %15 = ptrtoint %class.Point* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 24
  ret i64 %17
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI5PointILi3EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(%"class.std::vector.11"*, %class.Point*, i64, %class.Point* dereferenceable(24)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.129", align 8
  %6 = alloca %"class.std::vector.11"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %class.Point*, align 8
  %9 = alloca %class.Point, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.129", align 8
  %12 = alloca %class.Point*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator.129", align 8
  %16 = alloca %class.Point*, align 8
  %17 = alloca %class.Point*, align 8
  %18 = alloca i8*
  %19 = alloca i32
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %5, i32 0, i32 0
  store %class.Point* %1, %class.Point** %20, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %6, align 8
  store i64 %2, i64* %7, align 8
  store %class.Point* %3, %class.Point** %8, align 8
  %21 = load %"class.std::vector.11"*, %"class.std::vector.11"** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %276

; <label>:24:                                     ; preds = %4
  %25 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %25, i32 0, i32 0
  %27 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %26 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %28 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %27, i32 0, i32 2
  %29 = load %class.Point*, %class.Point** %28, align 8
  %30 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %30, i32 0, i32 0
  %32 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %31 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %32, i32 0, i32 1
  %34 = load %class.Point*, %class.Point** %33, align 8
  %35 = ptrtoint %class.Point* %29 to i64
  %36 = ptrtoint %class.Point* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 24
  %39 = load i64, i64* %7, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %135

; <label>:41:                                     ; preds = %24
  %42 = load %class.Point*, %class.Point** %8, align 8
  call void @_ZN5PointILi3EEC2ERKS0_(%class.Point* %9, %class.Point* dereferenceable(24) %42)
  %43 = call %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EE3endEv(%"class.std::vector.11"* %21)
  %44 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %11, i32 0, i32 0
  store %class.Point* %43, %class.Point** %44, align 8
  %45 = call i64 @_ZN9__gnu_cxxmiIP5PointILi3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.129"* dereferenceable(8) %11, %"class.__gnu_cxx::__normal_iterator.129"* dereferenceable(8) %5)
  store i64 %45, i64* %10, align 8
  %46 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %46, i32 0, i32 0
  %48 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %47 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %49 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %48, i32 0, i32 1
  %50 = load %class.Point*, %class.Point** %49, align 8
  store %class.Point* %50, %class.Point** %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %97

; <label>:54:                                     ; preds = %41
  %55 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %56 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %55, i32 0, i32 0
  %57 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %56 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %58 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %57, i32 0, i32 1
  %59 = load %class.Point*, %class.Point** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds %class.Point, %class.Point* %59, i64 %61
  %63 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %63, i32 0, i32 0
  %65 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %64 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %66 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %65, i32 0, i32 1
  %67 = load %class.Point*, %class.Point** %66, align 8
  %68 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %69 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %68, i32 0, i32 0
  %70 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %69 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %71 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %70, i32 0, i32 1
  %72 = load %class.Point*, %class.Point** %71, align 8
  %73 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %74 = call dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %73)
  %75 = call %class.Point* @_ZSt22__uninitialized_move_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point* %62, %class.Point* %67, %class.Point* %72, %"class.std::allocator.13"* dereferenceable(1) %74)
  %76 = load i64, i64* %7, align 8
  %77 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %77, i32 0, i32 0
  %79 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %78 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %80 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %79, i32 0, i32 1
  %81 = load %class.Point*, %class.Point** %80, align 8
  %82 = getelementptr inbounds %class.Point, %class.Point* %81, i64 %76
  store %class.Point* %82, %class.Point** %80, align 8
  %83 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
  %84 = load %class.Point*, %class.Point** %83, align 8
  %85 = load %class.Point*, %class.Point** %12, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds %class.Point, %class.Point* %85, i64 %87
  %89 = load %class.Point*, %class.Point** %12, align 8
  %90 = call %class.Point* @_ZSt13copy_backwardIP5PointILi3EES2_ET0_T_S4_S3_(%class.Point* %84, %class.Point* %88, %class.Point* %89)
  %91 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
  %92 = load %class.Point*, %class.Point** %91, align 8
  %93 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
  %94 = load %class.Point*, %class.Point** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %class.Point, %class.Point* %94, i64 %95
  call void @_ZSt4fillIP5PointILi3EES1_EvT_S3_RKT0_(%class.Point* %92, %class.Point* %96, %class.Point* dereferenceable(24) %9)
  br label %134

; <label>:97:                                     ; preds = %41
  %98 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %99 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %98, i32 0, i32 0
  %100 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %99 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %101 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %100, i32 0, i32 1
  %102 = load %class.Point*, %class.Point** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = sub i64 %103, %104
  %106 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %107 = call dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %106)
  %108 = call %class.Point* @_ZSt24__uninitialized_fill_n_aIP5PointILi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Point* %102, i64 %105, %class.Point* dereferenceable(24) %9, %"class.std::allocator.13"* dereferenceable(1) %107)
  %109 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %110 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %109, i32 0, i32 0
  %111 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %110 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %112 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %111, i32 0, i32 1
  store %class.Point* %108, %class.Point** %112, align 8
  %113 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
  %114 = load %class.Point*, %class.Point** %113, align 8
  %115 = load %class.Point*, %class.Point** %12, align 8
  %116 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %117 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %116, i32 0, i32 0
  %118 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %117 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %119 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %118, i32 0, i32 1
  %120 = load %class.Point*, %class.Point** %119, align 8
  %121 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %122 = call dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %121)
  %123 = call %class.Point* @_ZSt22__uninitialized_move_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point* %114, %class.Point* %115, %class.Point* %120, %"class.std::allocator.13"* dereferenceable(1) %122)
  %124 = load i64, i64* %10, align 8
  %125 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %126 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %125, i32 0, i32 0
  %127 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %126 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %128 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %127, i32 0, i32 1
  %129 = load %class.Point*, %class.Point** %128, align 8
  %130 = getelementptr inbounds %class.Point, %class.Point* %129, i64 %124
  store %class.Point* %130, %class.Point** %128, align 8
  %131 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
  %132 = load %class.Point*, %class.Point** %131, align 8
  %133 = load %class.Point*, %class.Point** %12, align 8
  call void @_ZSt4fillIP5PointILi3EES1_EvT_S3_RKT0_(%class.Point* %132, %class.Point* %133, %class.Point* dereferenceable(24) %9)
  br label %134

; <label>:134:                                    ; preds = %97, %54
  br label %275

; <label>:135:                                    ; preds = %24
  %136 = load i64, i64* %7, align 8
  %137 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.11"* %21, i64 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i64 %137, i64* %13, align 8
  %138 = call %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EE5beginEv(%"class.std::vector.11"* %21)
  %139 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %15, i32 0, i32 0
  store %class.Point* %138, %class.Point** %139, align 8
  %140 = call i64 @_ZN9__gnu_cxxmiIP5PointILi3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.129"* dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator.129"* dereferenceable(8) %15)
  store i64 %140, i64* %14, align 8
  %141 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %142 = load i64, i64* %13, align 8
  %143 = call %class.Point* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.12"* %141, i64 %142)
  store %class.Point* %143, %class.Point** %16, align 8
  %144 = load %class.Point*, %class.Point** %16, align 8
  store %class.Point* %144, %class.Point** %17, align 8
  %145 = load %class.Point*, %class.Point** %16, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds %class.Point, %class.Point* %145, i64 %146
  %148 = load i64, i64* %7, align 8
  %149 = load %class.Point*, %class.Point** %8, align 8
  %150 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %151 = invoke dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %150)
          to label %152 unwind label %186

; <label>:152:                                    ; preds = %135
  %153 = invoke %class.Point* @_ZSt24__uninitialized_fill_n_aIP5PointILi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Point* %147, i64 %148, %class.Point* dereferenceable(24) %149, %"class.std::allocator.13"* dereferenceable(1) %151)
          to label %154 unwind label %186

; <label>:154:                                    ; preds = %152
  store %class.Point* null, %class.Point** %17, align 8
  %155 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %156 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %155, i32 0, i32 0
  %157 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %156 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %158 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %157, i32 0, i32 0
  %159 = load %class.Point*, %class.Point** %158, align 8
  %160 = invoke dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
          to label %161 unwind label %186

; <label>:161:                                    ; preds = %154
  %162 = load %class.Point*, %class.Point** %160, align 8
  %163 = load %class.Point*, %class.Point** %16, align 8
  %164 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %165 = invoke dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %164)
          to label %166 unwind label %186

; <label>:166:                                    ; preds = %161
  %167 = invoke %class.Point* @_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point* %159, %class.Point* %162, %class.Point* %163, %"class.std::allocator.13"* dereferenceable(1) %165)
          to label %168 unwind label %186

; <label>:168:                                    ; preds = %166
  store %class.Point* %167, %class.Point** %17, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %class.Point*, %class.Point** %17, align 8
  %171 = getelementptr inbounds %class.Point, %class.Point* %170, i64 %169
  store %class.Point* %171, %class.Point** %17, align 8
  %172 = invoke dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
          to label %173 unwind label %186

; <label>:173:                                    ; preds = %168
  %174 = load %class.Point*, %class.Point** %172, align 8
  %175 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %176 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %175, i32 0, i32 0
  %177 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %176 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %178 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %177, i32 0, i32 1
  %179 = load %class.Point*, %class.Point** %178, align 8
  %180 = load %class.Point*, %class.Point** %17, align 8
  %181 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %182 = invoke dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %181)
          to label %183 unwind label %186

; <label>:183:                                    ; preds = %173
  %184 = invoke %class.Point* @_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point* %174, %class.Point* %179, %class.Point* %180, %"class.std::allocator.13"* dereferenceable(1) %182)
          to label %185 unwind label %186

; <label>:185:                                    ; preds = %183
  store %class.Point* %184, %class.Point** %17, align 8
  br label %225

; <label>:186:                                    ; preds = %183, %173, %168, %166, %161, %154, %152, %135
  %187 = landingpad { i8*, i32 }
          catch i8* null
  %188 = extractvalue { i8*, i32 } %187, 0
  store i8* %188, i8** %18, align 8
  %189 = extractvalue { i8*, i32 } %187, 1
  store i32 %189, i32* %19, align 4
  br label %190

; <label>:190:                                    ; preds = %186
  %191 = load i8*, i8** %18, align 8
  %192 = call i8* @__cxa_begin_catch(i8* %191) #12
  %193 = load %class.Point*, %class.Point** %17, align 8
  %194 = icmp ne %class.Point* %193, null
  br i1 %194, label %212, label %195

; <label>:195:                                    ; preds = %190
  %196 = load %class.Point*, %class.Point** %16, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds %class.Point, %class.Point* %196, i64 %197
  %199 = load %class.Point*, %class.Point** %16, align 8
  %200 = load i64, i64* %14, align 8
  %201 = getelementptr inbounds %class.Point, %class.Point* %199, i64 %200
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %class.Point, %class.Point* %201, i64 %202
  %204 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %205 = invoke dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %204)
          to label %206 unwind label %208

; <label>:206:                                    ; preds = %195
  invoke void @_ZSt8_DestroyIP5PointILi3EES1_EvT_S3_RSaIT0_E(%class.Point* %198, %class.Point* %203, %"class.std::allocator.13"* dereferenceable(1) %205)
          to label %207 unwind label %208

; <label>:207:                                    ; preds = %206
  br label %219

; <label>:208:                                    ; preds = %223, %219, %217, %212, %206, %195
  %209 = landingpad { i8*, i32 }
          cleanup
  %210 = extractvalue { i8*, i32 } %209, 0
  store i8* %210, i8** %18, align 8
  %211 = extractvalue { i8*, i32 } %209, 1
  store i32 %211, i32* %19, align 4
  invoke void @__cxa_end_catch()
          to label %224 unwind label %282

; <label>:212:                                    ; preds = %190
  %213 = load %class.Point*, %class.Point** %16, align 8
  %214 = load %class.Point*, %class.Point** %17, align 8
  %215 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %216 = invoke dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %215)
          to label %217 unwind label %208

; <label>:217:                                    ; preds = %212
  invoke void @_ZSt8_DestroyIP5PointILi3EES1_EvT_S3_RSaIT0_E(%class.Point* %213, %class.Point* %214, %"class.std::allocator.13"* dereferenceable(1) %216)
          to label %218 unwind label %208

; <label>:218:                                    ; preds = %217
  br label %219

; <label>:219:                                    ; preds = %218, %207
  %220 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %221 = load %class.Point*, %class.Point** %16, align 8
  %222 = load i64, i64* %13, align 8
  invoke void @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.12"* %220, %class.Point* %221, i64 %222)
          to label %223 unwind label %208

; <label>:223:                                    ; preds = %219
  invoke void @__cxa_rethrow() #15
          to label %285 unwind label %208

; <label>:224:                                    ; preds = %208
  br label %277

; <label>:225:                                    ; preds = %185
  %226 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %227 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %226, i32 0, i32 0
  %228 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %227 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %229 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %228, i32 0, i32 0
  %230 = load %class.Point*, %class.Point** %229, align 8
  %231 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %232 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %231, i32 0, i32 0
  %233 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %232 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %234 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %233, i32 0, i32 1
  %235 = load %class.Point*, %class.Point** %234, align 8
  %236 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %237 = call dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %236)
  call void @_ZSt8_DestroyIP5PointILi3EES1_EvT_S3_RSaIT0_E(%class.Point* %230, %class.Point* %235, %"class.std::allocator.13"* dereferenceable(1) %237)
  %238 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %239 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %240 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %239, i32 0, i32 0
  %241 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %240 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %242 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %241, i32 0, i32 0
  %243 = load %class.Point*, %class.Point** %242, align 8
  %244 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %245 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %244, i32 0, i32 0
  %246 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %245 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %247 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %246, i32 0, i32 2
  %248 = load %class.Point*, %class.Point** %247, align 8
  %249 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %250 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %249, i32 0, i32 0
  %251 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %250 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %252 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %251, i32 0, i32 0
  %253 = load %class.Point*, %class.Point** %252, align 8
  %254 = ptrtoint %class.Point* %248 to i64
  %255 = ptrtoint %class.Point* %253 to i64
  %256 = sub i64 %254, %255
  %257 = sdiv exact i64 %256, 24
  call void @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.12"* %238, %class.Point* %243, i64 %257)
  %258 = load %class.Point*, %class.Point** %16, align 8
  %259 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %260 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %259, i32 0, i32 0
  %261 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %260 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %262 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %261, i32 0, i32 0
  store %class.Point* %258, %class.Point** %262, align 8
  %263 = load %class.Point*, %class.Point** %17, align 8
  %264 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %265 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %264, i32 0, i32 0
  %266 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %265 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %267 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %266, i32 0, i32 1
  store %class.Point* %263, %class.Point** %267, align 8
  %268 = load %class.Point*, %class.Point** %16, align 8
  %269 = load i64, i64* %13, align 8
  %270 = getelementptr inbounds %class.Point, %class.Point* %268, i64 %269
  %271 = bitcast %"class.std::vector.11"* %21 to %"struct.std::_Vector_base.12"*
  %272 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %271, i32 0, i32 0
  %273 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %272 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %274 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %273, i32 0, i32 2
  store %class.Point* %270, %class.Point** %274, align 8
  br label %275

; <label>:275:                                    ; preds = %225, %134
  br label %276

; <label>:276:                                    ; preds = %275, %4
  ret void

; <label>:277:                                    ; preds = %224
  %278 = load i8*, i8** %18, align 8
  %279 = load i32, i32* %19, align 4
  %280 = insertvalue { i8*, i32 } undef, i8* %278, 0
  %281 = insertvalue { i8*, i32 } %280, i32 %279, 1
  resume { i8*, i32 } %281

; <label>:282:                                    ; preds = %208
  %283 = landingpad { i8*, i32 }
          catch i8* null
  %284 = extractvalue { i8*, i32 } %283, 0
  call void @__clang_call_terminate(i8* %284) #10
  unreachable

; <label>:285:                                    ; preds = %223
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EE3endEv(%"class.std::vector.11"*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.129", align 8
  %3 = alloca %"class.std::vector.11"*, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %3, align 8
  %4 = load %"class.std::vector.11"*, %"class.std::vector.11"** %3, align 8
  %5 = bitcast %"class.std::vector.11"* %4 to %"struct.std::_Vector_base.12"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.129"* %2, %class.Point** dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %2, i32 0, i32 0
  %10 = load %class.Point*, %class.Point** %9, align 8
  ret %class.Point* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI5PointILi3EESaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.11"*, %class.Point*) #0 comdat align 2 {
  %3 = alloca %"class.std::vector.11"*, align 8
  %4 = alloca %class.Point*, align 8
  %5 = alloca i64, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  %6 = load %"class.std::vector.11"*, %"class.std::vector.11"** %3, align 8
  %7 = bitcast %"class.std::vector.11"* %6 to %"struct.std::_Vector_base.12"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %8 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %9, i32 0, i32 1
  %11 = load %class.Point*, %class.Point** %10, align 8
  %12 = load %class.Point*, %class.Point** %4, align 8
  %13 = ptrtoint %class.Point* %11 to i64
  %14 = ptrtoint %class.Point* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 24
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %2
  %20 = load %class.Point*, %class.Point** %4, align 8
  %21 = bitcast %"class.std::vector.11"* %6 to %"struct.std::_Vector_base.12"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %21, i32 0, i32 0
  %23 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %22 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %23, i32 0, i32 1
  %25 = load %class.Point*, %class.Point** %24, align 8
  %26 = bitcast %"class.std::vector.11"* %6 to %"struct.std::_Vector_base.12"*
  %27 = call dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %26)
  call void @_ZSt8_DestroyIP5PointILi3EES1_EvT_S3_RSaIT0_E(%class.Point* %20, %class.Point* %25, %"class.std::allocator.13"* dereferenceable(1) %27)
  %28 = load %class.Point*, %class.Point** %4, align 8
  %29 = bitcast %"class.std::vector.11"* %6 to %"struct.std::_Vector_base.12"*
  %30 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %29, i32 0, i32 0
  %31 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %30 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %31, i32 0, i32 1
  store %class.Point* %28, %class.Point** %32, align 8
  br label %33

; <label>:33:                                     ; preds = %19, %2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP5PointILi3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.129"* dereferenceable(8), %"class.__gnu_cxx::__normal_iterator.129"* dereferenceable(8)) #0 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.129"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.129"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.129"* %0, %"class.__gnu_cxx::__normal_iterator.129"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.129"* %1, %"class.__gnu_cxx::__normal_iterator.129"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.129"*, %"class.__gnu_cxx::__normal_iterator.129"** %3, align 8
  %6 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %5)
  %7 = load %class.Point*, %class.Point** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.129"*, %"class.__gnu_cxx::__normal_iterator.129"** %4, align 8
  %9 = call dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"* %8)
  %10 = load %class.Point*, %class.Point** %9, align 8
  %11 = ptrtoint %class.Point* %7 to i64
  %12 = ptrtoint %class.Point* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 24
  ret i64 %14
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt22__uninitialized_move_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point*, %class.Point*, %class.Point*, %"class.std::allocator.13"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca %class.Point*, align 8
  %8 = alloca %"class.std::allocator.13"*, align 8
  store %class.Point* %0, %class.Point** %5, align 8
  store %class.Point* %1, %class.Point** %6, align 8
  store %class.Point* %2, %class.Point** %7, align 8
  store %"class.std::allocator.13"* %3, %"class.std::allocator.13"** %8, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  %11 = load %class.Point*, %class.Point** %7, align 8
  %12 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %8, align 8
  %13 = call %class.Point* @_ZSt22__uninitialized_copy_aIP5PointILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E(%class.Point* %9, %class.Point* %10, %class.Point* %11, %"class.std::allocator.13"* dereferenceable(1) %12)
  ret %class.Point* %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.13"* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.12"*, align 8
  store %"struct.std::_Vector_base.12"* %0, %"struct.std::_Vector_base.12"** %2, align 8
  %3 = load %"struct.std::_Vector_base.12"*, %"struct.std::_Vector_base.12"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %4 to %"class.std::allocator.13"*
  ret %"class.std::allocator.13"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt13copy_backwardIP5PointILi3EES2_ET0_T_S4_S3_(%class.Point*, %class.Point*, %class.Point*) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = call %class.Point* @_ZSt12__miter_baseIP5PointILi3EEET_S3_(%class.Point* %7)
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = call %class.Point* @_ZSt12__miter_baseIP5PointILi3EEET_S3_(%class.Point* %9)
  %11 = load %class.Point*, %class.Point** %6, align 8
  %12 = call %class.Point* @_ZSt23__copy_move_backward_a2ILb0EP5PointILi3EES2_ET1_T0_S4_S3_(%class.Point* %8, %class.Point* %10, %class.Point* %11)
  ret %class.Point* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.Point** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.129"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.129"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.129"* %0, %"class.__gnu_cxx::__normal_iterator.129"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.129"*, %"class.__gnu_cxx::__normal_iterator.129"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %3, i32 0, i32 0
  ret %class.Point** %4
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIP5PointILi3EES1_EvT_S3_RKT0_(%class.Point*, %class.Point*, %class.Point* dereferenceable(24)) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = call %class.Point* @_ZSt12__niter_baseIP5PointILi3EEET_S3_(%class.Point* %7)
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = call %class.Point* @_ZSt12__niter_baseIP5PointILi3EEET_S3_(%class.Point* %9)
  %11 = load %class.Point*, %class.Point** %6, align 8
  call void @_ZSt8__fill_aIP5PointILi3EES1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(%class.Point* %8, %class.Point* %10, %class.Point* dereferenceable(24) %11)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt24__uninitialized_fill_n_aIP5PointILi3EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Point*, i64, %class.Point* dereferenceable(24), %"class.std::allocator.13"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %class.Point*, align 8
  %8 = alloca %"class.std::allocator.13"*, align 8
  store %class.Point* %0, %class.Point** %5, align 8
  store i64 %1, i64* %6, align 8
  store %class.Point* %2, %class.Point** %7, align 8
  store %"class.std::allocator.13"* %3, %"class.std::allocator.13"** %8, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %class.Point*, %class.Point** %7, align 8
  %12 = call %class.Point* @_ZSt20uninitialized_fill_nIP5PointILi3EEmS1_ET_S3_T0_RKT1_(%class.Point* %9, i64 %10, %class.Point* dereferenceable(24) %11)
  ret %class.Point* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.11"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.11"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector.11"*, %"class.std::vector.11"** %4, align 8
  %10 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE8max_sizeEv(%"class.std::vector.11"* %9)
  %11 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %9)
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %16) #15
  unreachable

; <label>:17:                                     ; preds = %3
  %18 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %9)
  %19 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %9)
  store i64 %19, i64* %8, align 8
  %20 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %8, i64* dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE4sizeEv(%"class.std::vector.11"* %9)
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE8max_sizeEv(%"class.std::vector.11"* %9)
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26, %17
  %31 = call i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE8max_sizeEv(%"class.std::vector.11"* %9)
  br label %34

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

; <label>:34:                                     ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZNSt6vectorI5PointILi3EESaIS1_EE5beginEv(%"class.std::vector.11"*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.129", align 8
  %3 = alloca %"class.std::vector.11"*, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %3, align 8
  %4 = load %"class.std::vector.11"*, %"class.std::vector.11"** %3, align 8
  %5 = bitcast %"class.std::vector.11"* %4 to %"struct.std::_Vector_base.12"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.129"* %2, %class.Point** dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %2, i32 0, i32 0
  %10 = load %class.Point*, %class.Point** %9, align 8
  ret %class.Point* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.12"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.12"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.12"* %0, %"struct.std::_Vector_base.12"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.12"*, %"struct.std::_Vector_base.12"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %9 to %"class.std::allocator.13"*
  %11 = load i64, i64* %4, align 8
  %12 = call %class.Point* @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E8allocateERS3_m(%"class.std::allocator.13"* dereferenceable(1) %10, i64 %11)
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = phi %class.Point* [ %12, %8 ], [ null, %13 ]
  ret %class.Point* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi3EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point*, %class.Point*, %class.Point*, %"class.std::allocator.13"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca %class.Point*, align 8
  %8 = alloca %"class.std::allocator.13"*, align 8
  store %class.Point* %0, %class.Point** %5, align 8
  store %class.Point* %1, %class.Point** %6, align 8
  store %class.Point* %2, %class.Point** %7, align 8
  store %"class.std::allocator.13"* %3, %"class.std::allocator.13"** %8, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  %11 = load %class.Point*, %class.Point** %7, align 8
  %12 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %8, align 8
  %13 = call %class.Point* @_ZSt22__uninitialized_copy_aIP5PointILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E(%class.Point* %9, %class.Point* %10, %class.Point* %11, %"class.std::allocator.13"* dereferenceable(1) %12)
  ret %class.Point* %13
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP5PointILi3EES1_EvT_S3_RSaIT0_E(%class.Point*, %class.Point*, %"class.std::allocator.13"* dereferenceable(1)) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %"class.std::allocator.13"*, align 8
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %"class.std::allocator.13"* %2, %"class.std::allocator.13"** %6, align 8
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = load %class.Point*, %class.Point** %5, align 8
  call void @_ZSt8_DestroyIP5PointILi3EEEvT_S3_(%class.Point* %7, %class.Point* %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI5PointILi3EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.12"*, %class.Point*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.12"*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.12"* %0, %"struct.std::_Vector_base.12"** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.12"*, %"struct.std::_Vector_base.12"** %4, align 8
  %8 = load %class.Point*, %class.Point** %5, align 8
  %9 = icmp ne %class.Point* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %11 to %"class.std::allocator.13"*
  %13 = load %class.Point*, %class.Point** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.13"* dereferenceable(1) %12, %class.Point* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt22__uninitialized_copy_aIP5PointILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E(%class.Point*, %class.Point*, %class.Point*, %"class.std::allocator.13"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca %class.Point*, align 8
  %8 = alloca %"class.std::allocator.13"*, align 8
  store %class.Point* %0, %class.Point** %5, align 8
  store %class.Point* %1, %class.Point** %6, align 8
  store %class.Point* %2, %class.Point** %7, align 8
  store %"class.std::allocator.13"* %3, %"class.std::allocator.13"** %8, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  %11 = load %class.Point*, %class.Point** %7, align 8
  %12 = call %class.Point* @_ZSt18uninitialized_copyIP5PointILi3EES2_ET0_T_S4_S3_(%class.Point* %9, %class.Point* %10, %class.Point* %11)
  ret %class.Point* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt18uninitialized_copyIP5PointILi3EES2_ET0_T_S4_S3_(%class.Point*, %class.Point*, %class.Point*) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca i8, align 1
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %class.Point*, %class.Point** %4, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  %11 = call %class.Point* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP5PointILi3EES4_EET0_T_S6_S5_(%class.Point* %8, %class.Point* %9, %class.Point* %10)
  ret %class.Point* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP5PointILi3EES4_EET0_T_S6_S5_(%class.Point*, %class.Point*, %class.Point*) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca %class.Point*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  store %class.Point* %10, %class.Point** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %21, %3
  %12 = load %class.Point*, %class.Point** %4, align 8
  %13 = load %class.Point*, %class.Point** %5, align 8
  %14 = icmp ne %class.Point* %12, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %11
  %16 = load %class.Point*, %class.Point** %7, align 8
  %17 = invoke %class.Point* @_ZSt11__addressofI5PointILi3EEEPT_RS2_(%class.Point* dereferenceable(24) %16)
          to label %18 unwind label %26

; <label>:18:                                     ; preds = %15
  %19 = load %class.Point*, %class.Point** %4, align 8
  invoke void @_ZSt10_ConstructI5PointILi3EES1_EvPT_RKT0_(%class.Point* %17, %class.Point* dereferenceable(24) %19)
          to label %20 unwind label %26

; <label>:20:                                     ; preds = %18
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load %class.Point*, %class.Point** %4, align 8
  %23 = getelementptr inbounds %class.Point, %class.Point* %22, i32 1
  store %class.Point* %23, %class.Point** %4, align 8
  %24 = load %class.Point*, %class.Point** %7, align 8
  %25 = getelementptr inbounds %class.Point, %class.Point* %24, i32 1
  store %class.Point* %25, %class.Point** %7, align 8
  br label %11

; <label>:26:                                     ; preds = %18, %15
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %8, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @__cxa_begin_catch(i8* %31) #12
  %33 = load %class.Point*, %class.Point** %6, align 8
  %34 = load %class.Point*, %class.Point** %7, align 8
  invoke void @_ZSt8_DestroyIP5PointILi3EEEvT_S3_(%class.Point* %33, %class.Point* %34)
          to label %35 unwind label %38

; <label>:35:                                     ; preds = %30
  invoke void @__cxa_rethrow() #15
          to label %52 unwind label %38

; <label>:36:                                     ; preds = %11
  %37 = load %class.Point*, %class.Point** %7, align 8
  ret %class.Point* %37

; <label>:38:                                     ; preds = %35, %30
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %8, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %42 unwind label %49

; <label>:42:                                     ; preds = %38
  br label %44
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = insertvalue { i8*, i32 } undef, i8* %45, 0
  %48 = insertvalue { i8*, i32 } %47, i32 %46, 1
  resume { i8*, i32 } %48

; <label>:49:                                     ; preds = %38
  %50 = landingpad { i8*, i32 }
          catch i8* null
  %51 = extractvalue { i8*, i32 } %50, 0
  call void @__clang_call_terminate(i8* %51) #10
  unreachable

; <label>:52:                                     ; preds = %35
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructI5PointILi3EES1_EvPT_RKT0_(%class.Point*, %class.Point* dereferenceable(24)) #0 comdat {
  %3 = alloca %class.Point*, align 8
  %4 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  %5 = load %class.Point*, %class.Point** %3, align 8
  %6 = bitcast %class.Point* %5 to i8*
  %7 = bitcast i8* %6 to %class.Point*
  %8 = load %class.Point*, %class.Point** %4, align 8
  call void @_ZN5PointILi3EEC2ERKS0_(%class.Point* %7, %class.Point* dereferenceable(24) %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point* @_ZSt11__addressofI5PointILi3EEEPT_RS2_(%class.Point* dereferenceable(24)) #1 comdat {
  %2 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %2, align 8
  %3 = load %class.Point*, %class.Point** %2, align 8
  ret %class.Point* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP5PointILi3EEEvT_S3_(%class.Point*, %class.Point*) #0 comdat {
  %3 = alloca %class.Point*, align 8
  %4 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  %5 = load %class.Point*, %class.Point** %3, align 8
  %6 = load %class.Point*, %class.Point** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointILi3EEEEvT_S5_(%class.Point* %5, %class.Point* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointILi3EEEEvT_S5_(%class.Point*, %class.Point*) #1 comdat align 2 {
  %3 = alloca %class.Point*, align 8
  %4 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt23__copy_move_backward_a2ILb0EP5PointILi3EES2_ET1_T0_S4_S3_(%class.Point*, %class.Point*, %class.Point*) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  %7 = load %class.Point*, %class.Point** %4, align 8
  %8 = call %class.Point* @_ZSt12__niter_baseIP5PointILi3EEET_S3_(%class.Point* %7)
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = call %class.Point* @_ZSt12__niter_baseIP5PointILi3EEET_S3_(%class.Point* %9)
  %11 = load %class.Point*, %class.Point** %6, align 8
  %12 = call %class.Point* @_ZSt12__niter_baseIP5PointILi3EEET_S3_(%class.Point* %11)
  %13 = call %class.Point* @_ZSt22__copy_move_backward_aILb0EP5PointILi3EES2_ET1_T0_S4_S3_(%class.Point* %8, %class.Point* %10, %class.Point* %12)
  %14 = call %class.Point* @_ZSt12__niter_wrapIP5PointILi3EEET_RKS3_S3_(%class.Point** dereferenceable(8) %6, %class.Point* %13)
  ret %class.Point* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point* @_ZSt12__miter_baseIP5PointILi3EEET_S3_(%class.Point*) #1 comdat {
  %2 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %2, align 8
  %3 = load %class.Point*, %class.Point** %2, align 8
  ret %class.Point* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point* @_ZSt12__niter_wrapIP5PointILi3EEET_RKS3_S3_(%class.Point** dereferenceable(8), %class.Point*) #1 comdat {
  %3 = alloca %class.Point**, align 8
  %4 = alloca %class.Point*, align 8
  store %class.Point** %0, %class.Point*** %3, align 8
  store %class.Point* %1, %class.Point** %4, align 8
  %5 = load %class.Point*, %class.Point** %4, align 8
  ret %class.Point* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt22__copy_move_backward_aILb0EP5PointILi3EES2_ET1_T0_S4_S3_(%class.Point*, %class.Point*, %class.Point*) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca i8, align 1
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  store i8 0, i8* %7, align 1
  %8 = load %class.Point*, %class.Point** %4, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  %11 = call %class.Point* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP5PointILi3EES5_EET0_T_S7_S6_(%class.Point* %8, %class.Point* %9, %class.Point* %10)
  ret %class.Point* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point* @_ZSt12__niter_baseIP5PointILi3EEET_S3_(%class.Point*) #1 comdat {
  %2 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %2, align 8
  %3 = load %class.Point*, %class.Point** %2, align 8
  ret %class.Point* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP5PointILi3EES5_EET0_T_S7_S6_(%class.Point*, %class.Point*, %class.Point*) #0 comdat align 2 {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca i64, align 8
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  %8 = load %class.Point*, %class.Point** %5, align 8
  %9 = load %class.Point*, %class.Point** %4, align 8
  %10 = ptrtoint %class.Point* %8 to i64
  %11 = ptrtoint %class.Point* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 24
  store i64 %13, i64* %7, align 8
  br label %14

; <label>:14:                                     ; preds = %23, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %14
  %18 = load %class.Point*, %class.Point** %5, align 8
  %19 = getelementptr inbounds %class.Point, %class.Point* %18, i32 -1
  store %class.Point* %19, %class.Point** %5, align 8
  %20 = load %class.Point*, %class.Point** %6, align 8
  %21 = getelementptr inbounds %class.Point, %class.Point* %20, i32 -1
  store %class.Point* %21, %class.Point** %6, align 8
  %22 = call dereferenceable(24) %class.Point* @_ZN5PointILi3EEaSERKS0_(%class.Point* %21, %class.Point* dereferenceable(24) %19)
  br label %23

; <label>:23:                                     ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %7, align 8
  br label %14

; <label>:26:                                     ; preds = %14
  %27 = load %class.Point*, %class.Point** %6, align 8
  ret %class.Point* %27
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8__fill_aIP5PointILi3EES1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(%class.Point*, %class.Point*, %class.Point* dereferenceable(24)) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca %class.Point*, align 8
  store %class.Point* %0, %class.Point** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  br label %7

; <label>:7:                                      ; preds = %15, %3
  %8 = load %class.Point*, %class.Point** %4, align 8
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = icmp ne %class.Point* %8, %9
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %7
  %12 = load %class.Point*, %class.Point** %6, align 8
  %13 = load %class.Point*, %class.Point** %4, align 8
  %14 = call dereferenceable(24) %class.Point* @_ZN5PointILi3EEaSERKS0_(%class.Point* %13, %class.Point* dereferenceable(24) %12)
  br label %15

; <label>:15:                                     ; preds = %11
  %16 = load %class.Point*, %class.Point** %4, align 8
  %17 = getelementptr inbounds %class.Point, %class.Point* %16, i32 1
  store %class.Point* %17, %class.Point** %4, align 8
  br label %7

; <label>:18:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZSt20uninitialized_fill_nIP5PointILi3EEmS1_ET_S3_T0_RKT1_(%class.Point*, i64, %class.Point* dereferenceable(24)) #0 comdat {
  %4 = alloca %class.Point*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca i8, align 1
  store %class.Point* %0, %class.Point** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %class.Point*, %class.Point** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %class.Point*, %class.Point** %6, align 8
  %11 = call %class.Point* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5PointILi3EEmS3_EET_S5_T0_RKT1_(%class.Point* %8, i64 %9, %class.Point* dereferenceable(24) %10)
  ret %class.Point* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5PointILi3EEmS3_EET_S5_T0_RKT1_(%class.Point*, i64, %class.Point* dereferenceable(24)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Point*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Point*, align 8
  %7 = alloca %class.Point*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.Point* %0, %class.Point** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Point* %2, %class.Point** %6, align 8
  %10 = load %class.Point*, %class.Point** %4, align 8
  store %class.Point* %10, %class.Point** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %20, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %11
  %15 = load %class.Point*, %class.Point** %7, align 8
  %16 = invoke %class.Point* @_ZSt11__addressofI5PointILi3EEEPT_RS2_(%class.Point* dereferenceable(24) %15)
          to label %17 unwind label %25

; <label>:17:                                     ; preds = %14
  %18 = load %class.Point*, %class.Point** %6, align 8
  invoke void @_ZSt10_ConstructI5PointILi3EES1_EvPT_RKT0_(%class.Point* %16, %class.Point* dereferenceable(24) %18)
          to label %19 unwind label %25

; <label>:19:                                     ; preds = %17
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %class.Point*, %class.Point** %7, align 8
  %24 = getelementptr inbounds %class.Point, %class.Point* %23, i32 1
  store %class.Point* %24, %class.Point** %7, align 8
  br label %11

; <label>:25:                                     ; preds = %17, %14
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @__cxa_begin_catch(i8* %30) #12
  %32 = load %class.Point*, %class.Point** %4, align 8
  %33 = load %class.Point*, %class.Point** %7, align 8
  invoke void @_ZSt8_DestroyIP5PointILi3EEEvT_S3_(%class.Point* %32, %class.Point* %33)
          to label %34 unwind label %37

; <label>:34:                                     ; preds = %29
  invoke void @__cxa_rethrow() #15
          to label %51 unwind label %37

; <label>:35:                                     ; preds = %11
  %36 = load %class.Point*, %class.Point** %7, align 8
  ret %class.Point* %36

; <label>:37:                                     ; preds = %34, %29
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %8, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %41 unwind label %48

; <label>:41:                                     ; preds = %37
  br label %43
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1
  resume { i8*, i32 } %47

; <label>:48:                                     ; preds = %37
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #10
  unreachable

; <label>:51:                                     ; preds = %34
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI5PointILi3EESaIS1_EE8max_sizeEv(%"class.std::vector.11"*) #0 comdat align 2 {
  %2 = alloca %"class.std::vector.11"*, align 8
  store %"class.std::vector.11"* %0, %"class.std::vector.11"** %2, align 8
  %3 = load %"class.std::vector.11"*, %"class.std::vector.11"** %2, align 8
  %4 = bitcast %"class.std::vector.11"* %3 to %"struct.std::_Vector_base.12"*
  %5 = call dereferenceable(1) %"class.std::allocator.13"* @_ZNKSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"* %4)
  %6 = call i64 @_ZNSt6vectorI5PointILi3EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.13"* dereferenceable(1) %5)
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8), i64* dereferenceable(8)) #1 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorI5PointILi3EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.13"* dereferenceable(1)) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.13"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.13"* %0, %"class.std::allocator.13"** %2, align 8
  store i64 384307168202282325, i64* %3, align 8
  %5 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %2, align 8
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E8max_sizeERKS3_(%"class.std::allocator.13"* dereferenceable(1) %5)
  store i64 %6, i64* %4, align 8
  %7 = call dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.13"* @_ZNKSt12_Vector_baseI5PointILi3EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.12"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.12"*, align 8
  store %"struct.std::_Vector_base.12"* %0, %"struct.std::_Vector_base.12"** %2, align 8
  %3 = load %"struct.std::_Vector_base.12"*, %"struct.std::_Vector_base.12"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.12", %"struct.std::_Vector_base.12"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Point<3>, std::allocator<Point<3> > >::_Vector_impl"* %4 to %"class.std::allocator.13"*
  ret %"class.std::allocator.13"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E8max_sizeERKS3_(%"class.std::allocator.13"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.13"*, align 8
  store %"class.std::allocator.13"* %0, %"class.std::allocator.13"** %2, align 8
  %3 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %2, align 8
  %4 = bitcast %"class.std::allocator.13"* %3 to %"class.__gnu_cxx::new_allocator.14"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorI5PointILi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"* %4) #12
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI5PointILi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %0, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  ret i64 384307168202282325
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP5PointILi3EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.129"*, %class.Point** dereferenceable(8)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.129"*, align 8
  %4 = alloca %class.Point**, align 8
  store %"class.__gnu_cxx::__normal_iterator.129"* %0, %"class.__gnu_cxx::__normal_iterator.129"** %3, align 8
  store %class.Point** %1, %class.Point*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.129"*, %"class.__gnu_cxx::__normal_iterator.129"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.129", %"class.__gnu_cxx::__normal_iterator.129"* %5, i32 0, i32 0
  %7 = load %class.Point**, %class.Point*** %4, align 8
  %8 = load %class.Point*, %class.Point** %7, align 8
  store %class.Point* %8, %class.Point** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E8allocateERS3_m(%"class.std::allocator.13"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.13"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.13"* %0, %"class.std::allocator.13"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %3, align 8
  %6 = bitcast %"class.std::allocator.13"* %5 to %"class.__gnu_cxx::new_allocator.14"*
  %7 = load i64, i64* %4, align 8
  %8 = call %class.Point* @_ZN9__gnu_cxx13new_allocatorI5PointILi3EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.14"* %6, i64 %7, i8* null)
  ret %class.Point* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point* @_ZN9__gnu_cxx13new_allocatorI5PointILi3EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.14"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %0, %"class.__gnu_cxx::new_allocator.14"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorI5PointILi3EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 24
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %class.Point*
  ret %class.Point* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi3EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.13"* dereferenceable(1), %class.Point*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.13"*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.13"* %0, %"class.std::allocator.13"** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %4, align 8
  %8 = bitcast %"class.std::allocator.13"* %7 to %"class.__gnu_cxx::new_allocator.14"*
  %9 = load %class.Point*, %class.Point** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI5PointILi3EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.14"* %8, %class.Point* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointILi3EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.14"*, %class.Point*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  %5 = alloca %class.Point*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %0, %"class.__gnu_cxx::new_allocator.14"** %4, align 8
  store %class.Point* %1, %class.Point** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %4, align 8
  %8 = load %class.Point*, %class.Point** %5, align 8
  %9 = bitcast %class.Point* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEpLERKS0_(%class.Tensor*, %class.Tensor* dereferenceable(24)) #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca %class.Tensor*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %6 = load %class.Tensor*, %class.Tensor** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor*, %class.Tensor** %4, align 8
  %12 = getelementptr inbounds %class.Tensor, %class.Tensor* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.Tensor, %class.Tensor* %6, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fadd double %21, %16
  store double %22, double* %20, align 8
  br label %23

; <label>:23:                                     ; preds = %10
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

; <label>:26:                                     ; preds = %7
  ret %class.Tensor* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5PointILi3EEC2ERK6TensorILi1ELi3EE(%class.Point*, %class.Tensor* dereferenceable(24)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Point*, align 8
  %4 = alloca %class.Tensor*, align 8
  store %class.Point* %0, %class.Point** %3, align 8
  store %class.Tensor* %1, %class.Tensor** %4, align 8
  %5 = load %class.Point*, %class.Point** %3, align 8
  %6 = bitcast %class.Point* %5 to %class.Tensor*
  %7 = load %class.Tensor*, %class.Tensor** %4, align 8
  call void @_ZN6TensorILi1ELi3EEC2ERKS0_(%class.Tensor* %6, %class.Tensor* dereferenceable(24) %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.Tensor* @_ZN6TensorILi1ELi3EEdVERKd(%class.Tensor*, double* dereferenceable(8)) #1 comdat align 2 {
  %3 = alloca %class.Tensor*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor* %0, %class.Tensor** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load %class.Tensor*, %class.Tensor** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %7
  %11 = load double*, double** %4, align 8
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %class.Tensor, %class.Tensor* %6, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = fdiv double %17, %12
  store double %18, double* %16, align 8
  br label %19

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

; <label>:22:                                     ; preds = %7
  ret %class.Tensor* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"*) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.16"*, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %2, align 8
  %3 = load %"class.std::vector.16"*, %"class.std::vector.16"** %2, align 8
  %4 = bitcast %"class.std::vector.16"* %3 to %"struct.std::_Vector_base.17"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %5 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %class.Point.21*, %class.Point.21** %7, align 8
  %9 = bitcast %"class.std::vector.16"* %3 to %"struct.std::_Vector_base.17"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %10 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %class.Point.21*, %class.Point.21** %12, align 8
  %14 = ptrtoint %class.Point.21* %8 to i64
  %15 = ptrtoint %class.Point.21* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  ret i64 %17
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI5PointILi2EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(%"class.std::vector.16"*, %class.Point.21*, i64, %class.Point.21* dereferenceable(16)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.130", align 8
  %6 = alloca %"class.std::vector.16"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %class.Point.21*, align 8
  %9 = alloca %class.Point.21, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.130", align 8
  %12 = alloca %class.Point.21*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator.130", align 8
  %16 = alloca %class.Point.21*, align 8
  %17 = alloca %class.Point.21*, align 8
  %18 = alloca i8*
  %19 = alloca i32
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %5, i32 0, i32 0
  store %class.Point.21* %1, %class.Point.21** %20, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %6, align 8
  store i64 %2, i64* %7, align 8
  store %class.Point.21* %3, %class.Point.21** %8, align 8
  %21 = load %"class.std::vector.16"*, %"class.std::vector.16"** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %276

; <label>:24:                                     ; preds = %4
  %25 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %25, i32 0, i32 0
  %27 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %26 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %28 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %27, i32 0, i32 2
  %29 = load %class.Point.21*, %class.Point.21** %28, align 8
  %30 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %30, i32 0, i32 0
  %32 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %31 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %32, i32 0, i32 1
  %34 = load %class.Point.21*, %class.Point.21** %33, align 8
  %35 = ptrtoint %class.Point.21* %29 to i64
  %36 = ptrtoint %class.Point.21* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 16
  %39 = load i64, i64* %7, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %135

; <label>:41:                                     ; preds = %24
  %42 = load %class.Point.21*, %class.Point.21** %8, align 8
  call void @_ZN5PointILi2EEC2ERKS0_(%class.Point.21* %9, %class.Point.21* dereferenceable(16) %42)
  %43 = call %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EE3endEv(%"class.std::vector.16"* %21)
  %44 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %11, i32 0, i32 0
  store %class.Point.21* %43, %class.Point.21** %44, align 8
  %45 = call i64 @_ZN9__gnu_cxxmiIP5PointILi2EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.130"* dereferenceable(8) %11, %"class.__gnu_cxx::__normal_iterator.130"* dereferenceable(8) %5)
  store i64 %45, i64* %10, align 8
  %46 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %46, i32 0, i32 0
  %48 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %47 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %49 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %48, i32 0, i32 1
  %50 = load %class.Point.21*, %class.Point.21** %49, align 8
  store %class.Point.21* %50, %class.Point.21** %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %97

; <label>:54:                                     ; preds = %41
  %55 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %56 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %55, i32 0, i32 0
  %57 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %56 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %58 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %57, i32 0, i32 1
  %59 = load %class.Point.21*, %class.Point.21** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds %class.Point.21, %class.Point.21* %59, i64 %61
  %63 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %63, i32 0, i32 0
  %65 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %64 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %66 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %65, i32 0, i32 1
  %67 = load %class.Point.21*, %class.Point.21** %66, align 8
  %68 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %69 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %68, i32 0, i32 0
  %70 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %69 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %71 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %70, i32 0, i32 1
  %72 = load %class.Point.21*, %class.Point.21** %71, align 8
  %73 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %74 = call dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %73)
  %75 = call %class.Point.21* @_ZSt22__uninitialized_move_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point.21* %62, %class.Point.21* %67, %class.Point.21* %72, %"class.std::allocator.18"* dereferenceable(1) %74)
  %76 = load i64, i64* %7, align 8
  %77 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %77, i32 0, i32 0
  %79 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %78 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %80 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %79, i32 0, i32 1
  %81 = load %class.Point.21*, %class.Point.21** %80, align 8
  %82 = getelementptr inbounds %class.Point.21, %class.Point.21* %81, i64 %76
  store %class.Point.21* %82, %class.Point.21** %80, align 8
  %83 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
  %84 = load %class.Point.21*, %class.Point.21** %83, align 8
  %85 = load %class.Point.21*, %class.Point.21** %12, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds %class.Point.21, %class.Point.21* %85, i64 %87
  %89 = load %class.Point.21*, %class.Point.21** %12, align 8
  %90 = call %class.Point.21* @_ZSt13copy_backwardIP5PointILi2EES2_ET0_T_S4_S3_(%class.Point.21* %84, %class.Point.21* %88, %class.Point.21* %89)
  %91 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
  %92 = load %class.Point.21*, %class.Point.21** %91, align 8
  %93 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
  %94 = load %class.Point.21*, %class.Point.21** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %class.Point.21, %class.Point.21* %94, i64 %95
  call void @_ZSt4fillIP5PointILi2EES1_EvT_S3_RKT0_(%class.Point.21* %92, %class.Point.21* %96, %class.Point.21* dereferenceable(16) %9)
  br label %134

; <label>:97:                                     ; preds = %41
  %98 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %99 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %98, i32 0, i32 0
  %100 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %99 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %101 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %100, i32 0, i32 1
  %102 = load %class.Point.21*, %class.Point.21** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = sub i64 %103, %104
  %106 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %107 = call dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %106)
  %108 = call %class.Point.21* @_ZSt24__uninitialized_fill_n_aIP5PointILi2EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Point.21* %102, i64 %105, %class.Point.21* dereferenceable(16) %9, %"class.std::allocator.18"* dereferenceable(1) %107)
  %109 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %110 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %109, i32 0, i32 0
  %111 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %110 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %112 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %111, i32 0, i32 1
  store %class.Point.21* %108, %class.Point.21** %112, align 8
  %113 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
  %114 = load %class.Point.21*, %class.Point.21** %113, align 8
  %115 = load %class.Point.21*, %class.Point.21** %12, align 8
  %116 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %117 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %116, i32 0, i32 0
  %118 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %117 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %119 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %118, i32 0, i32 1
  %120 = load %class.Point.21*, %class.Point.21** %119, align 8
  %121 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %122 = call dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %121)
  %123 = call %class.Point.21* @_ZSt22__uninitialized_move_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point.21* %114, %class.Point.21* %115, %class.Point.21* %120, %"class.std::allocator.18"* dereferenceable(1) %122)
  %124 = load i64, i64* %10, align 8
  %125 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %126 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %125, i32 0, i32 0
  %127 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %126 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %128 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %127, i32 0, i32 1
  %129 = load %class.Point.21*, %class.Point.21** %128, align 8
  %130 = getelementptr inbounds %class.Point.21, %class.Point.21* %129, i64 %124
  store %class.Point.21* %130, %class.Point.21** %128, align 8
  %131 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
  %132 = load %class.Point.21*, %class.Point.21** %131, align 8
  %133 = load %class.Point.21*, %class.Point.21** %12, align 8
  call void @_ZSt4fillIP5PointILi2EES1_EvT_S3_RKT0_(%class.Point.21* %132, %class.Point.21* %133, %class.Point.21* dereferenceable(16) %9)
  br label %134

; <label>:134:                                    ; preds = %97, %54
  br label %275

; <label>:135:                                    ; preds = %24
  %136 = load i64, i64* %7, align 8
  %137 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.16"* %21, i64 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i64 %137, i64* %13, align 8
  %138 = call %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EE5beginEv(%"class.std::vector.16"* %21)
  %139 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %15, i32 0, i32 0
  store %class.Point.21* %138, %class.Point.21** %139, align 8
  %140 = call i64 @_ZN9__gnu_cxxmiIP5PointILi2EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.130"* dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator.130"* dereferenceable(8) %15)
  store i64 %140, i64* %14, align 8
  %141 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %142 = load i64, i64* %13, align 8
  %143 = call %class.Point.21* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.17"* %141, i64 %142)
  store %class.Point.21* %143, %class.Point.21** %16, align 8
  %144 = load %class.Point.21*, %class.Point.21** %16, align 8
  store %class.Point.21* %144, %class.Point.21** %17, align 8
  %145 = load %class.Point.21*, %class.Point.21** %16, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds %class.Point.21, %class.Point.21* %145, i64 %146
  %148 = load i64, i64* %7, align 8
  %149 = load %class.Point.21*, %class.Point.21** %8, align 8
  %150 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %151 = invoke dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %150)
          to label %152 unwind label %186

; <label>:152:                                    ; preds = %135
  %153 = invoke %class.Point.21* @_ZSt24__uninitialized_fill_n_aIP5PointILi2EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Point.21* %147, i64 %148, %class.Point.21* dereferenceable(16) %149, %"class.std::allocator.18"* dereferenceable(1) %151)
          to label %154 unwind label %186

; <label>:154:                                    ; preds = %152
  store %class.Point.21* null, %class.Point.21** %17, align 8
  %155 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %156 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %155, i32 0, i32 0
  %157 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %156 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %158 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %157, i32 0, i32 0
  %159 = load %class.Point.21*, %class.Point.21** %158, align 8
  %160 = invoke dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
          to label %161 unwind label %186

; <label>:161:                                    ; preds = %154
  %162 = load %class.Point.21*, %class.Point.21** %160, align 8
  %163 = load %class.Point.21*, %class.Point.21** %16, align 8
  %164 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %165 = invoke dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %164)
          to label %166 unwind label %186

; <label>:166:                                    ; preds = %161
  %167 = invoke %class.Point.21* @_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point.21* %159, %class.Point.21* %162, %class.Point.21* %163, %"class.std::allocator.18"* dereferenceable(1) %165)
          to label %168 unwind label %186

; <label>:168:                                    ; preds = %166
  store %class.Point.21* %167, %class.Point.21** %17, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %class.Point.21*, %class.Point.21** %17, align 8
  %171 = getelementptr inbounds %class.Point.21, %class.Point.21* %170, i64 %169
  store %class.Point.21* %171, %class.Point.21** %17, align 8
  %172 = invoke dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
          to label %173 unwind label %186

; <label>:173:                                    ; preds = %168
  %174 = load %class.Point.21*, %class.Point.21** %172, align 8
  %175 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %176 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %175, i32 0, i32 0
  %177 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %176 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %178 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %177, i32 0, i32 1
  %179 = load %class.Point.21*, %class.Point.21** %178, align 8
  %180 = load %class.Point.21*, %class.Point.21** %17, align 8
  %181 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %182 = invoke dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %181)
          to label %183 unwind label %186

; <label>:183:                                    ; preds = %173
  %184 = invoke %class.Point.21* @_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point.21* %174, %class.Point.21* %179, %class.Point.21* %180, %"class.std::allocator.18"* dereferenceable(1) %182)
          to label %185 unwind label %186

; <label>:185:                                    ; preds = %183
  store %class.Point.21* %184, %class.Point.21** %17, align 8
  br label %225

; <label>:186:                                    ; preds = %183, %173, %168, %166, %161, %154, %152, %135
  %187 = landingpad { i8*, i32 }
          catch i8* null
  %188 = extractvalue { i8*, i32 } %187, 0
  store i8* %188, i8** %18, align 8
  %189 = extractvalue { i8*, i32 } %187, 1
  store i32 %189, i32* %19, align 4
  br label %190

; <label>:190:                                    ; preds = %186
  %191 = load i8*, i8** %18, align 8
  %192 = call i8* @__cxa_begin_catch(i8* %191) #12
  %193 = load %class.Point.21*, %class.Point.21** %17, align 8
  %194 = icmp ne %class.Point.21* %193, null
  br i1 %194, label %212, label %195

; <label>:195:                                    ; preds = %190
  %196 = load %class.Point.21*, %class.Point.21** %16, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds %class.Point.21, %class.Point.21* %196, i64 %197
  %199 = load %class.Point.21*, %class.Point.21** %16, align 8
  %200 = load i64, i64* %14, align 8
  %201 = getelementptr inbounds %class.Point.21, %class.Point.21* %199, i64 %200
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %class.Point.21, %class.Point.21* %201, i64 %202
  %204 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %205 = invoke dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %204)
          to label %206 unwind label %208

; <label>:206:                                    ; preds = %195
  invoke void @_ZSt8_DestroyIP5PointILi2EES1_EvT_S3_RSaIT0_E(%class.Point.21* %198, %class.Point.21* %203, %"class.std::allocator.18"* dereferenceable(1) %205)
          to label %207 unwind label %208

; <label>:207:                                    ; preds = %206
  br label %219

; <label>:208:                                    ; preds = %223, %219, %217, %212, %206, %195
  %209 = landingpad { i8*, i32 }
          cleanup
  %210 = extractvalue { i8*, i32 } %209, 0
  store i8* %210, i8** %18, align 8
  %211 = extractvalue { i8*, i32 } %209, 1
  store i32 %211, i32* %19, align 4
  invoke void @__cxa_end_catch()
          to label %224 unwind label %282

; <label>:212:                                    ; preds = %190
  %213 = load %class.Point.21*, %class.Point.21** %16, align 8
  %214 = load %class.Point.21*, %class.Point.21** %17, align 8
  %215 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %216 = invoke dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %215)
          to label %217 unwind label %208

; <label>:217:                                    ; preds = %212
  invoke void @_ZSt8_DestroyIP5PointILi2EES1_EvT_S3_RSaIT0_E(%class.Point.21* %213, %class.Point.21* %214, %"class.std::allocator.18"* dereferenceable(1) %216)
          to label %218 unwind label %208

; <label>:218:                                    ; preds = %217
  br label %219

; <label>:219:                                    ; preds = %218, %207
  %220 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %221 = load %class.Point.21*, %class.Point.21** %16, align 8
  %222 = load i64, i64* %13, align 8
  invoke void @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.17"* %220, %class.Point.21* %221, i64 %222)
          to label %223 unwind label %208

; <label>:223:                                    ; preds = %219
  invoke void @__cxa_rethrow() #15
          to label %285 unwind label %208

; <label>:224:                                    ; preds = %208
  br label %277

; <label>:225:                                    ; preds = %185
  %226 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %227 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %226, i32 0, i32 0
  %228 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %227 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %229 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %228, i32 0, i32 0
  %230 = load %class.Point.21*, %class.Point.21** %229, align 8
  %231 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %232 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %231, i32 0, i32 0
  %233 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %232 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %234 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %233, i32 0, i32 1
  %235 = load %class.Point.21*, %class.Point.21** %234, align 8
  %236 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %237 = call dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %236)
  call void @_ZSt8_DestroyIP5PointILi2EES1_EvT_S3_RSaIT0_E(%class.Point.21* %230, %class.Point.21* %235, %"class.std::allocator.18"* dereferenceable(1) %237)
  %238 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %239 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %240 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %239, i32 0, i32 0
  %241 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %240 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %242 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %241, i32 0, i32 0
  %243 = load %class.Point.21*, %class.Point.21** %242, align 8
  %244 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %245 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %244, i32 0, i32 0
  %246 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %245 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %247 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %246, i32 0, i32 2
  %248 = load %class.Point.21*, %class.Point.21** %247, align 8
  %249 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %250 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %249, i32 0, i32 0
  %251 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %250 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %252 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %251, i32 0, i32 0
  %253 = load %class.Point.21*, %class.Point.21** %252, align 8
  %254 = ptrtoint %class.Point.21* %248 to i64
  %255 = ptrtoint %class.Point.21* %253 to i64
  %256 = sub i64 %254, %255
  %257 = sdiv exact i64 %256, 16
  call void @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.17"* %238, %class.Point.21* %243, i64 %257)
  %258 = load %class.Point.21*, %class.Point.21** %16, align 8
  %259 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %260 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %259, i32 0, i32 0
  %261 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %260 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %262 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %261, i32 0, i32 0
  store %class.Point.21* %258, %class.Point.21** %262, align 8
  %263 = load %class.Point.21*, %class.Point.21** %17, align 8
  %264 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %265 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %264, i32 0, i32 0
  %266 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %265 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %267 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %266, i32 0, i32 1
  store %class.Point.21* %263, %class.Point.21** %267, align 8
  %268 = load %class.Point.21*, %class.Point.21** %16, align 8
  %269 = load i64, i64* %13, align 8
  %270 = getelementptr inbounds %class.Point.21, %class.Point.21* %268, i64 %269
  %271 = bitcast %"class.std::vector.16"* %21 to %"struct.std::_Vector_base.17"*
  %272 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %271, i32 0, i32 0
  %273 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %272 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %274 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %273, i32 0, i32 2
  store %class.Point.21* %270, %class.Point.21** %274, align 8
  br label %275

; <label>:275:                                    ; preds = %225, %134
  br label %276

; <label>:276:                                    ; preds = %275, %4
  ret void

; <label>:277:                                    ; preds = %224
  %278 = load i8*, i8** %18, align 8
  %279 = load i32, i32* %19, align 4
  %280 = insertvalue { i8*, i32 } undef, i8* %278, 0
  %281 = insertvalue { i8*, i32 } %280, i32 %279, 1
  resume { i8*, i32 } %281

; <label>:282:                                    ; preds = %208
  %283 = landingpad { i8*, i32 }
          catch i8* null
  %284 = extractvalue { i8*, i32 } %283, 0
  call void @__clang_call_terminate(i8* %284) #10
  unreachable

; <label>:285:                                    ; preds = %223
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EE3endEv(%"class.std::vector.16"*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.130", align 8
  %3 = alloca %"class.std::vector.16"*, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %3, align 8
  %4 = load %"class.std::vector.16"*, %"class.std::vector.16"** %3, align 8
  %5 = bitcast %"class.std::vector.16"* %4 to %"struct.std::_Vector_base.17"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.130"* %2, %class.Point.21** dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %2, i32 0, i32 0
  %10 = load %class.Point.21*, %class.Point.21** %9, align 8
  ret %class.Point.21* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI5PointILi2EESaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.16"*, %class.Point.21*) #0 comdat align 2 {
  %3 = alloca %"class.std::vector.16"*, align 8
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca i64, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  %6 = load %"class.std::vector.16"*, %"class.std::vector.16"** %3, align 8
  %7 = bitcast %"class.std::vector.16"* %6 to %"struct.std::_Vector_base.17"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %8 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %9, i32 0, i32 1
  %11 = load %class.Point.21*, %class.Point.21** %10, align 8
  %12 = load %class.Point.21*, %class.Point.21** %4, align 8
  %13 = ptrtoint %class.Point.21* %11 to i64
  %14 = ptrtoint %class.Point.21* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 16
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %2
  %20 = load %class.Point.21*, %class.Point.21** %4, align 8
  %21 = bitcast %"class.std::vector.16"* %6 to %"struct.std::_Vector_base.17"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %21, i32 0, i32 0
  %23 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %22 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %23, i32 0, i32 1
  %25 = load %class.Point.21*, %class.Point.21** %24, align 8
  %26 = bitcast %"class.std::vector.16"* %6 to %"struct.std::_Vector_base.17"*
  %27 = call dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %26)
  call void @_ZSt8_DestroyIP5PointILi2EES1_EvT_S3_RSaIT0_E(%class.Point.21* %20, %class.Point.21* %25, %"class.std::allocator.18"* dereferenceable(1) %27)
  %28 = load %class.Point.21*, %class.Point.21** %4, align 8
  %29 = bitcast %"class.std::vector.16"* %6 to %"struct.std::_Vector_base.17"*
  %30 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %29, i32 0, i32 0
  %31 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %30 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %31, i32 0, i32 1
  store %class.Point.21* %28, %class.Point.21** %32, align 8
  br label %33

; <label>:33:                                     ; preds = %19, %2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP5PointILi2EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.130"* dereferenceable(8), %"class.__gnu_cxx::__normal_iterator.130"* dereferenceable(8)) #0 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.130"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.130"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.130"* %0, %"class.__gnu_cxx::__normal_iterator.130"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.130"* %1, %"class.__gnu_cxx::__normal_iterator.130"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.130"*, %"class.__gnu_cxx::__normal_iterator.130"** %3, align 8
  %6 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %5)
  %7 = load %class.Point.21*, %class.Point.21** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.130"*, %"class.__gnu_cxx::__normal_iterator.130"** %4, align 8
  %9 = call dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"* %8)
  %10 = load %class.Point.21*, %class.Point.21** %9, align 8
  %11 = ptrtoint %class.Point.21* %7 to i64
  %12 = ptrtoint %class.Point.21* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 16
  ret i64 %14
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt22__uninitialized_move_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point.21*, %class.Point.21*, %class.Point.21*, %"class.std::allocator.18"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca %class.Point.21*, align 8
  %8 = alloca %"class.std::allocator.18"*, align 8
  store %class.Point.21* %0, %class.Point.21** %5, align 8
  store %class.Point.21* %1, %class.Point.21** %6, align 8
  store %class.Point.21* %2, %class.Point.21** %7, align 8
  store %"class.std::allocator.18"* %3, %"class.std::allocator.18"** %8, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  %11 = load %class.Point.21*, %class.Point.21** %7, align 8
  %12 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %8, align 8
  %13 = call %class.Point.21* @_ZSt22__uninitialized_copy_aIP5PointILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E(%class.Point.21* %9, %class.Point.21* %10, %class.Point.21* %11, %"class.std::allocator.18"* dereferenceable(1) %12)
  ret %class.Point.21* %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.18"* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.17"*, align 8
  store %"struct.std::_Vector_base.17"* %0, %"struct.std::_Vector_base.17"** %2, align 8
  %3 = load %"struct.std::_Vector_base.17"*, %"struct.std::_Vector_base.17"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %4 to %"class.std::allocator.18"*
  ret %"class.std::allocator.18"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt13copy_backwardIP5PointILi2EES2_ET0_T_S4_S3_(%class.Point.21*, %class.Point.21*, %class.Point.21*) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = call %class.Point.21* @_ZSt12__miter_baseIP5PointILi2EEET_S3_(%class.Point.21* %7)
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = call %class.Point.21* @_ZSt12__miter_baseIP5PointILi2EEET_S3_(%class.Point.21* %9)
  %11 = load %class.Point.21*, %class.Point.21** %6, align 8
  %12 = call %class.Point.21* @_ZSt23__copy_move_backward_a2ILb0EP5PointILi2EES2_ET1_T0_S4_S3_(%class.Point.21* %8, %class.Point.21* %10, %class.Point.21* %11)
  ret %class.Point.21* %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.Point.21** @_ZNK9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.130"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.130"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.130"* %0, %"class.__gnu_cxx::__normal_iterator.130"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.130"*, %"class.__gnu_cxx::__normal_iterator.130"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %3, i32 0, i32 0
  ret %class.Point.21** %4
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIP5PointILi2EES1_EvT_S3_RKT0_(%class.Point.21*, %class.Point.21*, %class.Point.21* dereferenceable(16)) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = call %class.Point.21* @_ZSt12__niter_baseIP5PointILi2EEET_S3_(%class.Point.21* %7)
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = call %class.Point.21* @_ZSt12__niter_baseIP5PointILi2EEET_S3_(%class.Point.21* %9)
  %11 = load %class.Point.21*, %class.Point.21** %6, align 8
  call void @_ZSt8__fill_aIP5PointILi2EES1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(%class.Point.21* %8, %class.Point.21* %10, %class.Point.21* dereferenceable(16) %11)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt24__uninitialized_fill_n_aIP5PointILi2EEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%class.Point.21*, i64, %class.Point.21* dereferenceable(16), %"class.std::allocator.18"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %class.Point.21*, align 8
  %8 = alloca %"class.std::allocator.18"*, align 8
  store %class.Point.21* %0, %class.Point.21** %5, align 8
  store i64 %1, i64* %6, align 8
  store %class.Point.21* %2, %class.Point.21** %7, align 8
  store %"class.std::allocator.18"* %3, %"class.std::allocator.18"** %8, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %class.Point.21*, %class.Point.21** %7, align 8
  %12 = call %class.Point.21* @_ZSt20uninitialized_fill_nIP5PointILi2EEmS1_ET_S3_T0_RKT1_(%class.Point.21* %9, i64 %10, %class.Point.21* dereferenceable(16) %11)
  ret %class.Point.21* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.16"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.std::vector.16"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector.16"*, %"class.std::vector.16"** %4, align 8
  %10 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE8max_sizeEv(%"class.std::vector.16"* %9)
  %11 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %9)
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %16) #15
  unreachable

; <label>:17:                                     ; preds = %3
  %18 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %9)
  %19 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %9)
  store i64 %19, i64* %8, align 8
  %20 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %8, i64* dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE4sizeEv(%"class.std::vector.16"* %9)
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE8max_sizeEv(%"class.std::vector.16"* %9)
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26, %17
  %31 = call i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE8max_sizeEv(%"class.std::vector.16"* %9)
  br label %34

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

; <label>:34:                                     ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZNSt6vectorI5PointILi2EESaIS1_EE5beginEv(%"class.std::vector.16"*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.130", align 8
  %3 = alloca %"class.std::vector.16"*, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %3, align 8
  %4 = load %"class.std::vector.16"*, %"class.std::vector.16"** %3, align 8
  %5 = bitcast %"class.std::vector.16"* %4 to %"struct.std::_Vector_base.17"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %6 to %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data", %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.130"* %2, %class.Point.21** dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %2, i32 0, i32 0
  %10 = load %class.Point.21*, %class.Point.21** %9, align 8
  ret %class.Point.21* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.17"*, i64) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.17"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.17"* %0, %"struct.std::_Vector_base.17"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.17"*, %"struct.std::_Vector_base.17"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %9 to %"class.std::allocator.18"*
  %11 = load i64, i64* %4, align 8
  %12 = call %class.Point.21* @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E8allocateERS3_m(%"class.std::allocator.18"* dereferenceable(1) %10, i64 %11)
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = phi %class.Point.21* [ %12, %8 ], [ null, %13 ]
  ret %class.Point.21* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt34__uninitialized_move_if_noexcept_aIP5PointILi2EES2_SaIS1_EET0_T_S5_S4_RT1_(%class.Point.21*, %class.Point.21*, %class.Point.21*, %"class.std::allocator.18"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca %class.Point.21*, align 8
  %8 = alloca %"class.std::allocator.18"*, align 8
  store %class.Point.21* %0, %class.Point.21** %5, align 8
  store %class.Point.21* %1, %class.Point.21** %6, align 8
  store %class.Point.21* %2, %class.Point.21** %7, align 8
  store %"class.std::allocator.18"* %3, %"class.std::allocator.18"** %8, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  %11 = load %class.Point.21*, %class.Point.21** %7, align 8
  %12 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %8, align 8
  %13 = call %class.Point.21* @_ZSt22__uninitialized_copy_aIP5PointILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E(%class.Point.21* %9, %class.Point.21* %10, %class.Point.21* %11, %"class.std::allocator.18"* dereferenceable(1) %12)
  ret %class.Point.21* %13
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP5PointILi2EES1_EvT_S3_RSaIT0_E(%class.Point.21*, %class.Point.21*, %"class.std::allocator.18"* dereferenceable(1)) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %"class.std::allocator.18"*, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %"class.std::allocator.18"* %2, %"class.std::allocator.18"** %6, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = load %class.Point.21*, %class.Point.21** %5, align 8
  call void @_ZSt8_DestroyIP5PointILi2EEEvT_S3_(%class.Point.21* %7, %class.Point.21* %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI5PointILi2EESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.17"*, %class.Point.21*, i64) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.17"*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.17"* %0, %"struct.std::_Vector_base.17"** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.17"*, %"struct.std::_Vector_base.17"** %4, align 8
  %8 = load %class.Point.21*, %class.Point.21** %5, align 8
  %9 = icmp ne %class.Point.21* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %11 to %"class.std::allocator.18"*
  %13 = load %class.Point.21*, %class.Point.21** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.18"* dereferenceable(1) %12, %class.Point.21* %13, i64 %14)
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt22__uninitialized_copy_aIP5PointILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E(%class.Point.21*, %class.Point.21*, %class.Point.21*, %"class.std::allocator.18"* dereferenceable(1)) #0 comdat {
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca %class.Point.21*, align 8
  %8 = alloca %"class.std::allocator.18"*, align 8
  store %class.Point.21* %0, %class.Point.21** %5, align 8
  store %class.Point.21* %1, %class.Point.21** %6, align 8
  store %class.Point.21* %2, %class.Point.21** %7, align 8
  store %"class.std::allocator.18"* %3, %"class.std::allocator.18"** %8, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  %11 = load %class.Point.21*, %class.Point.21** %7, align 8
  %12 = call %class.Point.21* @_ZSt18uninitialized_copyIP5PointILi2EES2_ET0_T_S4_S3_(%class.Point.21* %9, %class.Point.21* %10, %class.Point.21* %11)
  ret %class.Point.21* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt18uninitialized_copyIP5PointILi2EES2_ET0_T_S4_S3_(%class.Point.21*, %class.Point.21*, %class.Point.21*) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca i8, align 1
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %class.Point.21*, %class.Point.21** %4, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  %11 = call %class.Point.21* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP5PointILi2EES4_EET0_T_S6_S5_(%class.Point.21* %8, %class.Point.21* %9, %class.Point.21* %10)
  ret %class.Point.21* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP5PointILi2EES4_EET0_T_S6_S5_(%class.Point.21*, %class.Point.21*, %class.Point.21*) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca %class.Point.21*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  store %class.Point.21* %10, %class.Point.21** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %21, %3
  %12 = load %class.Point.21*, %class.Point.21** %4, align 8
  %13 = load %class.Point.21*, %class.Point.21** %5, align 8
  %14 = icmp ne %class.Point.21* %12, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %11
  %16 = load %class.Point.21*, %class.Point.21** %7, align 8
  %17 = invoke %class.Point.21* @_ZSt11__addressofI5PointILi2EEEPT_RS2_(%class.Point.21* dereferenceable(16) %16)
          to label %18 unwind label %26

; <label>:18:                                     ; preds = %15
  %19 = load %class.Point.21*, %class.Point.21** %4, align 8
  invoke void @_ZSt10_ConstructI5PointILi2EES1_EvPT_RKT0_(%class.Point.21* %17, %class.Point.21* dereferenceable(16) %19)
          to label %20 unwind label %26

; <label>:20:                                     ; preds = %18
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load %class.Point.21*, %class.Point.21** %4, align 8
  %23 = getelementptr inbounds %class.Point.21, %class.Point.21* %22, i32 1
  store %class.Point.21* %23, %class.Point.21** %4, align 8
  %24 = load %class.Point.21*, %class.Point.21** %7, align 8
  %25 = getelementptr inbounds %class.Point.21, %class.Point.21* %24, i32 1
  store %class.Point.21* %25, %class.Point.21** %7, align 8
  br label %11

; <label>:26:                                     ; preds = %18, %15
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %8, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @__cxa_begin_catch(i8* %31) #12
  %33 = load %class.Point.21*, %class.Point.21** %6, align 8
  %34 = load %class.Point.21*, %class.Point.21** %7, align 8
  invoke void @_ZSt8_DestroyIP5PointILi2EEEvT_S3_(%class.Point.21* %33, %class.Point.21* %34)
          to label %35 unwind label %38

; <label>:35:                                     ; preds = %30
  invoke void @__cxa_rethrow() #15
          to label %52 unwind label %38

; <label>:36:                                     ; preds = %11
  %37 = load %class.Point.21*, %class.Point.21** %7, align 8
  ret %class.Point.21* %37

; <label>:38:                                     ; preds = %35, %30
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %8, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %42 unwind label %49

; <label>:42:                                     ; preds = %38
  br label %44
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = insertvalue { i8*, i32 } undef, i8* %45, 0
  %48 = insertvalue { i8*, i32 } %47, i32 %46, 1
  resume { i8*, i32 } %48

; <label>:49:                                     ; preds = %38
  %50 = landingpad { i8*, i32 }
          catch i8* null
  %51 = extractvalue { i8*, i32 } %50, 0
  call void @__clang_call_terminate(i8* %51) #10
  unreachable

; <label>:52:                                     ; preds = %35
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructI5PointILi2EES1_EvPT_RKT0_(%class.Point.21*, %class.Point.21* dereferenceable(16)) #0 comdat {
  %3 = alloca %class.Point.21*, align 8
  %4 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  %5 = load %class.Point.21*, %class.Point.21** %3, align 8
  %6 = bitcast %class.Point.21* %5 to i8*
  %7 = bitcast i8* %6 to %class.Point.21*
  %8 = load %class.Point.21*, %class.Point.21** %4, align 8
  call void @_ZN5PointILi2EEC2ERKS0_(%class.Point.21* %7, %class.Point.21* dereferenceable(16) %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point.21* @_ZSt11__addressofI5PointILi2EEEPT_RS2_(%class.Point.21* dereferenceable(16)) #1 comdat {
  %2 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %2, align 8
  %3 = load %class.Point.21*, %class.Point.21** %2, align 8
  ret %class.Point.21* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP5PointILi2EEEvT_S3_(%class.Point.21*, %class.Point.21*) #0 comdat {
  %3 = alloca %class.Point.21*, align 8
  %4 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  %5 = load %class.Point.21*, %class.Point.21** %3, align 8
  %6 = load %class.Point.21*, %class.Point.21** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointILi2EEEEvT_S5_(%class.Point.21* %5, %class.Point.21* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointILi2EEEEvT_S5_(%class.Point.21*, %class.Point.21*) #1 comdat align 2 {
  %3 = alloca %class.Point.21*, align 8
  %4 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt23__copy_move_backward_a2ILb0EP5PointILi2EES2_ET1_T0_S4_S3_(%class.Point.21*, %class.Point.21*, %class.Point.21*) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  %7 = load %class.Point.21*, %class.Point.21** %4, align 8
  %8 = call %class.Point.21* @_ZSt12__niter_baseIP5PointILi2EEET_S3_(%class.Point.21* %7)
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = call %class.Point.21* @_ZSt12__niter_baseIP5PointILi2EEET_S3_(%class.Point.21* %9)
  %11 = load %class.Point.21*, %class.Point.21** %6, align 8
  %12 = call %class.Point.21* @_ZSt12__niter_baseIP5PointILi2EEET_S3_(%class.Point.21* %11)
  %13 = call %class.Point.21* @_ZSt22__copy_move_backward_aILb0EP5PointILi2EES2_ET1_T0_S4_S3_(%class.Point.21* %8, %class.Point.21* %10, %class.Point.21* %12)
  %14 = call %class.Point.21* @_ZSt12__niter_wrapIP5PointILi2EEET_RKS3_S3_(%class.Point.21** dereferenceable(8) %6, %class.Point.21* %13)
  ret %class.Point.21* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point.21* @_ZSt12__miter_baseIP5PointILi2EEET_S3_(%class.Point.21*) #1 comdat {
  %2 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %2, align 8
  %3 = load %class.Point.21*, %class.Point.21** %2, align 8
  ret %class.Point.21* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point.21* @_ZSt12__niter_wrapIP5PointILi2EEET_RKS3_S3_(%class.Point.21** dereferenceable(8), %class.Point.21*) #1 comdat {
  %3 = alloca %class.Point.21**, align 8
  %4 = alloca %class.Point.21*, align 8
  store %class.Point.21** %0, %class.Point.21*** %3, align 8
  store %class.Point.21* %1, %class.Point.21** %4, align 8
  %5 = load %class.Point.21*, %class.Point.21** %4, align 8
  ret %class.Point.21* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt22__copy_move_backward_aILb0EP5PointILi2EES2_ET1_T0_S4_S3_(%class.Point.21*, %class.Point.21*, %class.Point.21*) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca i8, align 1
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  store i8 0, i8* %7, align 1
  %8 = load %class.Point.21*, %class.Point.21** %4, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  %11 = call %class.Point.21* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP5PointILi2EES5_EET0_T_S7_S6_(%class.Point.21* %8, %class.Point.21* %9, %class.Point.21* %10)
  ret %class.Point.21* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.Point.21* @_ZSt12__niter_baseIP5PointILi2EEET_S3_(%class.Point.21*) #1 comdat {
  %2 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %2, align 8
  %3 = load %class.Point.21*, %class.Point.21** %2, align 8
  ret %class.Point.21* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP5PointILi2EES5_EET0_T_S7_S6_(%class.Point.21*, %class.Point.21*, %class.Point.21*) #0 comdat align 2 {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca i64, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  %8 = load %class.Point.21*, %class.Point.21** %5, align 8
  %9 = load %class.Point.21*, %class.Point.21** %4, align 8
  %10 = ptrtoint %class.Point.21* %8 to i64
  %11 = ptrtoint %class.Point.21* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 16
  store i64 %13, i64* %7, align 8
  br label %14

; <label>:14:                                     ; preds = %23, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %14
  %18 = load %class.Point.21*, %class.Point.21** %5, align 8
  %19 = getelementptr inbounds %class.Point.21, %class.Point.21* %18, i32 -1
  store %class.Point.21* %19, %class.Point.21** %5, align 8
  %20 = load %class.Point.21*, %class.Point.21** %6, align 8
  %21 = getelementptr inbounds %class.Point.21, %class.Point.21* %20, i32 -1
  store %class.Point.21* %21, %class.Point.21** %6, align 8
  %22 = call dereferenceable(16) %class.Point.21* @_ZN5PointILi2EEaSERKS0_(%class.Point.21* %21, %class.Point.21* dereferenceable(16) %19)
  br label %23

; <label>:23:                                     ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %7, align 8
  br label %14

; <label>:26:                                     ; preds = %14
  %27 = load %class.Point.21*, %class.Point.21** %6, align 8
  ret %class.Point.21* %27
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8__fill_aIP5PointILi2EES1_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(%class.Point.21*, %class.Point.21*, %class.Point.21* dereferenceable(16)) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca %class.Point.21*, align 8
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  br label %7

; <label>:7:                                      ; preds = %15, %3
  %8 = load %class.Point.21*, %class.Point.21** %4, align 8
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = icmp ne %class.Point.21* %8, %9
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %7
  %12 = load %class.Point.21*, %class.Point.21** %6, align 8
  %13 = load %class.Point.21*, %class.Point.21** %4, align 8
  %14 = call dereferenceable(16) %class.Point.21* @_ZN5PointILi2EEaSERKS0_(%class.Point.21* %13, %class.Point.21* dereferenceable(16) %12)
  br label %15

; <label>:15:                                     ; preds = %11
  %16 = load %class.Point.21*, %class.Point.21** %4, align 8
  %17 = getelementptr inbounds %class.Point.21, %class.Point.21* %16, i32 1
  store %class.Point.21* %17, %class.Point.21** %4, align 8
  br label %7

; <label>:18:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZSt20uninitialized_fill_nIP5PointILi2EEmS1_ET_S3_T0_RKT1_(%class.Point.21*, i64, %class.Point.21* dereferenceable(16)) #0 comdat {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca i8, align 1
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %class.Point.21*, %class.Point.21** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %class.Point.21*, %class.Point.21** %6, align 8
  %11 = call %class.Point.21* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5PointILi2EEmS3_EET_S5_T0_RKT1_(%class.Point.21* %8, i64 %9, %class.Point.21* dereferenceable(16) %10)
  ret %class.Point.21* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5PointILi2EEmS3_EET_S5_T0_RKT1_(%class.Point.21*, i64, %class.Point.21* dereferenceable(16)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Point.21*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.Point.21*, align 8
  %7 = alloca %class.Point.21*, align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %class.Point.21* %0, %class.Point.21** %4, align 8
  store i64 %1, i64* %5, align 8
  store %class.Point.21* %2, %class.Point.21** %6, align 8
  %10 = load %class.Point.21*, %class.Point.21** %4, align 8
  store %class.Point.21* %10, %class.Point.21** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %20, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %11
  %15 = load %class.Point.21*, %class.Point.21** %7, align 8
  %16 = invoke %class.Point.21* @_ZSt11__addressofI5PointILi2EEEPT_RS2_(%class.Point.21* dereferenceable(16) %15)
          to label %17 unwind label %25

; <label>:17:                                     ; preds = %14
  %18 = load %class.Point.21*, %class.Point.21** %6, align 8
  invoke void @_ZSt10_ConstructI5PointILi2EES1_EvPT_RKT0_(%class.Point.21* %16, %class.Point.21* dereferenceable(16) %18)
          to label %19 unwind label %25

; <label>:19:                                     ; preds = %17
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %class.Point.21*, %class.Point.21** %7, align 8
  %24 = getelementptr inbounds %class.Point.21, %class.Point.21* %23, i32 1
  store %class.Point.21* %24, %class.Point.21** %7, align 8
  br label %11

; <label>:25:                                     ; preds = %17, %14
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @__cxa_begin_catch(i8* %30) #12
  %32 = load %class.Point.21*, %class.Point.21** %4, align 8
  %33 = load %class.Point.21*, %class.Point.21** %7, align 8
  invoke void @_ZSt8_DestroyIP5PointILi2EEEvT_S3_(%class.Point.21* %32, %class.Point.21* %33)
          to label %34 unwind label %37

; <label>:34:                                     ; preds = %29
  invoke void @__cxa_rethrow() #15
          to label %51 unwind label %37

; <label>:35:                                     ; preds = %11
  %36 = load %class.Point.21*, %class.Point.21** %7, align 8
  ret %class.Point.21* %36

; <label>:37:                                     ; preds = %34, %29
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %8, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %41 unwind label %48

; <label>:41:                                     ; preds = %37
  br label %43
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1
  resume { i8*, i32 } %47

; <label>:48:                                     ; preds = %37
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #10
  unreachable

; <label>:51:                                     ; preds = %34
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI5PointILi2EESaIS1_EE8max_sizeEv(%"class.std::vector.16"*) #0 comdat align 2 {
  %2 = alloca %"class.std::vector.16"*, align 8
  store %"class.std::vector.16"* %0, %"class.std::vector.16"** %2, align 8
  %3 = load %"class.std::vector.16"*, %"class.std::vector.16"** %2, align 8
  %4 = bitcast %"class.std::vector.16"* %3 to %"struct.std::_Vector_base.17"*
  %5 = call dereferenceable(1) %"class.std::allocator.18"* @_ZNKSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"* %4)
  %6 = call i64 @_ZNSt6vectorI5PointILi2EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.18"* dereferenceable(1) %5)
  ret i64 %6
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNSt6vectorI5PointILi2EESaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator.18"* dereferenceable(1)) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.18"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.18"* %0, %"class.std::allocator.18"** %2, align 8
  store i64 576460752303423487, i64* %3, align 8
  %5 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %2, align 8
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E8max_sizeERKS3_(%"class.std::allocator.18"* dereferenceable(1) %5)
  store i64 %6, i64* %4, align 8
  %7 = call dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.18"* @_ZNKSt12_Vector_baseI5PointILi2EESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.17"*) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.17"*, align 8
  store %"struct.std::_Vector_base.17"* %0, %"struct.std::_Vector_base.17"** %2, align 8
  %3 = load %"struct.std::_Vector_base.17"*, %"struct.std::_Vector_base.17"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.17", %"struct.std::_Vector_base.17"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Point<2>, std::allocator<Point<2> > >::_Vector_impl"* %4 to %"class.std::allocator.18"*
  ret %"class.std::allocator.18"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E8max_sizeERKS3_(%"class.std::allocator.18"* dereferenceable(1)) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.18"* %0, %"class.std::allocator.18"** %2, align 8
  %3 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %2, align 8
  %4 = bitcast %"class.std::allocator.18"* %3 to %"class.__gnu_cxx::new_allocator.19"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorI5PointILi2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.19"* %4) #12
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI5PointILi2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.19"*) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %0, %"class.__gnu_cxx::new_allocator.19"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %2, align 8
  ret i64 576460752303423487
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP5PointILi2EESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.130"*, %class.Point.21** dereferenceable(8)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.130"*, align 8
  %4 = alloca %class.Point.21**, align 8
  store %"class.__gnu_cxx::__normal_iterator.130"* %0, %"class.__gnu_cxx::__normal_iterator.130"** %3, align 8
  store %class.Point.21** %1, %class.Point.21*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.130"*, %"class.__gnu_cxx::__normal_iterator.130"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.130", %"class.__gnu_cxx::__normal_iterator.130"* %5, i32 0, i32 0
  %7 = load %class.Point.21**, %class.Point.21*** %4, align 8
  %8 = load %class.Point.21*, %class.Point.21** %7, align 8
  store %class.Point.21* %8, %class.Point.21** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E8allocateERS3_m(%"class.std::allocator.18"* dereferenceable(1), i64) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator.18"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.18"* %0, %"class.std::allocator.18"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %3, align 8
  %6 = bitcast %"class.std::allocator.18"* %5 to %"class.__gnu_cxx::new_allocator.19"*
  %7 = load i64, i64* %4, align 8
  %8 = call %class.Point.21* @_ZN9__gnu_cxx13new_allocatorI5PointILi2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.19"* %6, i64 %7, i8* null)
  ret %class.Point.21* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.Point.21* @_ZN9__gnu_cxx13new_allocatorI5PointILi2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.19"*, i64, i8*) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %0, %"class.__gnu_cxx::new_allocator.19"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorI5PointILi2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.19"* %7) #12
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 16
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %class.Point.21*
  ret %class.Point.21* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI5PointILi2EEES2_E10deallocateERS3_PS2_m(%"class.std::allocator.18"* dereferenceable(1), %class.Point.21*, i64) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator.18"*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.18"* %0, %"class.std::allocator.18"** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %4, align 8
  %8 = bitcast %"class.std::allocator.18"* %7 to %"class.__gnu_cxx::new_allocator.19"*
  %9 = load %class.Point.21*, %class.Point.21** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI5PointILi2EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.19"* %8, %class.Point.21* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointILi2EEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.19"*, %class.Point.21*, i64) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  %5 = alloca %class.Point.21*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %0, %"class.__gnu_cxx::new_allocator.19"** %4, align 8
  store %class.Point.21* %1, %class.Point.21** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %4, align 8
  %8 = load %class.Point.21*, %class.Point.21** %5, align 8
  %9 = bitcast %class.Point.21* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %class.Tensor.22* @_ZN6TensorILi1ELi2EEpLERKS0_(%class.Tensor.22*, %class.Tensor.22* dereferenceable(16)) #1 comdat align 2 {
  %3 = alloca %class.Tensor.22*, align 8
  %4 = alloca %class.Tensor.22*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor.22* %0, %class.Tensor.22** %3, align 8
  store %class.Tensor.22* %1, %class.Tensor.22** %4, align 8
  %6 = load %class.Tensor.22*, %class.Tensor.22** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %7
  %11 = load %class.Tensor.22*, %class.Tensor.22** %4, align 8
  %12 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %6, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fadd double %21, %16
  store double %22, double* %20, align 8
  br label %23

; <label>:23:                                     ; preds = %10
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

; <label>:26:                                     ; preds = %7
  ret %class.Tensor.22* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5PointILi2EEC2ERK6TensorILi1ELi2EE(%class.Point.21*, %class.Tensor.22* dereferenceable(16)) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.Point.21*, align 8
  %4 = alloca %class.Tensor.22*, align 8
  store %class.Point.21* %0, %class.Point.21** %3, align 8
  store %class.Tensor.22* %1, %class.Tensor.22** %4, align 8
  %5 = load %class.Point.21*, %class.Point.21** %3, align 8
  %6 = bitcast %class.Point.21* %5 to %class.Tensor.22*
  %7 = load %class.Tensor.22*, %class.Tensor.22** %4, align 8
  call void @_ZN6TensorILi1ELi2EEC2ERKS0_(%class.Tensor.22* %6, %class.Tensor.22* dereferenceable(16) %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %class.Tensor.22* @_ZN6TensorILi1ELi2EEdVERKd(%class.Tensor.22*, double* dereferenceable(8)) #1 comdat align 2 {
  %3 = alloca %class.Tensor.22*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store %class.Tensor.22* %0, %class.Tensor.22** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load %class.Tensor.22*, %class.Tensor.22** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %7
  %11 = load double*, double** %4, align 8
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %class.Tensor.22, %class.Tensor.22* %6, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = fdiv double %17, %12
  store double %18, double* %16, align 8
  br label %19

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

; <label>:22:                                     ; preds = %7
  ret %class.Tensor.22* %6
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }
attributes #13 = { builtin }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
