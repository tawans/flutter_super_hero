// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_super_hero/main.dart';

void main() {
  test('http 통신 테스트', () async {
    //dio 통신 테스트
    var dio = Dio();
    var response =
        await dio.get('https://jsonplaceholder.typicode.com/posts/1');
    print(response.data);
  });
}
