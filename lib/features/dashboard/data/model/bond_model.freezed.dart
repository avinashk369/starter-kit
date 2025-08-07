// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondModel {

 String? get logo; String? get isin; String? get rating; String? get companyName; List<String>? get tags; List<BondModel>? get data;
/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondModelCopyWith<BondModel> get copyWith => _$BondModelCopyWithImpl<BondModel>(this as BondModel, _$identity);

  /// Serializes this BondModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondModel&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,isin,rating,companyName,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BondModel(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags, data: $data)';
}


}

/// @nodoc
abstract mixin class $BondModelCopyWith<$Res>  {
  factory $BondModelCopyWith(BondModel value, $Res Function(BondModel) _then) = _$BondModelCopyWithImpl;
@useResult
$Res call({
 String? logo, String? isin, String? rating, String? companyName, List<String>? tags, List<BondModel>? data
});




}
/// @nodoc
class _$BondModelCopyWithImpl<$Res>
    implements $BondModelCopyWith<$Res> {
  _$BondModelCopyWithImpl(this._self, this._then);

  final BondModel _self;
  final $Res Function(BondModel) _then;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = freezed,Object? isin = freezed,Object? rating = freezed,Object? companyName = freezed,Object? tags = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,isin: freezed == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BondModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BondModel].
extension BondModelPatterns on BondModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BondModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BondModel value)  $default,){
final _that = this;
switch (_that) {
case _BondModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BondModel value)?  $default,){
final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? logo,  String? isin,  String? rating,  String? companyName,  List<String>? tags,  List<BondModel>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that.logo,_that.isin,_that.rating,_that.companyName,_that.tags,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? logo,  String? isin,  String? rating,  String? companyName,  List<String>? tags,  List<BondModel>? data)  $default,) {final _that = this;
switch (_that) {
case _BondModel():
return $default(_that.logo,_that.isin,_that.rating,_that.companyName,_that.tags,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? logo,  String? isin,  String? rating,  String? companyName,  List<String>? tags,  List<BondModel>? data)?  $default,) {final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that.logo,_that.isin,_that.rating,_that.companyName,_that.tags,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _BondModel implements BondModel {
  const _BondModel({this.logo, this.isin, this.rating, this.companyName, final  List<String>? tags, final  List<BondModel>? data}): _tags = tags,_data = data;
  factory _BondModel.fromJson(Map<String, dynamic> json) => _$BondModelFromJson(json);

@override final  String? logo;
@override final  String? isin;
@override final  String? rating;
@override final  String? companyName;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BondModel>? _data;
@override List<BondModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondModelCopyWith<_BondModel> get copyWith => __$BondModelCopyWithImpl<_BondModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BondModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BondModel&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,isin,rating,companyName,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BondModel(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BondModelCopyWith<$Res> implements $BondModelCopyWith<$Res> {
  factory _$BondModelCopyWith(_BondModel value, $Res Function(_BondModel) _then) = __$BondModelCopyWithImpl;
@override @useResult
$Res call({
 String? logo, String? isin, String? rating, String? companyName, List<String>? tags, List<BondModel>? data
});




}
/// @nodoc
class __$BondModelCopyWithImpl<$Res>
    implements _$BondModelCopyWith<$Res> {
  __$BondModelCopyWithImpl(this._self, this._then);

  final _BondModel _self;
  final $Res Function(_BondModel) _then;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = freezed,Object? isin = freezed,Object? rating = freezed,Object? companyName = freezed,Object? tags = freezed,Object? data = freezed,}) {
  return _then(_BondModel(
logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,isin: freezed == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BondModel>?,
  ));
}


}

// dart format on
