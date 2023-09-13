import 'package:flutter_super_hero/data/hero_api.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class HeroRepositoryImpl implements HeroRepository {
  HeroRepositoryImpl({required this.heroApi});

  final HeroApi heroApi;

  @override
  Future<List<Hero>> getHerosId(String id) async {
    final heros = await heroApi.fetchHeroId(id);
    return heros;
  }
}
