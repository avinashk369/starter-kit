import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/features/auth/presentation/auth_screen.dart';
import 'package:moneymemos/features/dashboard/presentation/dashboard_screen.dart';
import 'package:moneymemos/features/home/presentation/home_screen.dart';
import 'package:moneymemos/features/splash/presentation/splash_screen.dart';
import 'package:moneymemos/features/welcome/presentation/welcome_screen.dart';
import 'package:moneymemos/money_memos.dart';
import 'package:moneymemos/routes/route_names.dart';
import 'package:moneymemos/widgets/app_error_widget.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_navigation_bloc.dart';
import 'package:network_monitor_cp/network/network_aware_navigator_observer.dart';

final Map<String, Widget> _dashboardScreens = {
  RouteNames.dashboardHome: const HomeScreen(title: "Home"),
  RouteNames.dashboardProfile: const HomeScreen(title: "Search"),
  RouteNames.dashboardSettings: const HomeScreen(title: "Settings"),
};
final GoRouter router = GoRouter(
  navigatorKey: MoneyMemos.navigatorKey,
  observers: [NetworkAwareNavigatorObserver()],
  initialLocation: RouteNames.splash,
  // Define routes
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // Determine the initial index based on the current route
        final initialIndex = RouteNames.dashboardRoutes.indexOf(
          state.uri.toString(),
        );
        return BlocProvider(
          create: (context) =>
              GetIt.I<BottomNavigationBloc>()
                ..changeIndex(initialIndex >= 0 ? initialIndex : 0),
          child: DashboardScreen(navigationShell: navigationShell),
        );
      },
      branches: RouteNames.dashboardRoutes.asMap().entries.map((entry) {
        final route = entry.value;
        return StatefulShellBranch(
          routes: [
            GoRoute(
              path: route,
              name: route,
              builder: (context, state) => _dashboardScreens[route]!,
            ),
          ],
        );
      }).toList(),
    ),
    GoRoute(
      path: RouteNames.splash,
      name: RouteNames.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: RouteNames.welcome,
      name: RouteNames.welcome,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: RouteNames.auth,
      name: RouteNames.auth,
      builder: (context, state) => const AuthScreen(),
    ),
  ],
  // Error handling for invalid routes
  errorBuilder: (context, state) =>
      AppErrorWidget(error: state.error?.message ?? "", isError: true),
);
