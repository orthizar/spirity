import 'package:flutter/material.dart';
import 'package:spirity/widgets/bottommenu.dart';
import 'package:spirity/widgets/greeting.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Overview screen with greeting
      body: const Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                    child: Greeting(),
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
              ],
            ),
          )
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
