import 'package:atomi_architecture/src/config/router/route_define.dart';
import 'package:atomi_architecture/src/presentation/show_detail/show_detail_product_route.dart';
import 'package:atomi_architecture/src/presentation/show_product/show_product_route.dart';

genarateRoutes(){
  //list route
  ShowProductRoute();
  ShowDetailProductRoute();
}

final Map<String, RouteDefine> mapRoutes = {};