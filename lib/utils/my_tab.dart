import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String iconName;
  const MyTab({super.key, required this.iconPath, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 32),

          const SizedBox(height: 8),

          Text(iconName, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
