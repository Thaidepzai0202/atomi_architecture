part of 'show_product_cubit.dart';

abstract class ShowProductState {}

class ShowProductInitial extends ShowProductState {}

class ShowProductSuccessed extends ShowProductState {
  final List<ProductResponse> listProduct;

  ShowProductSuccessed({required this.listProduct});
}

class ShowProductFailed extends ShowProductState {}
