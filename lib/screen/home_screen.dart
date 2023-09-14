import 'package:flutter/material.dart';
import 'package:flutter_super_hero/data/repository/hero_repository_impl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Home Screen'),
        ElevatedButton(
          onPressed: () => () {},
          child: const Text('api'),
        ),
      ],
    );
  }
}
