import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class GetSearchHerosUseCase {
  final HeroRepository _heroRepository;

  GetSearchHerosUseCase(this._heroRepository);

  Future<Result<List<Hero>>> call(String query) async {
    try {
      return Result.success(await _heroRepository.getSearchHeros(query));
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
