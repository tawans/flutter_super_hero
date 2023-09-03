import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Settings Screen'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go('/home');
            },
            child: const Text('go to home'),
          ),
        ],
      ),
    );
  }
}
