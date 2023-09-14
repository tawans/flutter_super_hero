import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
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
        '/search') {
      return 1;
    } else if (GoRouter.of(context)
            .routerDelegate
            .currentConfiguration
            .uri
            .toString() ==
        '/profile') {
      return 2;
    } else if (GoRouter.of(context)
            .routerDelegate
            .currentConfiguration
            .uri
            .toString() ==
        '/settings') {
      return 3;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavigationBar(),
      appBar: appBarUI(),
      body: widget.child,
    );
  }

  Widget _buildBottomNavigationBar() {
    return AnimatedBottomNavigationBar(
      gapLocation: GapLocation.none,
      icons: const [
        Icons.home,
        Icons.search,
        Icons.person,
        Icons.settings,
      ],
      activeIndex: getIndex(context),
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/home');
          case 1:
            context.go('/search');
          case 2:
            context.go('/profile');
          case 3:
            context.go('/settings');
        }
      },
      activeColor: Colors.deepPurple,
    );
  }

  Widget appBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Choose your',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: DesignCourseAppTheme.grey,
                  ),
                ),
                Text(
                  'Design Course',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset('assets/design_course/userImage.png'),
          )
        ],
      ),
    );
  }
}
}
