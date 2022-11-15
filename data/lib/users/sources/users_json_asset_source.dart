import 'package:data/users/entiy/user_api_dto.dart';

abstract class UserJsonAssetSource {
  Future<List<UserApiDto>> getUsers();
}

class UserJsonAssetSourceImpl extends UserJsonAssetSource {
  @override
  Future<List<UserApiDto>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

}
