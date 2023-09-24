import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_super_hero/api_key.dart';
import 'package:flutter_super_hero/data/dto/hero_id_dto.dart';
import 'package:flutter_super_hero/data/dto/heros_dto.dart';

class HeroApi {
  Dio dio = Dio();

  Future<HerosDto> fetchHeroSearch(String query) async {
    try {
      final response =
          await dio.get('https://superheroapi.com/api/$apiKey/search/$query');
      Map<String, dynamic> jsonString = jsonDecode(response.toString());
      return HerosDto.fromJson(jsonString);
    } catch (e) {
      throw Exception('Failed to load heros search query = $query');
    }
  }

  Future<HeroIdDto> fetchHeroId(String id) async {
    try {
      final response =
          await dio.get('https://superheroapi.com/api/$apiKey/$id');
      Map<String, dynamic> jsonString = jsonDecode(response.toString());
      return HeroIdDto.fromJson(jsonString);
    } catch (e) {
      throw Exception('Failed to load heros fetchId query = $id');
    }
  }
}
