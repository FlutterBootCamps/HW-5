import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_5_shaimaa_althubaiti/data_layer.dart';
import 'package:hw_5_shaimaa_althubaiti/screens/log_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  setup();
  GetIt.I.get<SportsData>().getAll();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen());
  }
}

setup() {
  GetIt.instance;
  GetIt.I.registerSingleton<SportsData>(SportsData());
}
