import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_ui_event.freezed.dart';

@freezed
sealed class HomeUiEvent with _$HomeUiEvent {
  const factory HomeUiEvent.showSnackBar(String message) = ShowSnackBar;
  const factory HomeUiEvent.endLoading() = EndLoading;
}
