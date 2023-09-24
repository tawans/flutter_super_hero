import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class GetSearchHerosUseCase {
  final HeroRepository _heroRepository;

  GetSearchHerosUseCase(this._heroRepository);

  Future<Result<List<SuperHero>>> call(String query) async {
    try {
      final result = await _heroRepository.getSearchHeros(query);
      return Result.success(result);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
