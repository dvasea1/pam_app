import 'package:data/users/mappers/small_user_mapper.dart';
import 'package:data/users/sources/user_db_data_source.dart';
import 'package:data/users/sources/users_api_data_source.dart';
import 'package:data/users/sources/users_json_asset_source.dart';
import 'package:domain/users/models/small_user.dart';
import 'package:domain/users/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiDataSource apiDataSource;
  //final UserDbDataSource userDbDataSource;
  final UserJsonAssetSource userJsonAssetSource;

  UserRepositoryImpl(this.apiDataSource, this.userJsonAssetSource,);

  @override
  Future<List<SmallUser>> getUsersApi(int page, int limit) async {
    print('getUsersApi called');
    var usersApi = await apiDataSource.getUsers(page, limit);
    return usersApi.map((e) => SmallUserMapper().mapApiToModel(e)).toList();
  }

  @override
  Future<List<SmallUser>> getUsersFromJson() async {
    return [];
  }

  @override
  Future<List<SmallUser>> getUsersDb() async {
    //var usersFromDb = await userDbDataSource.getUsers();
    return [];//usersFromDb.map((e) => SmallUserMapper().mapDbToModel(e)).toList();
  }
}
