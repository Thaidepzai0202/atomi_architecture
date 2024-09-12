import 'package:atomi_architecture/environment/build_config.dart';
import 'package:atomi_architecture/src/data/datasources/services/show_product_service.dart';
import 'package:atomi_architecture/src/data/repositories/show_product_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/show_product_repositpry.dart';
import '../../domain/usecase/show_product/show_product_usecase.dart';
import '../../presentation/show_product/cubit/show_product_cubit.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true
)
Future<void> configureDependencies() async {
  getIt.init();

  // getIt.registerFactory<ShowProductCubit>(
  //       () => ShowProductCubit(),
  // );


  // getIt.registerLazySingleton(() => Dio(
  //   BaseOptions(
  //     baseUrl: 'https://db11-2001-ee0-8200-d28e-f190-6075-1e0-65a1.ngrok-free.app/api/',
  //   ),
  // ));
  // getIt.registerLazySingleton<ShowProductService>(
  //         () => ShowProductService(getIt<Dio>())
  // );
  // // Đăng ký các module khác
  // getIt.registerLazySingleton<ShowProductRepository>(() => ShowProductImpl(getIt()));
  // getIt.registerLazySingleton<ShowProductUsecase>(() => ShowProductUsecase(getIt()));
  // getIt.registerFactory(() => ShowProductCubit(getIt()));
}
