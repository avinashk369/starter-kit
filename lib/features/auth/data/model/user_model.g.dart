// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel()
  ..name = json['name'] as String?
  ..token = json['token'] as String?
  ..email = json['email'] as String?
  ..imageUrl = json['image_url'] as String?
  ..id = (json['id'] as num?)?.toInt()
  ..data = json['data'] == null
      ? null
      : UserModel.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'name': ?instance.name,
  'token': ?instance.token,
  'email': ?instance.email,
  'image_url': ?instance.imageUrl,
  'id': ?instance.id,
  'data': ?instance.data,
};
