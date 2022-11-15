import 'package:json_annotation/json_annotation.dart';
import 'package:test_2/presentation/home/models/user.dart';

import 'article.dart';
part 'response.g.dart';

@JsonSerializable()
class Response {
  final User user;
  final List<Article> articles;

  Response(this.user, this.articles);


  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}