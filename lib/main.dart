// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_agdy_application/general/routes/router.gr.dart';


void main() {
  AppRouter appRouter = AppRouter();
  runApp(  MyApp(appRouter: appRouter,));
}

class MyApp extends StatelessWidget {
  final appRouter;

  const MyApp({Key? key,this.appRouter}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(initialRoutes: [SignOptionsRoute()]),
      title: 'A G D Y',
    );
  }
}
