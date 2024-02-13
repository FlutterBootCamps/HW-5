import 'package:flutter/material.dart';
import 'package:hw_5_shaimaa_althubaiti/screens/home_screen.dart';
import 'package:hw_5_shaimaa_althubaiti/screens/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIdex = 0;

  List<Widget> screens = [
    HomeScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedIconTheme:
              const IconThemeData(color: Color.fromARGB(126, 0, 0, 0)),
          selectedIconTheme:
              const IconThemeData(color: Color.fromARGB(126, 0, 0, 0)),
          backgroundColor: Color.fromARGB(191, 143, 121, 162),
          onTap: (idexOnTap) {
            selectedIdex = idexOnTap;
            setState(() {});
          },
          currentIndex: selectedIdex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 35), label: " "),
          ]),
      body: screens[selectedIdex],
    );
  }
}
