class RouteNames {
  static const String splash = '/splash';
  static const String welcome = '/welcome';
  static const String auth = '/auth';
  static const String dashboardHome = '/dashboard/home';
  static const String dashboardProfile = '/dashboard/profile';
  static const String dashboardSettings = '/dashboard/settings';

  // Optional: List of dashboard routes for easy access in BottomNav
  static const List<String> dashboardRoutes = [
    dashboardHome,
    dashboardProfile,
    dashboardSettings,
  ];
}
