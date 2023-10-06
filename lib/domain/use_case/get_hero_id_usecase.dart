import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class GetHeroIdUseCase {
  final HeroRepository _heroRepository;

  GetHeroIdUseCase(this._heroRepository);

  Future<Result<SuperHero>> call(String query) async {
    try {
      final result = await _heroRepository.getHeroId(query);
      return Result.success(result);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
