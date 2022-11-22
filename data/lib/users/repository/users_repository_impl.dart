import 'package:data/users/mappers/small_user_mapper.dart';
import 'package:data/users/sources/users_api_data_source.dart';
import 'package:data/users/sources/users_json_asset_source.dart';
import 'package:domain/users/models/small_user.dart';
import 'package:domain/users/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiDataSource apiDataSource;
  final UserJsonAssetSource userJsonAssetSource;

  UserRepositoryImpl(this.apiDataSource, this.userJsonAssetSource);

  @override
  Future<List<SmallUser>> getUsersApi() async {
    print('getUsersApi called');
    var usersApi = await apiDataSource.getUsers();
    return usersApi.map((e) => SmallUserMapper().mapApiToModel(e)).toList();
  }

  @override
  Future<List<SmallUser>> getUsersFromJson() async {
    var usersApi = await apiDataSource.getUsers();
    return usersApi.map((e) => SmallUserMapper().mapApiToModel(e)).toList();
  }
}
