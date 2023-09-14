import 'package:dio/dio.dart';
import 'package:flutter_super_hero/data/api/hero_api.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';

class HeroRepositoryImpl implements HeroRepository {
  final _api = HeroApi();

  @override
  Future<List<Hero>> getHerosId(String id) async {
    final dto = await _api.fetchHeroId(id);

    if (dto.id == null) {
      throw DioException(
        requestOptions: RequestOptions(path: ""),
        error: "Hero not found",
        response: Response(
          requestOptions: RequestOptions(path: ""),
          data: "Hero not found",
          statusCode: 404,
        ),
      );
    }

    final heroResultDto = await _api.fetchHeroId(id);

    return heroResultDto.map((e) => e.toModel()).toList();
  }
}
