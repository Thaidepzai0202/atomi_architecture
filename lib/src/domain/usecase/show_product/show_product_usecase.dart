import 'package:atomi_architecture/src/data/repositories/show_product_impl.dart';
import 'package:atomi_architecture/src/domain/models/response/product_response.dart';
import 'package:atomi_architecture/src/domain/repositories/show_product_repositpry.dart';
import 'package:injectable/injectable.dart';

@injectable
class ShowProductUsecase {
  final ShowProductRepository showPorductRepository;

  ShowProductUsecase(@Named.from(ShowProductImpl) this.showPorductRepository);

  Future<List<ProductResponse>> showListProduct() async {
    return await showPorductRepository.getListProduct();
  }

  Future<ProductResponse> getDetailProduct({required String productId}) async {
    return await showPorductRepository.getDetailProduct(productId: productId);
  }
}
