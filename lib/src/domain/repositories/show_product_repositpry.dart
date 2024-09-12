import 'package:atomi_architecture/src/domain/models/response/product_response.dart';

abstract class ShowProductRepository {
  Future<List<ProductResponse>> getListProduct();
  Future<ProductResponse> getDetailProduct({ required String productId});
}