import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      // bottomNavigationBar:
      //     BottomNavigationBar(currentIndex: index, items: const [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.search),
      //     label: 'Search',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.person),
      //     label: 'Profile',
      //   ),
      // ]),
      appBar: AppBar(title: const Text('SuperHero')),
      body: const HomeBody(),
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
      activeIndex: index,
      onTap: (int index) => setState(() => this.index = index),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SuperHero 앱',
            style: TextStyle(
              fontSize: 60,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: (() {}),
            child: const Text(
              'data',
            ),
          ),
        ],
      ),
    );
  }
}
