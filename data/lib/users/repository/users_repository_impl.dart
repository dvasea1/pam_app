import 'package:data/users/sources/users_api_data_source.dart';
import 'package:data/users/sources/users_json_asset_source.dart';
import 'package:domain/users/models/small_user.dart';
import 'package:domain/users/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiDataSource apiLocalDataSource;
  final UserJsonAssetSource userJsonAssetSource;

  UserRepositoryImpl(this.apiLocalDataSource, this.userJsonAssetSource);

  @override
  Future<List<SmallUser>> getUsers() {
    return apiLocalDataSource.getUsers();
  }
}
