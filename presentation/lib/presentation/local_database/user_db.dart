import 'package:drift/drift.dart';

class UserDb extends Table {
  TextColumn get id => text()();

  TextColumn get firstName => text()();

  TextColumn get lastName => text()();

  TextColumn get picture => text().nullable()();
}
