// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_v_2/model/to_do_list.dart';

import 'data/list_of_task.dart';
import 'view/home_page.dart';
  GetIt locator = GetIt.instance;
  SharedPreferences? prefs;
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  await TaskManagerSharedPreferences.init();
  locator.registerSingleton<TaskManagerSharedPreferences>(TaskManagerSharedPreferences());
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