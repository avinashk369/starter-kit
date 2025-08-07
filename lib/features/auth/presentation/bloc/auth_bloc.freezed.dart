// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GoogleSignin value)?  googleSignin,TResult Function( Logout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GoogleSignin() when googleSignin != null:
return googleSignin(_that);case Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GoogleSignin value)  googleSignin,required TResult Function( Logout value)  logout,}){
final _that = this;
switch (_that) {
case GoogleSignin():
return googleSignin(_that);case Logout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GoogleSignin value)?  googleSignin,TResult? Function( Logout value)?  logout,}){
final _that = this;
switch (_that) {
case GoogleSignin() when googleSignin != null:
return googleSignin(_that);case Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  googleSignin,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GoogleSignin() when googleSignin != null:
return googleSignin();case Logout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  googleSignin,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case GoogleSignin():
return googleSignin();case Logout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  googleSignin,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case GoogleSignin() when googleSignin != null:
return googleSignin();case Logout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class GoogleSignin implements AuthEvent {
  const GoogleSignin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSignin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.googleSignin()';
}


}




/// @nodoc


class Logout implements AuthEvent {
  const Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( _LoggedIn value)?  loggedIn,TResult Function( _LoggedOut value)?  loggedOut,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case _LoggedIn() when loggedIn != null:
return loggedIn(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( _LoggedIn value)  loggedIn,required TResult Function( _LoggedOut value)  loggedOut,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case _LoggedIn():
return loggedIn(_that);case _LoggedOut():
return loggedOut(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( _LoggedIn value)?  loggedIn,TResult? Function( _LoggedOut value)?  loggedOut,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case _LoggedIn() when loggedIn != null:
return loggedIn(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserModel user)?  loggedIn,TResult Function( bool isLoggedOut)?  loggedOut,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case _LoggedIn() when loggedIn != null:
return loggedIn(_that.user);case _LoggedOut() when loggedOut != null:
return loggedOut(_that.isLoggedOut);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserModel user)  loggedIn,required TResult Function( bool isLoggedOut)  loggedOut,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case _LoggedIn():
return loggedIn(_that.user);case _LoggedOut():
return loggedOut(_that.isLoggedOut);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserModel user)?  loggedIn,TResult? Function( bool isLoggedOut)?  loggedOut,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case _LoggedIn() when loggedIn != null:
return loggedIn(_that.user);case _LoggedOut() when loggedOut != null:
return loggedOut(_that.isLoggedOut);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class Loading implements AuthState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _LoggedIn implements AuthState {
  const _LoggedIn({required this.user});
  

 final  UserModel user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoggedInCopyWith<_LoggedIn> get copyWith => __$LoggedInCopyWithImpl<_LoggedIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedIn&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.loggedIn(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoggedInCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) _then) = __$LoggedInCopyWithImpl;
@useResult
$Res call({
 UserModel user
});




}
/// @nodoc
class __$LoggedInCopyWithImpl<$Res>
    implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(this._self, this._then);

  final _LoggedIn _self;
  final $Res Function(_LoggedIn) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_LoggedIn(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}


}

/// @nodoc


class _LoggedOut implements AuthState {
  const _LoggedOut({this.isLoggedOut = false});
  

@JsonKey() final  bool isLoggedOut;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoggedOutCopyWith<_LoggedOut> get copyWith => __$LoggedOutCopyWithImpl<_LoggedOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedOut&&(identical(other.isLoggedOut, isLoggedOut) || other.isLoggedOut == isLoggedOut));
}


@override
int get hashCode => Object.hash(runtimeType,isLoggedOut);

@override
String toString() {
  return 'AuthState.loggedOut(isLoggedOut: $isLoggedOut)';
}


}

/// @nodoc
abstract mixin class _$LoggedOutCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LoggedOutCopyWith(_LoggedOut value, $Res Function(_LoggedOut) _then) = __$LoggedOutCopyWithImpl;
@useResult
$Res call({
 bool isLoggedOut
});




}
/// @nodoc
class __$LoggedOutCopyWithImpl<$Res>
    implements _$LoggedOutCopyWith<$Res> {
  __$LoggedOutCopyWithImpl(this._self, this._then);

  final _LoggedOut _self;
  final $Res Function(_LoggedOut) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoggedOut = null,}) {
  return _then(_LoggedOut(
isLoggedOut: null == isLoggedOut ? _self.isLoggedOut : isLoggedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements AuthState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AuthState
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
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
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

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
