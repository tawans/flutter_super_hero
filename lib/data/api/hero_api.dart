import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_super_hero/api_key.dart';
import 'package:flutter_super_hero/data/dto/hero_result_dto.dart';

class HeroApi {
  Dio dio = Dio();

  Future<HeroResultDto> fetchHeroId(String id) async {
    final response = await dio.get('https://superheroapi.com/api/$apiKey/$id');

    if (response.statusCode == 200) {
      return HeroResultDto.fromJson(response.data);
      // return HeroResultDto.fromJson(jsonDecode(response.data));
    } else {
      throw Exception('Failed to load hero');
    }
  }
}
