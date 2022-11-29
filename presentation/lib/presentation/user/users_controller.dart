import 'package:domain/users/models/small_user.dart';
import 'package:domain/users/use_cases/get_users_use_case.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class UsersController extends GetxController {
  final getUsersUseCase = GetIt.instance.get<GetUsersFromApiUseCase>();
  RxBool isLoading = false.obs;
  RxList<SmallUser> users = RxList();
  int limit = 20;
  int page = 1;
  bool _gettingNextUsers = false;

  void getUsers() async {
    print('Get users page: $page');
    var usersResponse = await getUsersUseCase.call(page, limit);
    page++;

    users.addAll(usersResponse);
    _gettingNextUsers = false;
  }

  void getNexUsers() {
    if (!_gettingNextUsers) {
      _gettingNextUsers = true;
      getUsers();
      print('Can get next users');
    }
  }
}
