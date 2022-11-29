import 'package:data/users/entiy/api/user_api_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_response_api_dto.g.dart';

@JsonSerializable()
class UsersResponseApiDto {
  final List<UserApiDto> data;

  factory UsersResponseApiDto.fromJson(Map<String, dynamic> json) => _$UsersResponseApiDtoFromJson(json);

  UsersResponseApiDto(this.data);

  Map<String, dynamic> toJson() => _$UsersResponseApiDtoToJson(this);
}
