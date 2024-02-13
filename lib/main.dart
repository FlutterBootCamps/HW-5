import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw5/data_layer/hom3_data_layer.dart';
import 'package:hw5/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences? prefs;

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  setup();
  GetIt.I.get<HomeData>().getAllPerson();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: HomeScreen());
  }
}

setup() {
  GetIt.instance;
  GetIt.I.registerSingleton<HomeData>(HomeData());  
}

