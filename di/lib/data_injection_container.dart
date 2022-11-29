import 'package:data/local_database/local_database.dart';
import 'package:data/users/repository/users_repository_impl.dart';
import 'package:data/users/sources/user_db_data_source.dart';
import 'package:data/users/sources/users_api_data_source.dart';
import 'package:data/users/sources/users_json_asset_source.dart';
import 'package:domain/users/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

Future initData() async {
  final getIt = GetIt.instance;

  //Init LocalDabase instance
  //getIt.registerLazySingleton(() => LocalDataBase());

//Datasources
  getIt.registerLazySingleton<UserApiDataSource>(() => UserApiDataSourceImpl());
  getIt.registerLazySingleton<UserJsonAssetSource>(() => UserJsonAssetSourceImpl());
  //getIt.registerLazySingleton<UserDbDataSource>(() => UserDbDataSourceImpl(getIt.get<LocalDataBase>()));

  //repositories
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
      getIt.get<UserApiDataSource>(), getIt.get<UserJsonAssetSource>(), ));
}
