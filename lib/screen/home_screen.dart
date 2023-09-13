import 'package:flutter/material.dart';
import 'package:flutter_super_hero/data/hero_api.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HeroApi superHero = HeroApi();

    return Column(
      children: [
        const Text('Home Screen'),
        ElevatedButton(
          onPressed: () => superHero.fetchHeroId('batman'),
          child: const Text('api'),
        ),
      ],
    );
  }
}
