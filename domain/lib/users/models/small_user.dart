import 'package:json_annotation/json_annotation.dart';

part 'small_user.g.dart';

@JsonSerializable()
class SmallUser {
  final String id;
  final String firstName;
  final String lastName;
  final String? picture;

  SmallUser(this.id, this.firstName, this.lastName, this.picture);
}
