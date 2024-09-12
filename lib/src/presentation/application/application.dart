import 'package:atomi_architecture/manifest.dart';
import 'package:atomi_architecture/src/config/router/route_define.dart';
import 'package:atomi_architecture/src/presentation/show_product/show_product_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      theme: ThemeData(primaryColor: Colors.greenAccent),
      onGenerateRoute: (settings) =>
          manifest(genarateRoutes, settings, mapRoutes),
      initialRoute: '$ShowProductRoute',
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }
}
