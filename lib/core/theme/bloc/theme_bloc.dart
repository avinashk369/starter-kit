import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(_Current(themeMode: ThemeMode.light)) {
    on<GetTheme>(_onLoadTheme);
    on<ChangeTheme>(_onToggleTheme);
  }

  Future<void> _onLoadTheme(GetTheme event, Emitter<ThemeState> emit) async {
    final isDark = PreferenceUtils.getBool(PrefConst.themeMode);
    emit(_Current(themeMode: isDark ? ThemeMode.dark : ThemeMode.light));
  }

  Future<void> _onToggleTheme(
      ChangeTheme event, Emitter<ThemeState> emit) async {
    final newThemeMode =
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await PreferenceUtils.putBool(
        PrefConst.themeMode, newThemeMode == ThemeMode.dark);
    emit(_Current(themeMode: newThemeMode));
  }
}
