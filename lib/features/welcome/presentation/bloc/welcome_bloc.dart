import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';
part 'welcome_bloc.freezed.dart';
part 'welcome_event.dart';
part 'welcome_state.dart';

@injectable
class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(_Initial()) {
    on<WelcomeEvent>((event, emit) async {
      await event.map(
        checkAndNavigate: (value) async => _checkAndNavigate(value, emit),
      );
    });
  }

  /// check and navigate
  Future<void> _checkAndNavigate(
      CheckAndNavigate event, Emitter<WelcomeState> emit) async {
    emit(_Loading());
    try {
      final shouldNavigate = PreferenceUtils.getBool(PrefConst.isLoggedIn);
      emit(_ShouldNavigate(shouldNavigate: shouldNavigate));
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }
}
