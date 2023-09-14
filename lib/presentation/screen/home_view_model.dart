import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_super_hero/domain/repository/hero_repository.dart';
import 'package:flutter_super_hero/domain/use_case/get_search_heros_usecase.dart';
import 'package:flutter_super_hero/presentation/screen/home_state.dart';
import 'package:flutter_super_hero/presentation/screen/home_ui_event.dart';

import '../../core/result.dart';

class HomeViewModel with ChangeNotifier {
  final GetSearchHerosUseCase _getSearchHerosUseCase;

  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeViewModel(this._getSearchHerosUseCase);

  HomeState _state = const HomeState();

  HomeState get state => _state;

  void fetchImages(String query) async {
    if (query.isEmpty) {
      _eventController.add(const ShowSnackBar('검색어가 없습니다'));
      return;
    }

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getSearchHerosUseCase.call(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          isLoading: false,
          heros: data,
        );
        notifyListeners();

        _eventController.add(const EndLoading());
      case Error(:final e):
        _eventController.add(ShowSnackBar(e));
    }
  }
}
