import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:moneymemos/widgets/bottom_nav/bottom_nav.dart';

@injectable
class BottomNavigationBloc extends Cubit<int> {
  BottomNavigationBloc() : super(0);

  List<NavItem>? navItems;

  set bottomNavItems(List<NavItem>? items) {
    navItems = items;
  }

  void changeIndex(int index) {
    if (state == index || navItems == null) return;

    // Reverse animation of the current tab
    navItems![state].controller.reverse();

    // Update index
    emit(index);

    // Forward animation of the new tab
    navItems![index].controller.forward();
  }
}
