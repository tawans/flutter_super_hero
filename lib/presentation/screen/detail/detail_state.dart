import 'package:flutter/foundation.dart';
import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/model/work.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(
      SuperHero(
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
        connections: Connections(
          groupAffiliation: '',
          relatives: '',
        ),
        image: Image(url: ''),
      ),
    )
    SuperHero hero,
    @Default(false) bool isFavorite,
    @Default(false) bool isLoading,
    @Default(false) bool isShowSnackBar,
    @Default('') String message,
  }) = _DetailState;
}
