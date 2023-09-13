import 'package:freezed_annotation/freezed_annotation.dart';

part 'connections.freezed.dart';
part 'connections.g.dart';

@freezed
class Connections with _$Connections {
  const factory Connections({
    required String groupAffiliation,
    required String relatives,
  }) = _Connections;

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json);
}
