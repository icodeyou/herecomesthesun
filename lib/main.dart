import 'dart:async';

import 'package:flutter/material.dart';
import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/routing/app_routes.dart';
import 'package:herecomesthesun/presentation/ui/styles/colors.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    unawaited(() async {
      //Test
      print(await WeatherApi.getWeather(City(name: "London")));
    }.call());

    return MaterialApp.router(
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: UI.textS, fontWeight: FontWeight.w500),
                backgroundColor: MyColors.accent,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(UI.buttonCornerRadius)))),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: MyColors.primary, secondary: MyColors.accent),
      ),
    );
  }
}
