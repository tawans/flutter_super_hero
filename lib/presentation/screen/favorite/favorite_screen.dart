import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_super_hero/presentation/screen/favorite/favorite_provider.dart';

class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends ConsumerState<FavoriteScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(favoriteRiverpod.notifier).getAllHeros();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(favoriteRiverpod);

    return ListView.builder(
      itemCount: state.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(state[index].name));
      },
    );
  }
}
