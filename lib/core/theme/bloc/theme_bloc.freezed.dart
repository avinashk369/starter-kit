// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent()';
}


}

/// @nodoc
class $ThemeEventCopyWith<$Res>  {
$ThemeEventCopyWith(ThemeEvent _, $Res Function(ThemeEvent) __);
}


/// Adds pattern-matching-related methods to [ThemeEvent].
extension ThemeEventPatterns on ThemeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeTheme value)?  changeTheme,TResult Function( GetTheme value)?  getTheme,TResult Function( SetTheme value)?  setTheme,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeTheme() when changeTheme != null:
return changeTheme(_that);case GetTheme() when getTheme != null:
return getTheme(_that);case SetTheme() when setTheme != null:
return setTheme(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeTheme value)  changeTheme,required TResult Function( GetTheme value)  getTheme,required TResult Function( SetTheme value)  setTheme,}){
final _that = this;
switch (_that) {
case ChangeTheme():
return changeTheme(_that);case GetTheme():
return getTheme(_that);case SetTheme():
return setTheme(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeTheme value)?  changeTheme,TResult? Function( GetTheme value)?  getTheme,TResult? Function( SetTheme value)?  setTheme,}){
final _that = this;
switch (_that) {
case ChangeTheme() when changeTheme != null:
return changeTheme(_that);case GetTheme() when getTheme != null:
return getTheme(_that);case SetTheme() when setTheme != null:
return setTheme(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isDarkMode)?  changeTheme,TResult Function()?  getTheme,TResult Function( bool isDarkMode)?  setTheme,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeTheme() when changeTheme != null:
return changeTheme(_that.isDarkMode);case GetTheme() when getTheme != null:
return getTheme();case SetTheme() when setTheme != null:
return setTheme(_that.isDarkMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isDarkMode)  changeTheme,required TResult Function()  getTheme,required TResult Function( bool isDarkMode)  setTheme,}) {final _that = this;
switch (_that) {
case ChangeTheme():
return changeTheme(_that.isDarkMode);case GetTheme():
return getTheme();case SetTheme():
return setTheme(_that.isDarkMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isDarkMode)?  changeTheme,TResult? Function()?  getTheme,TResult? Function( bool isDarkMode)?  setTheme,}) {final _that = this;
switch (_that) {
case ChangeTheme() when changeTheme != null:
return changeTheme(_that.isDarkMode);case GetTheme() when getTheme != null:
return getTheme();case SetTheme() when setTheme != null:
return setTheme(_that.isDarkMode);case _:
  return null;

}
}

}

/// @nodoc


class ChangeTheme implements ThemeEvent {
  const ChangeTheme({required this.isDarkMode});
  

 final  bool isDarkMode;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeThemeCopyWith<ChangeTheme> get copyWith => _$ChangeThemeCopyWithImpl<ChangeTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeTheme&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode));
}


@override
int get hashCode => Object.hash(runtimeType,isDarkMode);

@override
String toString() {
  return 'ThemeEvent.changeTheme(isDarkMode: $isDarkMode)';
}


}

/// @nodoc
abstract mixin class $ChangeThemeCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ChangeThemeCopyWith(ChangeTheme value, $Res Function(ChangeTheme) _then) = _$ChangeThemeCopyWithImpl;
@useResult
$Res call({
 bool isDarkMode
});




}
/// @nodoc
class _$ChangeThemeCopyWithImpl<$Res>
    implements $ChangeThemeCopyWith<$Res> {
  _$ChangeThemeCopyWithImpl(this._self, this._then);

  final ChangeTheme _self;
  final $Res Function(ChangeTheme) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDarkMode = null,}) {
  return _then(ChangeTheme(
isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class GetTheme implements ThemeEvent {
  const GetTheme();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTheme);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent.getTheme()';
}


}




/// @nodoc


class SetTheme implements ThemeEvent {
  const SetTheme({required this.isDarkMode});
  

 final  bool isDarkMode;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetThemeCopyWith<SetTheme> get copyWith => _$SetThemeCopyWithImpl<SetTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetTheme&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode));
}


@override
int get hashCode => Object.hash(runtimeType,isDarkMode);

@override
String toString() {
  return 'ThemeEvent.setTheme(isDarkMode: $isDarkMode)';
}


}

/// @nodoc
abstract mixin class $SetThemeCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $SetThemeCopyWith(SetTheme value, $Res Function(SetTheme) _then) = _$SetThemeCopyWithImpl;
@useResult
$Res call({
 bool isDarkMode
});




}
/// @nodoc
class _$SetThemeCopyWithImpl<$Res>
    implements $SetThemeCopyWith<$Res> {
  _$SetThemeCopyWithImpl(this._self, this._then);

  final SetTheme _self;
  final $Res Function(SetTheme) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDarkMode = null,}) {
  return _then(SetTheme(
isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ThemeState {

 ThemeMode get themeMode;
/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeStateCopyWith<ThemeState> get copyWith => _$ThemeStateCopyWithImpl<ThemeState>(this as ThemeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeState(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $ThemeStateCopyWith<$Res>  {
  factory $ThemeStateCopyWith(ThemeState value, $Res Function(ThemeState) _then) = _$ThemeStateCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class _$ThemeStateCopyWithImpl<$Res>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._self, this._then);

  final ThemeState _self;
  final $Res Function(ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Current value)?  current,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Current value)  current,}){
final _that = this;
switch (_that) {
case _Current():
return current(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Current value)?  current,}){
final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ThemeMode themeMode)?  current,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ThemeMode themeMode)  current,}) {final _that = this;
switch (_that) {
case _Current():
return current(_that.themeMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ThemeMode themeMode)?  current,}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class _Current implements ThemeState {
  const _Current({required this.themeMode});
  

@override final  ThemeMode themeMode;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentCopyWith<_Current> get copyWith => __$CurrentCopyWithImpl<_Current>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Current&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeState.current(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$CurrentCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) _then) = __$CurrentCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class __$CurrentCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(this._self, this._then);

  final _Current _self;
  final $Res Function(_Current) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_Current(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

// dart format on
