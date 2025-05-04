import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:moneymemos/utils/mixins/app_closer.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_nav.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_navigation_bloc.dart';

class DashboardScreen extends StatelessWidget with AppCloser {
  final StatefulNavigationShell navigationShell;
  const DashboardScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetIt.I<AuthBloc>(),
        ),
      ],
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          if (didPop) {
            return;
          }

          /// if the current tab is not the first tab then switch to the first tab
          if (context.read<BottomNavigationBloc>().state != 0) {
            context.read<BottomNavigationBloc>().changeIndex(0);
            navigationShell.goBranch(0); // Switch to the first branch
          } else {
            closeApp();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard'),
          ),
          body: Stack(
            children: [
              navigationShell,
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: BottomNav(
                    navItems: [
                      NavItem(icon: "", selectedIcon: "", label: "Home"),
                      NavItem(icon: "", selectedIcon: "", label: "Search"),
                      NavItem(icon: "", selectedIcon: "", label: "Settings"),
                    ],
                    onIndexChanged: (index) {
                      context.read<BottomNavigationBloc>().changeIndex(index);
                      navigationShell.goBranch(index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
