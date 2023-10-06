import 'package:flutter_super_hero/domain/model/favorite_hero.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/domain/repository/sql_database.dart';

class SqlCrudRepository {
  static Future<SuperHero> insertHero(SuperHero superHero) async {
    var db = await SqlDatabase().database;
    final favoriteHero = favoriteHeroFromSuperHero(superHero);
    await db.insert('super_hero', favoriteHero.toJson());
    return superHero;
  }

  static Future<List<FavoriteHero>> getAllHeros() async {
    var db = await SqlDatabase().database;
    List<Map<String, dynamic>> maps = await db.query('super_hero');
    return List.generate(maps.length, (i) {
      return FavoriteHero.fromJson(maps[i]);
    });
  }

  static Future<SuperHero?> getHeroById(String id) async {
    var db = await SqlDatabase().database;
    List<Map<String, dynamic>> maps =
        await db.query('super_hero', where: 'id = ?', whereArgs: [id]);
    if (maps.isNotEmpty) {
      return SuperHero.fromJson(maps.first);
    }
    return null;
  }

  static Future<void> deleteHero(String id) async {
    var db = await SqlDatabase().database;
    await db.delete('super_hero', where: 'id = ?', whereArgs: [id]);
  }

  static FavoriteHero favoriteHeroFromSuperHero(SuperHero superHero) {
    FavoriteHero favoriteHero;

    favoriteHero = FavoriteHero(
      id: superHero.id,
      name: superHero.name,
      imageUrl: superHero.image.url,
    );

    return favoriteHero;
  }
}
