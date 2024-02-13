import 'package:flutter/material.dart';
import 'package:git_it_app_example/bottom_nav_bar.dart';
import 'package:git_it_app_example/data_layer/home_dataLayer.dart';
import 'package:git_it_app_example/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

SharedPreferences? prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  setup();
  GetIt.I.get<HomeData>().getAllProducts();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: BottomNavigationBarScreen());
  }
}

setup() {
  GetIt.instance;
  GetIt.I.registerSingleton<HomeData>(HomeData());
}
