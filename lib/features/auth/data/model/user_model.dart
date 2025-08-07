import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class UserModel {
  String? name;
  String? token;
  String? email;
  String? imageUrl;
  int? id;
  UserModel? data;
  UserModel();
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
