import 'package:data/users/entiy/user_api_dto.dart';
import 'package:domain/users/models/small_user.dart';

class SmallUserMapper {
  SmallUser mapApiToModel(UserApiDto input) {
    return SmallUser(input.id, input.firstName, input.lastName, input.picture);
  }
}
