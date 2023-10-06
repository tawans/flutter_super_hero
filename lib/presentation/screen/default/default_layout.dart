import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatefulWidget {
  final Widget child;

  const DefaultLayout({required this.child, super.key});

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  int getIndex(BuildContext context) {
    if (GoRouter.of(context)
            .routerDelegate
            .currentConfiguration
            .uri
            .toString() ==
        '/home') {
      return 0;
    } else if (GoRouter.of(context)
            .routerDelegate
            .currentConfiguration
            .uri
            .toString() ==
        '/favorite') {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SafeArea(
        child: widget.child,
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return AnimatedBottomNavigationBar(
      inactiveColor: Colors.grey[500],
      gapLocation: GapLocation.none,
      icons: const [
        Icons.home,
        Icons.favorite,
      ],
      activeIndex: getIndex(context),
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/home');
          case 1:
            context.go('/favorite');
        }
      },
      activeColor: AppTheme.heroBlue,
    );
  }
}
