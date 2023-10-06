import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/data/repository/hero_repository_impl.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/use_case/get_search_heros_usecase.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_ui_event.dart';

final isLoading = StateProvider<bool>((ref) {
  return false;
});

final homeRiverpod =
    StateNotifierProvider.autoDispose<HomeRiverpod, List<SuperHero>>(
  (ref) => HomeRiverpod(),
);

class HomeRiverpod extends StateNotifier<List<SuperHero>> {
  HomeRiverpod() : super([]);

  final _getSearchHerosUseCase = GetSearchHerosUseCase(HeroRepositoryImpl());

  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  void fetchHeros(String query) async {
    if (query.isEmpty) {
      _eventController.add(const ShowSnackBar('검색어가 없습니다'));
      return;
    }

    Result<List<SuperHero>> result = await _getSearchHerosUseCase.call(query);

    switch (result) {
      case Success(:final data):
        state = data;
        _eventController.add(const EndLoading());
      case Error(:final e):
        _eventController.add(ShowSnackBar(e));
    }
  }
}
