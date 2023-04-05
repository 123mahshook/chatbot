import 'package:chatbot/features/home/home_view.dart';
import 'package:chatbot/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splash,
  home,
}

final router =
    GoRouter(initialLocation: '/', debugLogDiagnostics: true, routes: [
  GoRoute(
      path: '/',
      name: AppRoute.splash.name,
      builder: (context, state) => const SplashPage(),
      routes: [
        GoRoute(
            path: 'home',
            name: AppRoute.home.name,
            builder: (context, state) => HomeView()),
      ]),
]);
