import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/routing/app_routes.dart';
import 'package:herecomesthesun/presentation/ui/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
      title: 'Here Comes The Sun',
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.background,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Hello Brazil !")));
  }
}
