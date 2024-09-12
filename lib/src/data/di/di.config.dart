// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../domain/repositories/show_product_repositpry.dart' as _i516;
import '../../domain/usecase/show_product/show_product_usecase.dart' as _i375;
import '../../presentation/show_product/cubit/show_product_cubit.dart' as _i985;
import '../datasources/services/show_product_service.dart' as _i137;
import '../repositories/show_product_impl.dart' as _i987;
import 'module/service_module.dart' as _i387;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.singleton<_i361.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i137.ShowProductService>(
        () => serviceModule.showProductservice);
    gh.factory<_i516.ShowProductRepository>(
      () => _i987.ShowProductImpl(gh<_i137.ShowProductService>()),
      instanceName: 'ShowProductImpl',
    );
    gh.factory<_i375.ShowProductUsecase>(() => _i375.ShowProductUsecase(
        gh<_i516.ShowProductRepository>(instanceName: 'ShowProductImpl')));
    gh.factory<_i985.ShowProductCubit>(
        () => _i985.ShowProductCubit(gh<_i375.ShowProductUsecase>()));
    return this;
  }
}

class _$ServiceModule extends _i387.ServiceModule {}
