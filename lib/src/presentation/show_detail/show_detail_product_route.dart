import 'package:atomi_architecture/src/config/router/app_router.dart';
import 'package:atomi_architecture/src/config/router/route_define.dart';
import 'package:atomi_architecture/src/data/di/di.dart';
import 'package:atomi_architecture/src/presentation/show_product/cubit/show_product_cubit.dart';
import 'package:atomi_architecture/src/presentation/show_detail/screen/show_detail_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ShowDetailProductRoute extends RouteDefine {
  @override
  Path initRoute(arguments) => Path(
      builder: (_) => MultiBlocProvider(providers: [
            BlocProvider(create: (context) => getIt<ShowProductCubit>())
          ], child: const ShowDetailProduct()));

  static push() {
    // TTRouter.push<ShowDetailProductRoute>();

    if (Get.context != null) {
      TTRouter.push<ShowDetailProductRoute>();
    } else {
      logger.i('Error: Get.context is null');
    }
  }

}
