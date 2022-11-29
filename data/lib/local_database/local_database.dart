// import 'dart:io';
//
// import 'package:drift/drift.dart';
// import 'package:drift/native.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
//
// import '../users/entiy/db/user_db.dart';
//
// part 'local_database.g.dart';
//
// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'local_db.sqlite'));
//     return NativeDatabase(
//       file,
//       logStatements: true,
//     );
//   });
// }
//
// @DriftDatabase(tables: [
//   UserDb,
//
// ])
// class LocalDataBase extends _$LocalDataBase {
//   LocalDataBase() : super(_openConnection());
//
//   @override
//   int get schemaVersion => 1;
// }
