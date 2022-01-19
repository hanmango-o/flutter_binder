import 'dart:developer';

import 'package:flutter_binder/sqflite_bundle/model/dog.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBController {
  late Dog _dog;

  // Using to Insert, Update and Delete Data
  DBController(Map<String, dynamic> dog) {
    _dog = Dog(id: dog['id'], name: dog['name'], age: dog['age']);
  }

  // Init Dogs Database or Create Dogs Database
  // ignore: non_constant_identifier_names
  static Future<dynamic> _InitDogsDB() async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'doggie_database.db'),
      onCreate: (db, version) {
        log('---Create database---');
        db
            .execute(
              'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
            )
            .whenComplete(() => db);
      },
      onOpen: (db) => log('Database open'),
      version: 1,
    );
    return database;
  }

  // Read Dog Data in Dogs Database
  static Future<List<Map<String, dynamic>>> readDogs() async {
    final db = await _InitDogsDB();
    final List<Map<String, dynamic>> maps = await db.query('dogs');
    db.close();

    // return List.generate(maps.length, (i) {
    //   return Dog(
    //     id: maps[i]['id'],
    //     name: maps[i]['name'],
    //     age: maps[i]['age'],
    //   );
    // });
    return maps;
  }

  // Insert Dog Data in Dogs Database
  Future<void> insertDogs() async {
    final db = await _InitDogsDB();

    await db.insert(
      'dogs',
      _dog.toMap(),
    );
    db.close();
  }

  // Update Data in Dogs Database
  Future<void> updateDogs() async {
    final db = await _InitDogsDB();

    await db.update(
      'dogs',
      _dog.toMap(),
      where: 'id = ?',
      whereArgs: [_dog.id],
    );
    db.close();
  }

  // Delete Data in Dogs Database
  Future<void> deleteDogs() async {
    final db = await _InitDogsDB();

    await db.delete(
      'dogs',
      where: 'id = ?',
      whereArgs: [_dog.id],
    );
    db.close();
  }
}
