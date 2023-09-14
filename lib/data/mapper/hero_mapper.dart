import 'package:flutter_super_hero/data/dto/heros_dto.dart';
import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/work.dart';

extension HeroMapper on Result {
  Hero toHero() {
    return Hero(
      id: id ?? '',
      name: name ?? '',
      powerstats: Powerstats(
        intelligence: PowerstatsDto().intelligence ?? '',
        strength: PowerstatsDto().strength ?? '',
        speed: PowerstatsDto().speed ?? '',
        durability: PowerstatsDto().durability ?? '',
        power: PowerstatsDto().power ?? '',
        combat: PowerstatsDto().combat ?? '',
      ),
      biography: Biography(
        fullName: BiographyDto().fullName ?? '',
        alterEgos: BiographyDto().alterEgos ?? '',
        aliases: BiographyDto().aliases ?? [],
        placeOfBirth: BiographyDto().placeOfBirth ?? '',
        firstAppearance: BiographyDto().firstAppearance ?? '',
        publisher: BiographyDto().publisher ?? '',
        alignment: BiographyDto().alignment ?? '',
      ),
      appearance: Appearance(
        gender: AppearanceDto().gender ?? '',
        race: AppearanceDto().race ?? '',
        height: AppearanceDto().height ?? [],
        weight: AppearanceDto().weight ?? [],
        eyeColor: AppearanceDto().eyeColor ?? '',
        hairColor: AppearanceDto().hairColor ?? '',
      ),
      work: Work(
        occupation: WorkDto().occupation ?? '',
        base: WorkDto().base ?? '',
      ),
      connections: Connections(
        groupAffiliation: ConnectionsDto().groupAffiliation ?? '',
        relatives: ConnectionsDto().relatives ?? '',
      ),
      image: Image(
        url: ImageDto().url ?? '',
      ),
    );
  }
}
