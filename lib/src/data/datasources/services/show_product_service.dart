import 'package:atomi_architecture/src/domain/models/response/product_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'show_product_service.g.dart';

@RestApi()
abstract class ShowProductService{
  factory ShowProductService(Dio dio,{String baseUrl}) = _ShowProductService;
  
  @GET('products')
  Future<List<ProductResponse>> getProduct();

  @GET('products/{productId}')
  Future<ProductResponse> getDetailProduct(@Path('productId') String productId);
}