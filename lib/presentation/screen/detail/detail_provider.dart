import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/data/repository/hero_repository_impl.dart';
import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/model/work.dart';
import 'package:flutter_super_hero/domain/repository/sql_crud_repository.dart';
import 'package:flutter_super_hero/domain/use_case/get_hero_id_usecase.dart';

final detailRiverpod = StateNotifierProvider<DetailRiverpod, SuperHero>(
  (ref) => DetailRiverpod(),
);

class DetailRiverpod extends StateNotifier<SuperHero> {
  DetailRiverpod()
      : super(
          const SuperHero(
            id: '',
            name: '',
            powerstats: Powerstats(
              intelligence: '0',
              strength: '0',
              speed: '0',
              durability: '0',
              power: '0',
              combat: '0',
            ),
            biography: Biography(
              fullName: '',
              alterEgos: '',
              aliases: [],
              placeOfBirth: '',
              firstAppearance: '',
              publisher: '',
              alignment: '',
            ),
            appearance: Appearance(
              gender: '',
              race: '',
              height: [],
              weight: [],
              eyeColor: '',
              hairColor: '',
            ),
            work: Work(
              occupation: '',
              base: '',
            ),
            connections: Connections(
              groupAffiliation: '',
              relatives: '',
            ),
            image: Image(
              url: '',
            ),
          ),
        );

  final _getHeroIdUseCase = GetHeroIdUseCase(HeroRepositoryImpl());

  void getHero(String id) async {
    Result<SuperHero> result = await _getHeroIdUseCase.call(id);

    switch (result) {
      case Success(:final data):
        state = data;
        break;
      case Error(:final e):
        print(e);
        break;
    }
  }

  Future<SuperHero> getHeroFuture(String id) async {
    Result<SuperHero> result = await _getHeroIdUseCase.call(id);

    switch (result) {
      case Success(:final data):
        return data;
      case Error(:final e):
        print(e);
        return state;
    }
  }

  void addFavorite(SuperHero superHero) async {
    SqlCrudRepository.insertHero(superHero);
  }

  void deleteFavorite(String id) async {
    SqlCrudRepository.deleteHero(id);
  }

  Future<bool> isFavorite(String id) async {
    final favoriteHero = await SqlCrudRepository.getHeroById(id);
    print('favoriteHero: $favoriteHero');
    return favoriteHero != null ? true : false;
  }

  // bool isFavoriteSync(String id) {
  //   final favoriteHero = SqlCrudRepository.getHeroById(id);
  //   print('favoriteHero: $favoriteHero');
  //   return favoriteHero != null ? true : false;
  // }

  void toggleFavorite(String id) async {
    final isFavorite = await this.isFavorite(id);
    if (isFavorite) {
      deleteFavorite(id);
    } else {
      addFavorite(state);
    }
  }
}
