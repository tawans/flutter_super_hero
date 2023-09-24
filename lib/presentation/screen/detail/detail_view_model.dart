import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_super_hero/core/result.dart';
import 'package:flutter_super_hero/domain/use_case/get_hero_id_usecase.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_state.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_ui_event.dart';

class DetailViewModel with ChangeNotifier {
  final GetheroIdUseCase _getHeroIdUseCase;

  final _eventController = StreamController<DetailUiEvent>();

  Stream<DetailUiEvent> get eventStream => _eventController.stream;

  DetailViewModel(this._getHeroIdUseCase);

  DetailState _state = const DetailState();

  DetailState get state => _state;

  void fetchHero(String id) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getHeroIdUseCase.call(id);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          isLoading: false,
          hero: data,
        );
        notifyListeners();

        _eventController.add(const EndLoadingDetail());
      case Error(:final e):
        _eventController.add(ShowSnackBarDetail(e));
    }
  }
}
