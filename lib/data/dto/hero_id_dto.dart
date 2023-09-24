import 'dart:convert';

HeroIdDto heroIdDtoFromJson(String str) => HeroIdDto.fromJson(json.decode(str));

String heroIdDtoToJson(HeroIdDto data) => json.encode(data.toJson());

class HeroIdDto {
  String? response;
  String? id;
  String? name;
  PowerstatsIdDto? powerstats;
  BiographyIdDto? biography;
  AppearanceIdDto? appearance;
  WorkIdDto? work;
  ConnectionsIdDto? connections;
  ImageIdDto? image;

  HeroIdDto({
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

  factory HeroIdDto.fromJson(Map<String, dynamic> json) => HeroIdDto(
        response: json["response"],
        id: json["id"],
        name: json["name"],
        powerstats: json["powerstats"] == null
            ? null
            : PowerstatsIdDto.fromJson(json["powerstats"]),
        biography: json["biography"] == null
            ? null
            : BiographyIdDto.fromJson(json["biography"]),
        appearance: json["appearance"] == null
            ? null
            : AppearanceIdDto.fromJson(json["appearance"]),
        work: json["work"] == null ? null : WorkIdDto.fromJson(json["work"]),
        connections: json["connections"] == null
            ? null
            : ConnectionsIdDto.fromJson(json["connections"]),
        image:
            json["image"] == null ? null : ImageIdDto.fromJson(json["image"]),
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

class AppearanceIdDto {
  String? gender;
  String? race;
  List<String>? height;
  List<String>? weight;
  String? eyeColor;
  String? hairColor;

  AppearanceIdDto({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  factory AppearanceIdDto.fromJson(Map<String, dynamic> json) =>
      AppearanceIdDto(
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

class BiographyIdDto {
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  BiographyIdDto({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  factory BiographyIdDto.fromJson(Map<String, dynamic> json) => BiographyIdDto(
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

class ConnectionsIdDto {
  String? groupAffiliation;
  String? relatives;

  ConnectionsIdDto({
    this.groupAffiliation,
    this.relatives,
  });

  factory ConnectionsIdDto.fromJson(Map<String, dynamic> json) =>
      ConnectionsIdDto(
        groupAffiliation: json["group-affiliation"],
        relatives: json["relatives"],
      );

  Map<String, dynamic> toJson() => {
        "group-affiliation": groupAffiliation,
        "relatives": relatives,
      };
}

class ImageIdDto {
  String? url;

  ImageIdDto({
    this.url,
  });

  factory ImageIdDto.fromJson(Map<String, dynamic> json) => ImageIdDto(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class PowerstatsIdDto {
  String? intelligence;
  String? strength;
  String? speed;
  String? durability;
  String? power;
  String? combat;

  PowerstatsIdDto({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  factory PowerstatsIdDto.fromJson(Map<String, dynamic> json) =>
      PowerstatsIdDto(
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

class WorkIdDto {
  String? occupation;
  String? base;

  WorkIdDto({
    this.occupation,
    this.base,
  });

  factory WorkIdDto.fromJson(Map<String, dynamic> json) => WorkIdDto(
        occupation: json["occupation"],
        base: json["base"],
      );

  Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
      };
}
