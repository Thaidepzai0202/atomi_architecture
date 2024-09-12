import 'package:atomi_architecture/src/data/datasources/services/show_product_service.dart';
import 'package:atomi_architecture/src/domain/models/response/product_response.dart';
import 'package:atomi_architecture/src/domain/repositories/show_product_repositpry.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: ShowProductRepository)
class ShowProductImpl extends ShowProductRepository {
  final ShowProductService showProductService;

  ShowProductImpl(this.showProductService);

  @override
  Future<List<ProductResponse>> getListProduct() async {
    return await showProductService.getProduct();
  }

  @override
  Future<ProductResponse> getDetailProduct({required String productId}) async {
    return await showProductService.getDetailProduct(productId);
  }


}
