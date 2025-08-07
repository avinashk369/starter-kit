// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WelcomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeEvent()';
}


}

/// @nodoc
class $WelcomeEventCopyWith<$Res>  {
$WelcomeEventCopyWith(WelcomeEvent _, $Res Function(WelcomeEvent) __);
}


/// Adds pattern-matching-related methods to [WelcomeEvent].
extension WelcomeEventPatterns on WelcomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckAndNavigate value)?  checkAndNavigate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckAndNavigate() when checkAndNavigate != null:
return checkAndNavigate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckAndNavigate value)  checkAndNavigate,}){
final _that = this;
switch (_that) {
case CheckAndNavigate():
return checkAndNavigate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckAndNavigate value)?  checkAndNavigate,}){
final _that = this;
switch (_that) {
case CheckAndNavigate() when checkAndNavigate != null:
return checkAndNavigate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkAndNavigate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckAndNavigate() when checkAndNavigate != null:
return checkAndNavigate();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkAndNavigate,}) {final _that = this;
switch (_that) {
case CheckAndNavigate():
return checkAndNavigate();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkAndNavigate,}) {final _that = this;
switch (_that) {
case CheckAndNavigate() when checkAndNavigate != null:
return checkAndNavigate();case _:
  return null;

}
}

}

/// @nodoc


class CheckAndNavigate implements WelcomeEvent {
  const CheckAndNavigate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAndNavigate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeEvent.checkAndNavigate()';
}


}




/// @nodoc
mixin _$WelcomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState()';
}


}

/// @nodoc
class $WelcomeStateCopyWith<$Res>  {
$WelcomeStateCopyWith(WelcomeState _, $Res Function(WelcomeState) __);
}


/// Adds pattern-matching-related methods to [WelcomeState].
extension WelcomeStatePatterns on WelcomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _ShouldNavigate value)?  shouldNavigate,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ShouldNavigate() when shouldNavigate != null:
return shouldNavigate(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _ShouldNavigate value)  shouldNavigate,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _ShouldNavigate():
return shouldNavigate(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _ShouldNavigate value)?  shouldNavigate,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ShouldNavigate() when shouldNavigate != null:
return shouldNavigate(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( bool shouldNavigate)?  shouldNavigate,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ShouldNavigate() when shouldNavigate != null:
return shouldNavigate(_that.shouldNavigate);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( bool shouldNavigate)  shouldNavigate,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ShouldNavigate():
return shouldNavigate(_that.shouldNavigate);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( bool shouldNavigate)?  shouldNavigate,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ShouldNavigate() when shouldNavigate != null:
return shouldNavigate(_that.shouldNavigate);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements WelcomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState.initial()';
}


}




/// @nodoc


class _Loading implements WelcomeState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState.loading()';
}


}




/// @nodoc


class _ShouldNavigate implements WelcomeState {
  const _ShouldNavigate({this.shouldNavigate = false});
  

@JsonKey() final  bool shouldNavigate;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShouldNavigateCopyWith<_ShouldNavigate> get copyWith => __$ShouldNavigateCopyWithImpl<_ShouldNavigate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShouldNavigate&&(identical(other.shouldNavigate, shouldNavigate) || other.shouldNavigate == shouldNavigate));
}


@override
int get hashCode => Object.hash(runtimeType,shouldNavigate);

@override
String toString() {
  return 'WelcomeState.shouldNavigate(shouldNavigate: $shouldNavigate)';
}


}

/// @nodoc
abstract mixin class _$ShouldNavigateCopyWith<$Res> implements $WelcomeStateCopyWith<$Res> {
  factory _$ShouldNavigateCopyWith(_ShouldNavigate value, $Res Function(_ShouldNavigate) _then) = __$ShouldNavigateCopyWithImpl;
@useResult
$Res call({
 bool shouldNavigate
});




}
/// @nodoc
class __$ShouldNavigateCopyWithImpl<$Res>
    implements _$ShouldNavigateCopyWith<$Res> {
  __$ShouldNavigateCopyWithImpl(this._self, this._then);

  final _ShouldNavigate _self;
  final $Res Function(_ShouldNavigate) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shouldNavigate = null,}) {
  return _then(_ShouldNavigate(
shouldNavigate: null == shouldNavigate ? _self.shouldNavigate : shouldNavigate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements WelcomeState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WelcomeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $WelcomeStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
