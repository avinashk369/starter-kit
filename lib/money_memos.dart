import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moneymemos/core/const/string_constant.dart';
import 'package:moneymemos/routes/router.dart';
import 'package:moneymemos/core/theme/bloc/theme_bloc.dart';
import 'package:moneymemos/core/theme/custom_theme.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_navigation_bloc.dart';

class MoneyMemos extends StatelessWidget {
  const MoneyMemos({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => GetIt.I<ThemeBloc>()..add(GetTheme()),
          ),
          BlocProvider(
            create: (_) => GetIt.I<BottomNavigationBloc>(),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
          return MaterialApp.router(
            title: StringsConstants.appName,
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: state.themeMode,
            builder: (context, child) {
              final scale = MediaQuery.of(
                context,
              ).textScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0);
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: scale),
                child: child ?? const SizedBox.shrink(),
              );
            },
          );
        }));
  }
}
