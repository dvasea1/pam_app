import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'user_db.dart';

part 'local_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'local_db.sqlite'));
    return NativeDatabase(
      file,
      logStatements: true,
    );
  });
}

@DriftDatabase(tables: [
  UserDb,
])
class LocalDataBase extends _$LocalDataBase {
  LocalDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  void insertUsers(List<UserDbData> users) async {
    await batch((batch) {
      batch.insertAll(userDb, users);
    });
  }

  Future<List<UserDbData>> getUsers() async {
    var query = select(userDb);
    return query.get();
  }

  Stream<List<UserDbData>> getUsersStream(){
    var query = select(userDb);
    return query.watch();
  }
}
