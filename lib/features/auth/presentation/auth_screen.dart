import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/core/const/svg_const.dart';
import 'package:moneymemos/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:moneymemos/routes/route_names.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';
import 'package:moneymemos/widgets/buttons/i_outline_button.dart';
import 'package:moneymemos/widgets/pops/i_pop_button.dart';
import 'package:moneymemos/widgets/svg_image.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<AuthBloc>(),
      child: Scaffold(
        body: Center(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.mapOrNull(
                loggedIn: (value) async {
                  await PreferenceUtils.putBool(PrefConst.isLoggedIn, true);

                  if (!context.mounted) return;
                  context.goNamed(RouteNames.dashboardHome);
                },
              );
            },
            builder: (context, state) => Builder(
              builder: (context) {
                return IPopButton(
                  child: IOutlineButton(
                    onPressed: state is Loading
                        ? null
                        : () {
                            context.read<AuthBloc>().add(GoogleSignin());
                          },
                    text: 'Sign in with Google',
                    leadingIcon: SvgImage(
                      source: SvgConst.googleLogo,
                      sourceType: SvgSource.asset,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
