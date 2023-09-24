// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailState _$$_DetailStateFromJson(Map<String, dynamic> json) =>
    _$_DetailState(
      hero: json['hero'] == null
          ? const SuperHero(
              id: '',
              name: '',
              powerstats: Powerstats(
                  intelligence: '',
                  strength: '',
                  speed: '',
                  durability: '',
                  power: '',
                  combat: ''),
              biography: Biography(
                  fullName: '',
                  alterEgos: '',
                  aliases: [],
                  placeOfBirth: '',
                  firstAppearance: '',
                  publisher: '',
                  alignment: ''),
              appearance: Appearance(
                  gender: '',
                  race: '',
                  height: [],
                  weight: [],
                  eyeColor: '',
                  hairColor: ''),
              work: Work(occupation: '', base: ''),
              connections: Connections(groupAffiliation: '', relatives: ''),
              image: Image(url: ''))
          : SuperHero.fromJson(json['hero'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      isShowSnackBar: json['isShowSnackBar'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_DetailStateToJson(_$_DetailState instance) =>
    <String, dynamic>{
      'hero': instance.hero,
      'isFavorite': instance.isFavorite,
      'isLoading': instance.isLoading,
      'isShowSnackBar': instance.isShowSnackBar,
      'message': instance.message,
    };
