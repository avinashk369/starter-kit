import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:moneymemos/features/auth/data/model/user_model.dart';
import 'package:moneymemos/features/auth/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        googleSignin: (event) async => _googleSignIn(event, emit),
        logout: (value) async => _logout(value, emit),
      );
    });
  }

  /// google sign in
  Future<void> _googleSignIn(
      GoogleSignin event, Emitter<AuthState> emit) async {
    emit(_Loading());
    try {
      final UserModel user = await authRepository.googleSignIn();
      emit(_LoggedIn(user: user));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  /// logout
  Future<void> _logout(Logout event, Emitter<AuthState> emit) async {
    emit(_Loading());
    try {
      await authRepository.authLogout();
      emit(_LoggedOut(isLoggedOut: true));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
