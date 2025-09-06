import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:moneymemos/core/const/placeholder_const.dart';
import 'package:moneymemos/core/di/app_manager.dart';
import 'package:moneymemos/money_memos.dart';
import 'package:moneymemos/services/notifications/crashlytics_service.dart';
import 'package:moneymemos/services/notifications/firebase_remote_config_service.dart';
import 'package:moneymemos/services/notifications/notification_service.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';
import 'package:moneymemos/widgets/app_error_widget.dart';
import 'package:network_monitor_cp/network/network_monitor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await Firebase.initializeApp();
  await Future.wait([
    AppManager.init(),
    GetIt.I.allReady(),
    PreferenceUtils.getInstance(),
    NetworkMonitor().initialize(),
    NotificationService.instance.initialize(),
    FirebaseRemoteConfigService().initialize(),
    CrashlyticsService.initialize(),
    FirebasePerformance.instance.setPerformanceCollectionEnabled(kReleaseMode),
  ]);
  ErrorWidget.builder = (error) => AppErrorWidget(
    error: kReleaseMode ? PlaceholderConst.empty : error.exception.toString(),
  );
  runApp(const MoneyMemos());
}
