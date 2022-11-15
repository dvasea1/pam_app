import 'package:domain/users/repository/user_repository.dart';

import '../models/small_user.dart';

class GetUsersUseCase {
  final UserRepository userRepository;

  GetUsersUseCase(this.userRepository);

  Future<List<SmallUser>> call() {
    return userRepository.getUsers();
  }
}
