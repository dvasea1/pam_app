import 'package:domain/users/models/small_user.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  final List<SmallUser> data;

  factory UsersResponse.fromJson(Map<String, dynamic> json) => _$UsersResponseFromJson(json);

  UsersResponse(this.data);

  Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}
