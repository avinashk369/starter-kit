import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/core/theme/bloc/theme_bloc.dart';
import 'package:moneymemos/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:moneymemos/routes/route_names.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';
import 'package:moneymemos/widgets/buttons/i_elevated_button.dart';
import 'package:moneymemos/widgets/buttons/i_outline_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<AuthBloc>(),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Builder(builder: (context) {
                  return BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.mapOrNull(loggedOut: (value) async {
                        await PreferenceUtils.putBool(
                            PrefConst.isLoggedIn, false);
                        if (!context.mounted) return;
                        context.goNamed(RouteNames.welcome);
                      });
                    },
                    child: Center(
                      child: IElevatedButton(
                        leadingIcon: Icons.home,
                        onPressed: () {
                          context.read<AuthBloc>().add(Logout());
                        },
                        text: title,
                      ),
                    ),
                  );
                }),
                Center(
                  child: IOutlineButton(
                    leadingIcon: Icons.home,
                    onPressed: () {},
                    text: title,
                  ),
                ),
                BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return IconButton(
                      icon: Icon(
                        state.themeMode == ThemeMode.dark
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                      onPressed: () {
                        context.read<ThemeBloc>().add(
                              ChangeTheme(isDarkMode: true),
                            );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
