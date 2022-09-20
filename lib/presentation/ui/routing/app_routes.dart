import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/change_city_page.dart';
import '../pages/home_weather.dart';

class AppRoutes {
  static const String routeCity = '/city';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const WeatherPage();
        }),
    GoRoute(
        path: '/city',
        builder: (BuildContext context, GoRouterState state) {
          return const ChangeCityPage();
        }),
  ]);
}
