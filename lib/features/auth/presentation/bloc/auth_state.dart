part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loggedIn({required UserModel user}) = _LoggedIn;
  const factory AuthState.loggedOut({@Default(false) bool isLoggedOut}) =
      _LoggedOut;
  const factory AuthState.error(String message) = _Error;
}
