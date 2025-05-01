import 'package:flutter/material.dart';
import 'package:moneymemos/core/const/string_constant.dart';
import 'package:moneymemos/routes/router.dart';
import 'package:moneymemos/utils/custom_theme.dart';

class MoneyMemos extends StatelessWidget {
  const MoneyMemos({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: StringsConstants.appName,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      // themeMode: theme.currentTheme,
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
  }
}
