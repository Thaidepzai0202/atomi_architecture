import 'package:atomi_architecture/src/data/di/di.dart';
import 'package:atomi_architecture/src/presentation/application/application.dart';

// import 'package:atomi_architecture/src/presentation/show_product/show_product_route.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  // GetItInjectableX().init();

  runApp(const Application());
}
