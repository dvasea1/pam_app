import 'dart:convert';

import 'package:data/users/entiy/api/user_api_dto.dart';
import 'package:data/users/entiy/api/users_response_api_dto.dart';
import 'package:http/http.dart' as http;

abstract class UserApiDataSource {
  Future<List<UserApiDto>> getUsers(int page, int limit);
}

class UserApiDataSourceImpl extends UserApiDataSource {
  @override
  Future<List<UserApiDto>> getUsers(int page, int limit) async {
    Uri uri = Uri.parse('https://dummyapi.io/data/v1/user?limit=$limit&page=$page');
    var response = await http.get(uri, headers: {'app-id': '6112dc7c3f812e0d9b6679dd'});
    print('response $response');
    if (response.statusCode == 200) {
      UsersResponseApiDto usersResponse = UsersResponseApiDto.fromJson(jsonDecode(response.body));
      return usersResponse.data;
    }
    return [];
  }
}
