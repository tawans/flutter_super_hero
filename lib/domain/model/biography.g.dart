// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Biography _$$_BiographyFromJson(Map<String, dynamic> json) => _$_Biography(
      fullName: json['fullName'] as String,
      alterEgos: json['alterEgos'] as String,
      aliases:
          (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
      placeOfBirth: json['placeOfBirth'] as String,
      firstAppearance: json['firstAppearance'] as String,
      publisher: json['publisher'] as String,
      alignment: json['alignment'] as String,
    );

Map<String, dynamic> _$$_BiographyToJson(_$_Biography instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'alterEgos': instance.alterEgos,
      'aliases': instance.aliases,
      'placeOfBirth': instance.placeOfBirth,
      'firstAppearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };
