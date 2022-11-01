import 'package:json_annotation/json_annotation.dart';
import 'package:test_2/presentation/user/small_user.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  final List<SmallUser> data;

  factory UsersResponse.fromJson(Map<String, dynamic> json) => _$UsersResponseFromJson(json);

  UsersResponse(this.data);

  Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}
