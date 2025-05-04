// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WelcomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAndNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAndNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAndNavigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAndNavigate value) checkAndNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAndNavigate value)? checkAndNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAndNavigate value)? checkAndNavigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeEventCopyWith<$Res> {
  factory $WelcomeEventCopyWith(
          WelcomeEvent value, $Res Function(WelcomeEvent) then) =
      _$WelcomeEventCopyWithImpl<$Res, WelcomeEvent>;
}

/// @nodoc
class _$WelcomeEventCopyWithImpl<$Res, $Val extends WelcomeEvent>
    implements $WelcomeEventCopyWith<$Res> {
  _$WelcomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckAndNavigateImplCopyWith<$Res> {
  factory _$$CheckAndNavigateImplCopyWith(_$CheckAndNavigateImpl value,
          $Res Function(_$CheckAndNavigateImpl) then) =
      __$$CheckAndNavigateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAndNavigateImplCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res, _$CheckAndNavigateImpl>
    implements _$$CheckAndNavigateImplCopyWith<$Res> {
  __$$CheckAndNavigateImplCopyWithImpl(_$CheckAndNavigateImpl _value,
      $Res Function(_$CheckAndNavigateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAndNavigateImpl implements CheckAndNavigate {
  const _$CheckAndNavigateImpl();

  @override
  String toString() {
    return 'WelcomeEvent.checkAndNavigate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAndNavigateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAndNavigate,
  }) {
    return checkAndNavigate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAndNavigate,
  }) {
    return checkAndNavigate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAndNavigate,
    required TResult orElse(),
  }) {
    if (checkAndNavigate != null) {
      return checkAndNavigate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAndNavigate value) checkAndNavigate,
  }) {
    return checkAndNavigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAndNavigate value)? checkAndNavigate,
  }) {
    return checkAndNavigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAndNavigate value)? checkAndNavigate,
    required TResult orElse(),
  }) {
    if (checkAndNavigate != null) {
      return checkAndNavigate(this);
    }
    return orElse();
  }
}

abstract class CheckAndNavigate implements WelcomeEvent {
  const factory CheckAndNavigate() = _$CheckAndNavigateImpl;
}

/// @nodoc
mixin _$WelcomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldNavigate) shouldNavigate,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool shouldNavigate)? shouldNavigate,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldNavigate)? shouldNavigate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShouldNavigate value) shouldNavigate,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShouldNavigate value)? shouldNavigate,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ShouldNavigate value)? shouldNavigate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res, WelcomeState>;
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res, $Val extends WelcomeState>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WelcomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldNavigate) shouldNavigate,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool shouldNavigate)? shouldNavigate,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldNavigate)? shouldNavigate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShouldNavigate value) shouldNavigate,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShouldNavigate value)? shouldNavigate,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ShouldNavigate value)? shouldNavigate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WelcomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WelcomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldNavigate) shouldNavigate,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool shouldNavigate)? shouldNavigate,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldNavigate)? shouldNavigate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShouldNavigate value) shouldNavigate,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShouldNavigate value)? shouldNavigate,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ShouldNavigate value)? shouldNavigate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WelcomeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ShouldNavigateImplCopyWith<$Res> {
  factory _$$ShouldNavigateImplCopyWith(_$ShouldNavigateImpl value,
          $Res Function(_$ShouldNavigateImpl) then) =
      __$$ShouldNavigateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool shouldNavigate});
}

/// @nodoc
class __$$ShouldNavigateImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$ShouldNavigateImpl>
    implements _$$ShouldNavigateImplCopyWith<$Res> {
  __$$ShouldNavigateImplCopyWithImpl(
      _$ShouldNavigateImpl _value, $Res Function(_$ShouldNavigateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldNavigate = null,
  }) {
    return _then(_$ShouldNavigateImpl(
      shouldNavigate: null == shouldNavigate
          ? _value.shouldNavigate
          : shouldNavigate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShouldNavigateImpl implements _ShouldNavigate {
  const _$ShouldNavigateImpl({this.shouldNavigate = false});

  @override
  @JsonKey()
  final bool shouldNavigate;

  @override
  String toString() {
    return 'WelcomeState.shouldNavigate(shouldNavigate: $shouldNavigate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShouldNavigateImpl &&
            (identical(other.shouldNavigate, shouldNavigate) ||
                other.shouldNavigate == shouldNavigate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldNavigate);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShouldNavigateImplCopyWith<_$ShouldNavigateImpl> get copyWith =>
      __$$ShouldNavigateImplCopyWithImpl<_$ShouldNavigateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldNavigate) shouldNavigate,
    required TResult Function(String message) error,
  }) {
    return shouldNavigate(this.shouldNavigate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool shouldNavigate)? shouldNavigate,
    TResult? Function(String message)? error,
  }) {
    return shouldNavigate?.call(this.shouldNavigate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldNavigate)? shouldNavigate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (shouldNavigate != null) {
      return shouldNavigate(this.shouldNavigate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShouldNavigate value) shouldNavigate,
    required TResult Function(_Error value) error,
  }) {
    return shouldNavigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShouldNavigate value)? shouldNavigate,
    TResult? Function(_Error value)? error,
  }) {
    return shouldNavigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ShouldNavigate value)? shouldNavigate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (shouldNavigate != null) {
      return shouldNavigate(this);
    }
    return orElse();
  }
}

abstract class _ShouldNavigate implements WelcomeState {
  const factory _ShouldNavigate({final bool shouldNavigate}) =
      _$ShouldNavigateImpl;

  bool get shouldNavigate;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShouldNavigateImplCopyWith<_$ShouldNavigateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'WelcomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldNavigate) shouldNavigate,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool shouldNavigate)? shouldNavigate,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldNavigate)? shouldNavigate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShouldNavigate value) shouldNavigate,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShouldNavigate value)? shouldNavigate,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ShouldNavigate value)? shouldNavigate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WelcomeState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
