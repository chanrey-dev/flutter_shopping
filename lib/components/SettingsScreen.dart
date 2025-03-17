import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Testings")
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Colors.amber),
          )
        ],
      ),
    );
  }
}
