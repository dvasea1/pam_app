// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserApiDto _$UserApiDtoFromJson(Map<String, dynamic> json) => UserApiDto(
      json['id'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['picture'] as String?,
    );

Map<String, dynamic> _$UserApiDtoToJson(UserApiDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
    };
