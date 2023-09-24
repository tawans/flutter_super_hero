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
class SuperHero with _$SuperHero {
  const factory SuperHero({
    required String id,
    required String name,
    required Powerstats powerstats,
    required Biography biography,
    required Appearance appearance,
    required Work work,
    required Connections connections,
    required Image image,
  }) = _SuperHero;

  factory SuperHero.fromJson(Map<String, dynamic> json) =>
      _$SuperHeroFromJson(json);
}
