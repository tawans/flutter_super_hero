import 'package:flutter_super_hero/domain/model/super_hero.dart';

abstract interface class HeroRepository {
  Future<List<SuperHero>> getSearchHeros(String query);
  Future<SuperHero> getHeroId(String id);
}
