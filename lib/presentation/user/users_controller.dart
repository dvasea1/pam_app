import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_2/presentation/local_database/local_database.dart';
import 'package:test_2/presentation/user/small_user.dart';
import 'package:test_2/presentation/user/users_response.dart';

class UsersController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<SmallUser> users = RxList();

  LocalDataBase localDataBase = LocalDataBase();

  void syncUsers() async {
    Uri uri = Uri.parse('https://dummyapi.io/data/v1/user?limit=50&page=1');
    var response = await http.get(uri, headers: {'app-id': '6112dc7c3f812e0d9b6679dd'});
    isLoading.value = false;
    if (response.statusCode == 200) {
      UsersResponse usersResponse = UsersResponse.fromJson(jsonDecode(response.body));
      saveUsersToDb(usersResponse.data);
    }
  }

  void getUsers() async {
    localDataBase.getUsersStream().listen((usersList) {
      print('Users from stream: $usersList');
      users.value = usersList
          .map((e) => SmallUser(
                e.id,
                e.firstName,
                e.lastName,
                e.picture,
              ))
          .toList();
      isLoading.value = users.isEmpty;
    });
    syncUsers();
  }

  //Shared preferences
  Future<void> saveUsersToSharedPreferences(List<SmallUser> users) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('users_response', jsonEncode(users));
  }

  Future<List<SmallUser>> getSavedUsersSharedPreferences() async {
    List<SmallUser> tempUsers = [];
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var response = sharedPreferences.getString('users_response');
    if (response != null) {
      //print('usersResponse: $response');
      tempUsers = List.from(jsonDecode(response)).map((e) => SmallUser.fromJson(e)).toList();
      //print('usersResponse: $users');
    }

    return tempUsers;
  }

  //LocalDatabase Drift

  void getUsersFromDb() async {
    var users = await localDataBase.getUsers();
    //print('users from db: ${users.length}');
  }

  void saveUsersToDb(List<SmallUser> users) async {
    localDataBase.insertUsers(users
        .map(
          (e) => UserDbData(
            id: e.id,
            firstName: e.firstName,
            lastName: e.lastName,
            picture: e.picture,
          ),
        )
        .toList());
  }
}
