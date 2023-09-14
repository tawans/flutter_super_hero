import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_super_hero/api_key.dart';
import 'package:flutter_super_hero/data/dto/heros_dto.dart';

class HeroApi {
  Dio dio = Dio();

  // Future<HeroResultDto> fetchHeroId(String id) async {
  //   final response =
  //       await dio.get('https://superheroapi.com/api/$apiKey/search/$id');

  //   if (response.statusCode == 200) {
  //     return HeroResultDto.fromJson(response.data);
  //   } else {
  //     throw Exception('Failed to load hero id = $id');
  //   }
  // }

  Future<HerosDto> fetchHeroSearch(String query) async {
    final response =
        await dio.get('https://superheroapi.com/api/$apiKey/search/$query');

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonString = jsonDecode(response.data);
      return HerosDto.fromJson(jsonString);
    } else {
      throw Exception('Failed to load heros search query = $query');
    }
  }
}
