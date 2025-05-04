import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:moneymemos/routes/route_names.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<AuthBloc>(),
      child: Scaffold(
        body: Center(
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.mapOrNull(
                loggedIn: (value) async {
                  await PreferenceUtils.putBool(PrefConst.isLoggedIn, true);

                  if (!context.mounted) return;
                  context.goNamed(RouteNames.dashboardHome);
                },
              );
            },
            child: Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(GoogleSignin());
                  // context.read<AuthBloc>().add(Logout());
                },
                child: const Text('Sign in with Google'),
              );
            }),
          ),
        ),
      ),
    );
  }
}
