import 'package:dio/dio.dart';
import 'package:flutter_super_hero/api_key.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';

class HeroApi {
  Dio dio = Dio();

  Future<List<Hero>> fetchHeroId(String id) async {
    final response = await dio.get('https://superheroapi.com/api/$apiKey/$id');

    if (response.statusCode == 200) {
      final List<Hero> heros = [];
      heros.add(Hero.fromJson(response.data));

      heros.map((e) => print('${e.name}...{$e.powerstats');
      return heros;
    } else {
      throw Exception('Failed to load hero');
    }
  }
}
