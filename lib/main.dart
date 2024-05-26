import 'package:flutter/material.dart';
import 'package:idear/app/view/pages/screen_profile_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ScreenProfileList(),
        ),
      ),
    );
  }
}
