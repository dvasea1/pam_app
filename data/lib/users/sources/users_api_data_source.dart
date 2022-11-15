import 'package:data/users/entiy/user_api_dto.dart';

abstract class UserApiDataSource {
  Future<List<UserApiDto>> getUsers();
}

class UserApiDataSourceImpl extends UserApiDataSource {
  @override
  Future<List<UserApiDto>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

}