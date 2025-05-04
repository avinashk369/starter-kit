part of 'theme_bloc.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme({required bool isDarkMode}) =
      ChangeTheme;
  const factory ThemeEvent.getTheme() = GetTheme;
  const factory ThemeEvent.setTheme({required bool isDarkMode}) = SetTheme;
}
