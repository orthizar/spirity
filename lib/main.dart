import 'package:spirity/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const SpirityApp());
}

class SpirityApp extends StatelessWidget {
  const SpirityApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Business Nexus",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.teal,
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
