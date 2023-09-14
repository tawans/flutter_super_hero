import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/work.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero.freezed.dart';
part 'hero.g.dart';

@freezed
class Hero with _$Hero {
  const factory Hero({
    required String id,
    required String name,
    required Powerstats powerstats,
    required Biography biography,
    required Appearance appearance,
    required Work work,
    required Connections connections,
    required Image image,
  }) = _Hero;

  factory Hero.fromJson(Map<String, dynamic> json) => _$HeroFromJson(json);
}
