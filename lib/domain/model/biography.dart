import 'package:freezed_annotation/freezed_annotation.dart';

part 'biography.freezed.dart';
part 'biography.g.dart';

@freezed
class Biography with _$Biography {
  const factory Biography({
    required String fullName,
    required String alterEgos,
    required List<String> aliases,
    required String placeOfBirth,
    required String firstAppearance,
    required String publisher,
    required String alignment,
  }) = _Biography;

  factory Biography.fromJson(Map<String, dynamic> json) =>
      _$BiographyFromJson(json);
}
