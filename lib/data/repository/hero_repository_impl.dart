import 'package:flutter_super_hero/data/api/hero_api.dart';
import 'package:flutter_super_hero/data/mapper/heroId_mapper.dart';
import 'package:flutter_super_hero/data/mapper/hero_mapper.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class HeroRepositoryImpl implements HeroRepository {
  final _api = HeroApi();

  @override
  Future<List<SuperHero>> getSearchHeros(String query) async {
    final resultDto = await _api.fetchHeroSearch(query);

    if (resultDto.results == null) {
      return [];
    }

    return resultDto.results!.map((e) => e.toHero()).toList();
  }

  @override
  Future<SuperHero> getHeroId(String id) async {
    final resultDto = await _api.fetchHeroId(id);

    return resultDto.toHero();
  }
}
