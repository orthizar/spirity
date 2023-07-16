import 'package:flutter/material.dart';
import 'package:spirity/widgets/bottommenu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Column(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
