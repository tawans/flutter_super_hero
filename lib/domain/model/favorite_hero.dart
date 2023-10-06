import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_hero.freezed.dart';
part 'favorite_hero.g.dart';

@freezed
class FavoriteHero with _$FavoriteHero {
  const factory FavoriteHero({
    required String id,
    required String name,
    required String imageUrl,
  }) = _FavoriteHero;

  factory FavoriteHero.fromJson(Map<String, dynamic> json) =>
      _$FavoriteHeroFromJson(json);
}
