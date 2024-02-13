import 'package:flutter/material.dart';
import 'package:get_and_shared/helper/screen_helper.dart';
import 'package:get_and_shared/screens/start_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await CacheData.cacheInitialization();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
    );
  }
}
