part of 'welcome_bloc.dart';

@freezed
abstract class WelcomeState with _$WelcomeState {
  const factory WelcomeState.initial() = _Initial;
  const factory WelcomeState.loading() = _Loading;
  const factory WelcomeState.shouldNavigate(
      {@Default(false) bool shouldNavigate}) = _ShouldNavigate;
  const factory WelcomeState.error({required String message}) = _Error;
}
