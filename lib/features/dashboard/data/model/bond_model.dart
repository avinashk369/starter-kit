import 'package:freezed_annotation/freezed_annotation.dart';
part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class BondModel with _$BondModel {
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
