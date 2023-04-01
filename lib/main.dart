import 'package:auto_route_animation_bug/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(
        initialDeepLink: '/library/albums',
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
