import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller/global_c.dart';
import 'package:project1/routes/router.gr.dart';

void main() {
  Get.put(GlobalC());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
