part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.current({required ThemeMode themeMode}) = _Current;
}
