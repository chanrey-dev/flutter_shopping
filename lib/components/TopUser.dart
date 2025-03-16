import 'package:flutter/material.dart';

class TopUser extends StatefulWidget {
  const TopUser({super.key});

  @override
  State<TopUser> createState() => _TopUserState();
}

class _TopUserState extends State<TopUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello, Guest",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFFe74c3c)),
        ),
        Text("What do you want to read today?",
          style: TextStyle(fontSize: 16,),
        ),
      ],
    );
  }
}
