import 'package:get/get.dart';
import 'package:spirity/bindings/dashboard_bindings.dart';
import 'package:spirity/screens/dashboard_screen.dart';
import 'package:spirity/bindings/journal_bindings.dart';
import 'package:spirity/screens/journal_screen.dart';
import 'package:spirity/bindings/settings_bindings.dart';
import 'package:spirity/screens/settings_screen.dart';

class AppPages {
  static const initial = Routes.dashboard;
  static final routes = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.settings,
      page: () => const SettingsScreen(),
      binding: SettingsBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.journal,
      page: () => const JournalScreen(),
      binding: JournalBinding(),
      transition: Transition.noTransition,
    )
  ];
}

class Routes {
  static const dashboard = '/overview';
  static const journal = '/journal';
  static const settings = '/settings';
}
