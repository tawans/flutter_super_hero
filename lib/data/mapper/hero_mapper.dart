import 'package:flutter_super_hero/data/dto/hero_result_dto.dart';
import 'package:flutter_super_hero/domain/model/appearance.dart';
import 'package:flutter_super_hero/domain/model/biography.dart';
import 'package:flutter_super_hero/domain/model/connections.dart';
import 'package:flutter_super_hero/domain/model/hero.dart';
import 'package:flutter_super_hero/domain/model/image.dart';
import 'package:flutter_super_hero/domain/model/powerstats.dart';
import 'package:flutter_super_hero/domain/model/work.dart';

extension HeroMapper on Hero {
  Hero heroResultDtoToHero(HeroResultDto heroResultDto) {
    return Hero(
      response: heroResultDto.response ?? "",
      id: heroResultDto.id ?? "",
      name: heroResultDto.name ?? "",
      powerstats: Powerstats(
        intelligence: heroResultDto.powerstats?.intelligence ?? "",
        strength: heroResultDto.powerstats?.strength ?? "",
        speed: heroResultDto.powerstats?.speed ?? "",
        durability: heroResultDto.powerstats?.durability ?? "",
        power: heroResultDto.powerstats?.power ?? "",
        combat: heroResultDto.powerstats?.combat ?? "",
      ),
      biography: Biography(
        fullName: heroResultDto.biography?.fullName ?? "",
        alterEgos: heroResultDto.biography?.alterEgos ?? "",
        aliases: heroResultDto.biography?.aliases ?? [],
        placeOfBirth: heroResultDto.biography?.placeOfBirth ?? "",
        firstAppearance: heroResultDto.biography?.firstAppearance ?? "",
        publisher: heroResultDto.biography?.publisher ?? "",
        alignment: heroResultDto.biography?.alignment ?? "",
      ),
      appearance: Appearance(
        gender: heroResultDto.appearance?.gender ?? "",
        race: heroResultDto.appearance?.race ?? "",
        height: heroResultDto.appearance?.height ?? [],
        weight: heroResultDto.appearance?.weight ?? [],
        eyeColor: heroResultDto.appearance?.eyeColor ?? "",
        hairColor: heroResultDto.appearance?.hairColor ?? "",
      ),
      work: Work(
        occupation: heroResultDto.work?.occupation ?? "",
        base: heroResultDto.work?.base ?? "",
      ),
      connections: Connections(
        groupAffiliation: heroResultDto.connections?.groupAffiliation ?? "",
        relatives: heroResultDto.connections?.relatives ?? "",
      ),
      image: Image(
        url: heroResultDto.image?.url ?? "",
      ),
    );
  }
}
