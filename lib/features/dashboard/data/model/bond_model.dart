import 'package:freezed_annotation/freezed_annotation.dart';
part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@Freezed()
abstract class BondModel with _$BondModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BondModel({
    String? logo,
    String? isin,
    String? rating,
    String? companyName,
    List<String>? tags,
    List<BondModel>? data,
  }) = _BondModel;
  factory BondModel.fromJson(Map<String, dynamic> json) =>
      _$BondModelFromJson(json);
}
