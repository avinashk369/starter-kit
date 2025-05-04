// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) changeTheme,
    required TResult Function() getTheme,
    required TResult Function(bool isDarkMode) setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? changeTheme,
    TResult? Function()? getTheme,
    TResult? Function(bool isDarkMode)? setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? changeTheme,
    TResult Function()? getTheme,
    TResult Function(bool isDarkMode)? setTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(GetTheme value) getTheme,
    required TResult Function(SetTheme value) setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(GetTheme value)? getTheme,
    TResult? Function(SetTheme value)? setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(GetTheme value)? getTheme,
    TResult Function(SetTheme value)? setTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeThemeImplCopyWith<$Res> {
  factory _$$ChangeThemeImplCopyWith(
          _$ChangeThemeImpl value, $Res Function(_$ChangeThemeImpl) then) =
      __$$ChangeThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$ChangeThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ChangeThemeImpl>
    implements _$$ChangeThemeImplCopyWith<$Res> {
  __$$ChangeThemeImplCopyWithImpl(
      _$ChangeThemeImpl _value, $Res Function(_$ChangeThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$ChangeThemeImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeThemeImpl implements ChangeTheme {
  const _$ChangeThemeImpl({required this.isDarkMode});

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'ThemeEvent.changeTheme(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeImplCopyWith<_$ChangeThemeImpl> get copyWith =>
      __$$ChangeThemeImplCopyWithImpl<_$ChangeThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) changeTheme,
    required TResult Function() getTheme,
    required TResult Function(bool isDarkMode) setTheme,
  }) {
    return changeTheme(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? changeTheme,
    TResult? Function()? getTheme,
    TResult? Function(bool isDarkMode)? setTheme,
  }) {
    return changeTheme?.call(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? changeTheme,
    TResult Function()? getTheme,
    TResult Function(bool isDarkMode)? setTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(isDarkMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(GetTheme value) getTheme,
    required TResult Function(SetTheme value) setTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(GetTheme value)? getTheme,
    TResult? Function(SetTheme value)? setTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(GetTheme value)? getTheme,
    TResult Function(SetTheme value)? setTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class ChangeTheme implements ThemeEvent {
  const factory ChangeTheme({required final bool isDarkMode}) =
      _$ChangeThemeImpl;

  bool get isDarkMode;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeThemeImplCopyWith<_$ChangeThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetThemeImplCopyWith<$Res> {
  factory _$$GetThemeImplCopyWith(
          _$GetThemeImpl value, $Res Function(_$GetThemeImpl) then) =
      __$$GetThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$GetThemeImpl>
    implements _$$GetThemeImplCopyWith<$Res> {
  __$$GetThemeImplCopyWithImpl(
      _$GetThemeImpl _value, $Res Function(_$GetThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetThemeImpl implements GetTheme {
  const _$GetThemeImpl();

  @override
  String toString() {
    return 'ThemeEvent.getTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) changeTheme,
    required TResult Function() getTheme,
    required TResult Function(bool isDarkMode) setTheme,
  }) {
    return getTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? changeTheme,
    TResult? Function()? getTheme,
    TResult? Function(bool isDarkMode)? setTheme,
  }) {
    return getTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? changeTheme,
    TResult Function()? getTheme,
    TResult Function(bool isDarkMode)? setTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(GetTheme value) getTheme,
    required TResult Function(SetTheme value) setTheme,
  }) {
    return getTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(GetTheme value)? getTheme,
    TResult? Function(SetTheme value)? setTheme,
  }) {
    return getTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(GetTheme value)? getTheme,
    TResult Function(SetTheme value)? setTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme(this);
    }
    return orElse();
  }
}

abstract class GetTheme implements ThemeEvent {
  const factory GetTheme() = _$GetThemeImpl;
}

/// @nodoc
abstract class _$$SetThemeImplCopyWith<$Res> {
  factory _$$SetThemeImplCopyWith(
          _$SetThemeImpl value, $Res Function(_$SetThemeImpl) then) =
      __$$SetThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$SetThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$SetThemeImpl>
    implements _$$SetThemeImplCopyWith<$Res> {
  __$$SetThemeImplCopyWithImpl(
      _$SetThemeImpl _value, $Res Function(_$SetThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$SetThemeImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetThemeImpl implements SetTheme {
  const _$SetThemeImpl({required this.isDarkMode});

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'ThemeEvent.setTheme(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetThemeImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetThemeImplCopyWith<_$SetThemeImpl> get copyWith =>
      __$$SetThemeImplCopyWithImpl<_$SetThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) changeTheme,
    required TResult Function() getTheme,
    required TResult Function(bool isDarkMode) setTheme,
  }) {
    return setTheme(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? changeTheme,
    TResult? Function()? getTheme,
    TResult? Function(bool isDarkMode)? setTheme,
  }) {
    return setTheme?.call(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? changeTheme,
    TResult Function()? getTheme,
    TResult Function(bool isDarkMode)? setTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(isDarkMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(GetTheme value) getTheme,
    required TResult Function(SetTheme value) setTheme,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(GetTheme value)? getTheme,
    TResult? Function(SetTheme value)? setTheme,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(GetTheme value)? getTheme,
    TResult Function(SetTheme value)? setTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class SetTheme implements ThemeEvent {
  const factory SetTheme({required final bool isDarkMode}) = _$SetThemeImpl;

  bool get isDarkMode;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetThemeImplCopyWith<_$SetThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Current value) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Current value)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Current value)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$CurrentImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$CurrentImpl implements _Current {
  const _$CurrentImpl({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState.current(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) current,
  }) {
    return current(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? current,
  }) {
    return current?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Current value) current,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Current value)? current,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Current value)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class _Current implements ThemeState {
  const factory _Current({required final ThemeMode themeMode}) = _$CurrentImpl;

  @override
  ThemeMode get themeMode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
