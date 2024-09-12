import 'package:atomi_architecture/src/config/router/app_router.dart';
import 'package:atomi_architecture/src/config/router/route_define.dart';
import 'package:atomi_architecture/src/data/di/di.dart';
import 'package:atomi_architecture/src/presentation/show_product/cubit/show_product_cubit.dart';
import 'package:atomi_architecture/src/presentation/show_product/screen/show_product_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowProductRoute extends RouteDefine {
  @override
  Path initRoute(arguments) => Path(
      builder: (_) => MultiBlocProvider(providers: [
            BlocProvider(create: (context) => getIt<ShowProductCubit>())
          ], child: const ShowProductScreen()));

  static push() {
    TTRouter.push<ShowProductRoute>();
  }
}
