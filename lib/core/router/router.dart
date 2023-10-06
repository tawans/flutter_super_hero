import 'package:flutter/material.dart';
import 'package:flutter_super_hero/presentation/screen/default/default_layout.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_screen.dart';
import 'package:flutter_super_hero/presentation/screen/favorite/favorite_screen.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return DefaultLayout(
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (_, state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: '/detail/:heroId',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: DetailScreen(heroId: state.pathParameters['heroId']),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.easeInCirc).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/favorite',
          builder: (_, state) {
            return const FavoriteScreen();
          },
        ),
      ],
    ),
  ],
);
