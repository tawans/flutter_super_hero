// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      heros: (json['heros'] as List<dynamic>?)
              ?.map((e) => SuperHero.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      isSearching: json['isSearching'] as bool? ?? false,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'heros': instance.heros,
      'isLoading': instance.isLoading,
      'isSearching': instance.isSearching,
    };
