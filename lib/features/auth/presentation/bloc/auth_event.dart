part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.googleSignin() = GoogleSignin;
  const factory AuthEvent.logout() = Logout;
}
