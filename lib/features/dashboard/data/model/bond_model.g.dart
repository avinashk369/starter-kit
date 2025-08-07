// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BondModel _$BondModelFromJson(Map<String, dynamic> json) => _BondModel(
  logo: json['logo'] as String?,
  isin: json['isin'] as String?,
  rating: json['rating'] as String?,
  companyName: json['company_name'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => BondModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BondModelToJson(_BondModel instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'isin': instance.isin,
      'rating': instance.rating,
      'company_name': instance.companyName,
      'tags': instance.tags,
      'data': instance.data,
    };
