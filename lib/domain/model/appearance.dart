import 'package:freezed_annotation/freezed_annotation.dart';

part 'appearance.freezed.dart';
part 'appearance.g.dart';

@freezed
class Appearance with _$Appearance {
  const factory Appearance({
    required String gender,
    required String race,
    required List<String> height,
    required List<String> weight,
    required String eyeColor,
    required String hairColor,
  }) = _Appearance;

  factory Appearance.fromJson(Map<String, dynamic> json) =>
      _$AppearanceFromJson(json);
}
