import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import '../../../domain/models/response/product_response.dart';
import '../../../domain/usecase/show_product/show_product_usecase.dart';

part 'show_product_state.dart';

@injectable
class ShowProductCubit extends Cubit<ShowProductState> {
  final ShowProductUsecase showProductUsecase;

  ShowProductCubit(this.showProductUsecase) : super(ShowProductInitial());

  List<ProductResponse>? listProduct;

  checkCubit() async {
    listProduct = [];
    emit(ShowProductSuccessed(listProduct: listProduct ?? []));
  }

  getListProduct() async {
    try {
      emit(ShowProductInitial());
      await Future.delayed(const Duration(seconds: 5));
      var result = await showProductUsecase.showListProduct();

      if (!result.isEmpty) {
        listProduct = result;
        logger.i("Show result ");
        emit(ShowProductSuccessed(listProduct: listProduct ?? []));
      } else {
        emit(ShowProductFailed());
      }
    } catch (e) {
      emit(ShowProductFailed());
      log("Show Product Cubit error $e");
    }
  }
}

var logger = Logger(
  printer: PrettyPrinter(),
);
