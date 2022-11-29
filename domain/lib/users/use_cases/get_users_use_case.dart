import 'package:domain/users/repository/user_repository.dart';

import '../models/small_user.dart';

class GetUsersFromApiUseCase {
  final UserRepository userRepository;

  GetUsersFromApiUseCase(this.userRepository);

  Future<List<SmallUser>> call(int page, int limit) {
    return userRepository.getUsersApi(page, limit);
  }
}
