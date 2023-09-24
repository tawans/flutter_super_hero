// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_hero/api_key.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_super_hero/main.dart';

void main() {
  test('http 통신 search 테스트', () async {
    //dio 통신 테스트
    var dio = Dio();
    var response =
        await dio.get('https://superheroapi.com/api/$apiKey/search/batman');
    print('11 ${response.statusCode} 11');
    print(response.data.toString());

    expect(response.statusCode, 200);
    expect(response.data['response'], 'success');
  });

  test('http 통신 fetchId 테스트', () async {
    //dio 통신 테스트
    var dio = Dio();
    var response = await dio.get('https://superheroapi.com/api/$apiKey/644');
    print('11 ${response.statusCode} 11');
    print(response.data.toString());

    expect(response.statusCode, 200);
    expect(response.data['response'], 'success');
  });
}
