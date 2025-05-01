import 'dart:io';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class CrashlyticsService {
  static Future<void> initialize() async {
    try {
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(kReleaseMode);
      await FirebaseCrashlytics.instance
          .setCustomKey("Env", kReleaseMode ? 'CUG' : 'UAT');

      FlutterError.onError = (err) async {
        if (!_shouldLogError(err)) return;
        await FirebaseCrashlytics.instance.recordFlutterFatalError(err);
        await FirebaseCrashlytics.instance.sendUnsentReports();
        await FirebaseCrashlytics.instance.recordFlutterError(err);
        await FirebaseCrashlytics.instance.recordError(err.exception, err.stack,
            reason: err.exception.toString(), printDetails: true);
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    } catch (e) {
      Logger(printer: PrettyPrinter()).i(e);
    }
  }

  static bool _shouldLogError(FlutterErrorDetails err) {
    if (kDebugMode ||
        err.exception is HttpException ||
        err.exception is AssertionError ||
        err.exception is SocketException) {
      return false;
    }
    return !(err.exception is FlutterError &&
        err.exception
            .toString()
            .toLowerCase()
            .contains("build scheduled during frame"));
  }
}
