import 'package:flutter_super_hero/data/dto/hero_id_dto.dart';
import 'package:flutter_super_hero/data/dto/heros_dto.dart';
import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/work.dart';

extension HeroMapper on HeroIdDto {
  SuperHero toHero() {
    return SuperHero(
      id: id ?? '',
      name: name ?? '',
      powerstats: Powerstats(
        intelligence: powerstats!.intelligence == 'null'
            ? '0'
            : powerstats!.intelligence ?? '0',
        strength: powerstats!.strength ?? '0',
        speed: powerstats!.speed ?? '0',
        durability: powerstats!.durability ?? '0',
        power: powerstats!.power ?? '0',
        combat: powerstats!.combat ?? '0',
      ),
      biography: Biography(
        fullName: biography!.fullName ?? '',
        alterEgos: biography!.alterEgos ?? '',
        aliases: biography!.aliases ?? [],
        placeOfBirth: biography!.placeOfBirth ?? '',
        firstAppearance: biography!.firstAppearance ?? '',
        publisher: biography!.publisher ?? '',
        alignment: biography!.alignment ?? '',
      ),
      appearance: Appearance(
        gender: appearance!.gender ?? '',
        race: appearance!.race ?? '',
        height: appearance!.height ?? [],
        weight: appearance!.weight ?? [],
        eyeColor: appearance!.eyeColor ?? '',
        hairColor: appearance!.hairColor ?? '',
      ),
      work: Work(
        occupation: work!.occupation ?? '',
        base: work!.base ?? '',
      ),
      connections: Connections(
        groupAffiliation: connections!.groupAffiliation ?? '',
        relatives: connections!.relatives ?? '',
      ),
      image: Image(
        url: image!.url == 'null'
            ? 'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fus.123rf.com%2F450wm%2Fturr17%2Fturr171409%2Fturr17140900911%2F32079095-camera-icon-with-flat-design-in-blue-circle-with-long-shadow.jpg%3Fver%3D6&type=sc960_832'
            : image!.url ?? '',
      ),
    );
  }
}
