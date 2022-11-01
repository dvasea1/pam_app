import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_2/presentation/user/small_user.dart';
import 'package:test_2/presentation/user/users_response.dart';

class UsersController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<SmallUser> users = RxList();

  void getUsers() async {
    isLoading.value = true;
    Uri uri = Uri.parse('https://dummyapi.io/data/v1/user?limit=50&page=1');
    var response = await http.get(uri, headers: {'app-id': '6112dc7c3f812e0d9b6679dd'});
    isLoading.value = false;
    if (response.statusCode == 200) {
      UsersResponse usersResponse = UsersResponse.fromJson(jsonDecode(response.body));
      print(usersResponse.data);
      users.value = usersResponse.data;
    }
    print(response.body);
    // print(response.body);
  }
}
