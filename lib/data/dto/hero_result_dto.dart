// To parse this JSON data, do
//
//     final heroResultDto = heroResultDtoFromJson(jsonString);

import 'dart:convert';

HeroResultDto heroResultDtoFromJson(String str) =>
    HeroResultDto.fromJson(json.decode(str));

String heroResultDtoToJson(HeroResultDto data) => json.encode(data.toJson());

class HeroResultDto {
  String? response;
  String? id;
  String? name;
  PowerstatsDto? powerstats;
  BiographyDto? biography;
  AppearanceDto? appearance;
  WorkDto? work;
  ConnectionsDto? connections;
  ImageDto? image;

  HeroResultDto({
    this.response,
    this.id,
    this.name,
    this.powerstats,
    this.biography,
    this.appearance,
    this.work,
    this.connections,
    this.image,
  });

  factory HeroResultDto.fromJson(Map<String, dynamic> json) => HeroResultDto(
        response: json["response"],
        id: json["id"],
        name: json["name"],
        powerstats: json["powerstats"] == null
            ? null
            : PowerstatsDto.fromJson(json["powerstats"]),
        biography: json["biography"] == null
            ? null
            : BiographyDto.fromJson(json["biography"]),
        appearance: json["appearance"] == null
            ? null
            : AppearanceDto.fromJson(json["appearance"]),
        work: json["work"] == null ? null : WorkDto.fromJson(json["work"]),
        connections: json["connections"] == null
            ? null
            : ConnectionsDto.fromJson(json["connections"]),
        image: json["image"] == null ? null : ImageDto.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response,
        "id": id,
        "name": name,
        "powerstats": powerstats?.toJson(),
        "biography": biography?.toJson(),
        "appearance": appearance?.toJson(),
        "work": work?.toJson(),
        "connections": connections?.toJson(),
        "image": image?.toJson(),
      };
}

class AppearanceDto {
  String? gender;
  String? race;
  List<String>? height;
  List<String>? weight;
  String? eyeColor;
  String? hairColor;

  AppearanceDto({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  factory AppearanceDto.fromJson(Map<String, dynamic> json) => AppearanceDto(
        gender: json["gender"],
        race: json["race"],
        height: json["height"] == null
            ? []
            : List<String>.from(json["height"]!.map((x) => x)),
        weight: json["weight"] == null
            ? []
            : List<String>.from(json["weight"]!.map((x) => x)),
        eyeColor: json["eye-color"],
        hairColor: json["hair-color"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "race": race,
        "height":
            height == null ? [] : List<dynamic>.from(height!.map((x) => x)),
        "weight":
            weight == null ? [] : List<dynamic>.from(weight!.map((x) => x)),
        "eye-color": eyeColor,
        "hair-color": hairColor,
      };
}

class BiographyDto {
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  BiographyDto({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  factory BiographyDto.fromJson(Map<String, dynamic> json) => BiographyDto(
        fullName: json["full-name"],
        alterEgos: json["alter-egos"],
        aliases: json["aliases"] == null
            ? []
            : List<String>.from(json["aliases"]!.map((x) => x)),
        placeOfBirth: json["place-of-birth"],
        firstAppearance: json["first-appearance"],
        publisher: json["publisher"],
        alignment: json["alignment"],
      );

  Map<String, dynamic> toJson() => {
        "full-name": fullName,
        "alter-egos": alterEgos,
        "aliases":
            aliases == null ? [] : List<dynamic>.from(aliases!.map((x) => x)),
        "place-of-birth": placeOfBirth,
        "first-appearance": firstAppearance,
        "publisher": publisher,
        "alignment": alignment,
      };
}

class ConnectionsDto {
  String? groupAffiliation;
  String? relatives;

  ConnectionsDto({
    this.groupAffiliation,
    this.relatives,
  });

  factory ConnectionsDto.fromJson(Map<String, dynamic> json) => ConnectionsDto(
        groupAffiliation: json["group-affiliation"],
        relatives: json["relatives"],
      );

  Map<String, dynamic> toJson() => {
        "group-affiliation": groupAffiliation,
        "relatives": relatives,
      };
}

class ImageDto {
  String? url;

  ImageDto({
    this.url,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) => ImageDto(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class PowerstatsDto {
  String? intelligence;
  String? strength;
  String? speed;
  String? durability;
  String? power;
  String? combat;

  PowerstatsDto({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  factory PowerstatsDto.fromJson(Map<String, dynamic> json) => PowerstatsDto(
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"],
        combat: json["combat"],
      );

  Map<String, dynamic> toJson() => {
        "intelligence": intelligence,
        "strength": strength,
        "speed": speed,
        "durability": durability,
        "power": power,
        "combat": combat,
      };
}

class WorkDto {
  String? occupation;
  String? base;

  WorkDto({
    this.occupation,
    this.base,
  });

  factory WorkDto.fromJson(Map<String, dynamic> json) => WorkDto(
        occupation: json["occupation"],
        base: json["base"],
      );

  Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
      };
}
