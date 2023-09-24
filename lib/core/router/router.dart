import 'package:flutter/material.dart';
import 'package:flutter_super_hero/data/repository/hero_repository_impl.dart';
import 'package:flutter_super_hero/domain/use_case/get_search_heros_usecase.dart';
import 'package:flutter_super_hero/presentation/screen/default/default_layout.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_screen.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_screen.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_view_model.dart';
import 'package:flutter_super_hero/presentation/screen/profile_screen.dart';
import 'package:flutter_super_hero/presentation/screen/search_screen.dart';
import 'package:flutter_super_hero/presentation/screen/settings_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

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
          builder: (context, state) {
            return ChangeNotifierProvider(
              create: (_) => HomeViewModel(
                GetSearchHerosUseCase(
                  HeroRepositoryImpl(),
                ),
              ),
              child: const HomeScreen(),
            );
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
          path: '/search',
          builder: (_, state) {
            return const SearchScreen();
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (_, state) {
            return const ProfileScreen();
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (_, state) {
            return const SettingsScreen();
          },
        ),
      ],
    ),
  ],
);
