import 'package:flutter/material.dart';

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
