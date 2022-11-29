import 'package:domain/users/repository/user_repository.dart';

import '../models/small_user.dart';

class GetUsersFromDbUseCase {
  final UserRepository userRepository;

  GetUsersFromDbUseCase(this.userRepository);

  Future<List<SmallUser>> call() {
    return userRepository.getUsersDb();
  }
}
