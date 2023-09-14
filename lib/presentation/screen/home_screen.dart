import 'package:flutter/material.dart';
import 'package:flutter_super_hero/data/repository/hero_repository_impl.dart';
import 'package:flutter_super_hero/domain/use_case/get_search_heros_usecase.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final useCase = GetSearchHerosUseCase(HeroRepositoryImpl());

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
