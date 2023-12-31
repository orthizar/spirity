import 'package:spirity/widgets/bottommenu.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
