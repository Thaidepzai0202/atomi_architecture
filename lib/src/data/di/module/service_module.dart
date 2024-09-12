import 'package:atomi_architecture/environment/build_config.dart';
import 'package:atomi_architecture/src/data/datasources/services/show_product_service.dart';
import 'package:atomi_architecture/src/data/di/di.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://6b57-118-70-124-28.ngrok-free.app/api/',
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
        ),
      );

  @lazySingleton
  ShowProductService get showProductservice => ShowProductService(dio);
}
