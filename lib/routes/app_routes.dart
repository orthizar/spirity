import 'package:get/get.dart';
import 'package:spirity/bindings/dashboard_bindings.dart';
import 'package:spirity/screens/dashboard_screen.dart';

class AppPages {
  static const initial = Routes.dashboard;
  static final routes = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
      transition: Transition.noTransition,
    ),
  ];
}

class Routes {
  static const dashboard = '/overview';
  static const settings = '/settings';
}
