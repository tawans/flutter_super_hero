// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SuperHero _$$_SuperHeroFromJson(Map<String, dynamic> json) => _$_SuperHero(
      id: json['id'] as String,
      name: json['name'] as String,
      powerstats:
          Powerstats.fromJson(json['powerstats'] as Map<String, dynamic>),
      biography: Biography.fromJson(json['biography'] as Map<String, dynamic>),
      appearance:
          Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
      work: Work.fromJson(json['work'] as Map<String, dynamic>),
      connections:
          Connections.fromJson(json['connections'] as Map<String, dynamic>),
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SuperHeroToJson(_$_SuperHero instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'powerstats': instance.powerstats,
      'biography': instance.biography,
      'appearance': instance.appearance,
      'work': instance.work,
      'connections': instance.connections,
      'image': instance.image,
    };
