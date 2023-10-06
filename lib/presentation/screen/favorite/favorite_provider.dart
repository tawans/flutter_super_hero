import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_super_hero/domain/model/favorite_hero.dart';
import 'package:flutter_super_hero/domain/repository/sql_crud_repository.dart';

final favoriteRiverpod =
    StateNotifierProvider.autoDispose<FavoriteRiverpod, List<FavoriteHero>>(
  (ref) => FavoriteRiverpod(),
);

class FavoriteRiverpod extends StateNotifier<List<FavoriteHero>> {
  FavoriteRiverpod() : super([]);

  void getAllHeros() async {
    List<FavoriteHero> result = await SqlCrudRepository.getAllHeros();
    state = result;
  }

  void deleteHero(String id) async {
    await SqlCrudRepository.deleteHero(id);
    getAllHeros();
  }
}
