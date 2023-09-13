import 'package:flutter_super_hero/domain/model/hero.dart';

abstract interface class HeroRepository {
  Future<List<Hero>> getHerosId(String id);
}
