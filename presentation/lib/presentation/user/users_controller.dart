import 'package:domain/users/models/small_user.dart';
import 'package:domain/users/use_cases/get_users_use_case.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class UsersController extends GetxController {
  GetUsersUseCase getUsersUseCase = GetIt.instance.get<GetUsersUseCase>();
  RxBool isLoading = false.obs;
  RxList<SmallUser> users = RxList();

  void getUsers() async {
    var usersResponse = await getUsersUseCase.call();
    users.value = usersResponse;
  }
}
