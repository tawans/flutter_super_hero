import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class GetheroIdUseCase {
  final HeroRepository _heroRepository;

  GetheroIdUseCase(this._heroRepository);

  Future<Result<SuperHero>> call(String id) async {
    try {
      final result = await _heroRepository.getHeroId(id);
      return Result.success(result);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
