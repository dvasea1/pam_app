import 'package:data/local_database/local_database.dart';

abstract class UserDbDataSource {
  // Future<void> insertUsers(List<UserDbData> users);
  //
  // Future<List<UserDbData>> getUsers();
  //
  // Stream<List<UserDbData>> getUsersStream();
}

class UserDbDataSourceImpl implements UserDbDataSource {
  // final LocalDataBase dataBase;
  //
  // UserDbDataSourceImpl(this.dataBase);
  //
  // @override
  // Future<void> insertUsers(List<UserDbData> users) async {
  //   await dataBase.batch((batch) {
  //     batch.insertAll(dataBase.userDb, users);
  //   });
  // }
  //
  // @override
  // Future<List<UserDbData>> getUsers() async {
  //   var query = dataBase.select(dataBase.userDb);
  //   return query.get();
  // }
  //
  // @override
  // Stream<List<UserDbData>> getUsersStream() {
  //   var query = dataBase.select(dataBase.userDb);
  //   return query.watch();
  // }
}
