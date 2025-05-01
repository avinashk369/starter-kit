import 'package:go_router/go_router.dart';
import 'package:moneymemos/money_memos.dart';
import 'package:moneymemos/widgets/app_error_widget.dart';
import 'package:network_monitor_cp/network/network_aware_navigator_observer.dart';

final GoRouter router = GoRouter(
  navigatorKey: MoneyMemos.navigatorKey,
  observers: [NetworkAwareNavigatorObserver()],
  initialLocation: '/',
  // Define routes
  routes: [],
  // Error handling for invalid routes
  errorBuilder: (context, state) => AppErrorWidget(
    error: state.error?.message ?? "",
    isError: true,
  ),
);
