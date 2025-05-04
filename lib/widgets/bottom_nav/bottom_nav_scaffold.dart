import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_nav.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_navigation_bloc.dart';

class BottomNavScaffold extends StatelessWidget {
  final Widget child;
  const BottomNavScaffold({super.key, required this.child});

  static const List<String> _navRoutes = [
    '/',
    '/profile',
    '/settings',
  ];
  void _onItemTapped(BuildContext context, int index) {
    context.read<BottomNavigationBloc>().changeIndex(index);
    // Navigate to the selected route
    context.go(_navRoutes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar:
          BlocBuilder<BottomNavigationBloc, int>(builder: (context, state) {
        BottomNav(
          navItems: [
            NavItem(icon: "", selectedIcon: "", label: "Home"),
            NavItem(icon: "", selectedIcon: "", label: "Search"),
            NavItem(icon: "", selectedIcon: "", label: "Settings"),
          ],
          onIndexChanged: (index) =>
              context.read<BottomNavigationBloc>().changeIndex(index),
        );
        return BottomNavigationBar(
          currentIndex: state,
          onTap: (index) => _onItemTapped(context, index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        );
      }),
    );
  }
}
