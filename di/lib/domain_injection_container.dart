import 'package:domain/users/repository/user_repository.dart';
import 'package:domain/users/use_cases/get_users_use_case.dart';
import 'package:get_it/get_it.dart';

Future initDomain() async {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton(() => GetUsersUseCase(getIt.get<UserRepository>()));
}
