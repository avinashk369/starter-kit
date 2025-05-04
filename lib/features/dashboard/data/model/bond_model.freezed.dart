// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BondModel {
  String? get logo => throw _privateConstructorUsedError;
  String? get isin => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<BondModel>? get data => throw _privateConstructorUsedError;

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BondModelCopyWith<BondModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondModelCopyWith<$Res> {
  factory $BondModelCopyWith(BondModel value, $Res Function(BondModel) then) =
      _$BondModelCopyWithImpl<$Res, BondModel>;
  @useResult
  $Res call(
      {String? logo,
      String? isin,
      String? rating,
      String? companyName,
      List<String>? tags,
      List<BondModel>? data});
}

/// @nodoc
class _$BondModelCopyWithImpl<$Res, $Val extends BondModel>
    implements $BondModelCopyWith<$Res> {
  _$BondModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? isin = freezed,
    Object? rating = freezed,
    Object? companyName = freezed,
    Object? tags = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      isin: freezed == isin
          ? _value.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BondModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BondModelImplCopyWith<$Res>
    implements $BondModelCopyWith<$Res> {
  factory _$$BondModelImplCopyWith(
          _$BondModelImpl value, $Res Function(_$BondModelImpl) then) =
      __$$BondModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? logo,
      String? isin,
      String? rating,
      String? companyName,
      List<String>? tags,
      List<BondModel>? data});
}

/// @nodoc
class __$$BondModelImplCopyWithImpl<$Res>
    extends _$BondModelCopyWithImpl<$Res, _$BondModelImpl>
    implements _$$BondModelImplCopyWith<$Res> {
  __$$BondModelImplCopyWithImpl(
      _$BondModelImpl _value, $Res Function(_$BondModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? isin = freezed,
    Object? rating = freezed,
    Object? companyName = freezed,
    Object? tags = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BondModelImpl(
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      isin: freezed == isin
          ? _value.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BondModel>?,
    ));
  }
}

/// @nodoc

class _$BondModelImpl implements _BondModel {
  const _$BondModelImpl(
      {this.logo,
      this.isin,
      this.rating,
      this.companyName,
      final List<String>? tags,
      final List<BondModel>? data})
      : _tags = tags,
        _data = data;

  @override
  final String? logo;
  @override
  final String? isin;
  @override
  final String? rating;
  @override
  final String? companyName;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BondModel>? _data;
  @override
  List<BondModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BondModel(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondModelImpl &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      logo,
      isin,
      rating,
      companyName,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BondModelImplCopyWith<_$BondModelImpl> get copyWith =>
      __$$BondModelImplCopyWithImpl<_$BondModelImpl>(this, _$identity);
}

abstract class _BondModel implements BondModel {
  const factory _BondModel(
      {final String? logo,
      final String? isin,
      final String? rating,
      final String? companyName,
      final List<String>? tags,
      final List<BondModel>? data}) = _$BondModelImpl;

  @override
  String? get logo;
  @override
  String? get isin;
  @override
  String? get rating;
  @override
  String? get companyName;
  @override
  List<String>? get tags;
  @override
  List<BondModel>? get data;

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BondModelImplCopyWith<_$BondModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
