import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
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
      title: Strings.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.background,
      ),
    );
  }
}
