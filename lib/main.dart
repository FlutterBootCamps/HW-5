import 'package:flutter/material.dart';
import 'package:note_app/data_layer/not_data.dart';
import 'package:note_app/screens/Log_in.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences? prefs;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  setup();
  GetIt.I.get<NotData>().getallNote();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}
setup() {
  GetIt.instance;
  GetIt.I.registerSingleton<NotData>(NotData());

  GetIt.I.registerSingleton<Settings>(Settings());
}