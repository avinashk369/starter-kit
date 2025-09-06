import 'package:flutter/services.dart';
import 'package:moneymemos/core/di/injection.dart';

class AppManager {
  static Future<void> init() async {
    await Future.wait([
      configureDependencies(),
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]),
    ]);
  }
}
