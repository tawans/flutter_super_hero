import 'package:flutter_super_hero/main.dart';
import 'package:flutter_super_hero/screen/default_layout.dart';
import 'package:flutter_super_hero/screen/home_screen.dart';
import 'package:flutter_super_hero/screen/profile_screen.dart';
import 'package:flutter_super_hero/screen/search_screen.dart';
import 'package:flutter_super_hero/screen/settings_screen.dart';
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
