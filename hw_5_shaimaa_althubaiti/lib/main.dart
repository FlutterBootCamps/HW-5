import 'package:flutter/material.dart';
import 'package:hw_5_shaimaa_althubaiti/screens/log_in_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInScreen()
    );
  }
}
