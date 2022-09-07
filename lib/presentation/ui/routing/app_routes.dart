import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:herecomesthesun/presentation/ui/pages/home_page.dart';

const String routeError = 'error';

class AppRoutes {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        }),
  ]);
}
