import 'package:freezed_annotation/freezed_annotation.dart';

part 'powerstats.freezed.dart';
part 'powerstats.g.dart';

@freezed
class Powerstats with _$Powerstats {
  const factory Powerstats({
    required String intelligence,
    required String strength,
    required String speed,
    required String durability,
    required String power,
    required String combat,
  }) = _Powerstats;

  factory Powerstats.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsFromJson(json);
}
