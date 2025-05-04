import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneymemos/core/const/app_colors.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_navigation_bloc.dart';
import 'package:moneymemos/widgets/svg_image.dart';

class BottomNav extends StatefulWidget {
  const BottomNav(
      {super.key, required this.navItems, required this.onIndexChanged});
  final List<NavItem> navItems;
  final Function(int currentIndex) onIndexChanged;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  late List<NavItem> _navItems;

  @override
  void initState() {
    super.initState();

    _navItems = widget.navItems;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// refrencing the controller to the navItems
      context.read<BottomNavigationBloc>().navItems = _navItems;
    });
    for (var item in _navItems) {
      item.controller = AnimationController(
        duration: const Duration(milliseconds: 300),
        vsync: this,
      );
      item.widthAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: item.controller, curve: Curves.easeInOut),
      );
    }
    _navItems[context.read<BottomNavigationBloc>().state].controller.forward();
  }

  @override
  void dispose() {
    for (var item in _navItems) {
      item.controller.dispose();
    }
    super.dispose();
  }

  Widget _buildNavItem(NavItem item, int index) {
    final currentState = context.watch<BottomNavigationBloc>().state;
    return AnimatedBuilder(
      animation: item.widthAnimation,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            context.read<BottomNavigationBloc>().changeIndex(index);
            widget.onIndexChanged(index);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            constraints: BoxConstraints(
              maxWidth: 76 + (70 * item.widthAnimation.value),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: context.read<BottomNavigationBloc>().state == index
                  ? AppColors.button
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: currentState == index
                          ? AppColors.successLight
                          : AppColors.placeholder,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: SvgImage.asset(
                      currentState == index ? item.selectedIcon : item.icon,
                      height: 24,
                    ),
                  ),
                ),
                ClipRect(
                  child: SizedBox(
                    width: 76 * item.widthAnimation.value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Opacity(
                        opacity: item.widthAnimation.value,
                        child: Text(
                          item.label,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.buttonText),
                          overflow: TextOverflow.clip,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.disabledInput,
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              _navItems.length,
              (index) => _buildNavItem(_navItems[index], index),
            ),
          ),
        ),
      ],
    );
  }
}

class NavItem {
  final String icon;
  final String selectedIcon;
  final String label;
  late AnimationController controller;
  late Animation<double> widthAnimation;

  NavItem(
      {required this.selectedIcon, required this.icon, required this.label});
}
