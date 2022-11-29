import 'package:json_annotation/json_annotation.dart';

part 'user_api_dto.g.dart';

@JsonSerializable()
class UserApiDto {
  @JsonKey(name: 'id')
  final String id;
  final String firstName;
  final String lastName;
  final String? picture;

  factory UserApiDto.fromJson(Map<String, dynamic> json) => _$UserApiDtoFromJson(json);

  UserApiDto(this.id, this.firstName, this.lastName, this.picture);

  Map<String, dynamic> toJson() => _$UserApiDtoToJson(this);
}
