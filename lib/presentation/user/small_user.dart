import 'package:json_annotation/json_annotation.dart';

part 'small_user.g.dart';

@JsonSerializable()
class SmallUser {
  @JsonKey(name: 'id')
  final String id;
  final String firstName;
  final String lastName;
  final String? picture;

  factory SmallUser.fromJson(Map<String, dynamic> json) => _$SmallUserFromJson(json);

  SmallUser(this.id, this.firstName, this.lastName, this.picture);

  Map<String, dynamic> toJson() => _$SmallUserToJson(this);
}
