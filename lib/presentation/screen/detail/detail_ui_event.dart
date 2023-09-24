import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'detail_ui_event.freezed.dart';

@freezed
sealed class DetailUiEvent with _$DetailUiEvent {
  const factory DetailUiEvent.showSnackBar(String message) = ShowSnackBarDetail;
  const factory DetailUiEvent.endLoading() = EndLoadingDetail;
}
