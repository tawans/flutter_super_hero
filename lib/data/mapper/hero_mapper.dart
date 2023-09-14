import 'package:flutter_super_hero/data/dto/hero_result_dto.dart';
import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/work.dart';

extension HeroMapper on HeroResultDto {
  Hero toHero() {
    return Hero(
      response: response ?? "",
      id: id ?? "",
      name: name ?? "",
      powerstats: Powerstats(
        intelligence: powerstats?.intelligence ?? "",
        strength: powerstats?.strength ?? "",
        speed: powerstats?.speed ?? "",
        durability: powerstats?.durability ?? "",
        power: powerstats?.power ?? "",
        combat: powerstats?.combat ?? "",
      ),
      biography: Biography(
        fullName: biography?.fullName ?? "",
        alterEgos: biography?.alterEgos ?? "",
        aliases: biography?.aliases ?? [],
        placeOfBirth: biography?.placeOfBirth ?? "",
        firstAppearance: biography?.firstAppearance ?? "",
        publisher: biography?.publisher ?? "",
        alignment: biography?.alignment ?? "",
      ),
      appearance: Appearance(
        gender: appearance?.gender ?? "",
        race: appearance?.race ?? "",
        height: appearance?.height ?? [],
        weight: appearance?.weight ?? [],
        eyeColor: appearance?.eyeColor ?? "",
        hairColor: appearance?.hairColor ?? "",
      ),
      work: Work(
        occupation: work?.occupation ?? "",
        base: work?.base ?? "",
      ),
      connections: Connections(
        groupAffiliation: connections?.groupAffiliation ?? "",
        relatives: connections?.relatives ?? "",
      ),
      image: Image(
        url: image?.url ?? "",
      ),
    );
  }
}
