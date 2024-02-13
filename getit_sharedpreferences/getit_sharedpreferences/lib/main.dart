import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_sharedpreferences/model/user_model.dart';
import 'package:getit_sharedpreferences/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  setup();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

setup() {
 GetIt.instance;
  GetIt.I.registerSingleton<UserModel>(UserModel());
}