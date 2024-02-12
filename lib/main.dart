import 'package:flutter/material.dart';
import 'package:hw_5/components/get_it_injector.dart';
import 'package:hw_5/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //has to be used beforehand
  prefs = await SharedPreferences.getInstance();
  setupGetIt();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
