import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_5/screen/homepage.dart';
import 'package:hw_5/model/Pref.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/screen_helper.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<SharedPrefsService>(SharedPrefsService());
}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance(); // Initialize shared preferences

  setupLocator(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdddddd),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(80),
              child: Image.asset('images/avatar.jpg')),
          const Text(
            "My Info",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'ProtestRiot', fontSize: 40),
          ),
          context.sBox(),
          ElevatedButton(
            onPressed: () {
              context.pushTo(next: PersonalPage());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text("Display Info",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 231, 229, 229))),
          )
        ],
      ),
    );
  }
}
