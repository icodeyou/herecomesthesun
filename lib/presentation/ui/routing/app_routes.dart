import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:herecomesthesun/main.dart';

const String routeError = 'error';

class AppRoutes {
  static final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage();
        }),
  ]);
}
