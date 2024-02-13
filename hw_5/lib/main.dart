import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_5/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

void setupLocator() {
  GetIt.I.registerLazySingleton(() => SharedPreferences.getInstance());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}