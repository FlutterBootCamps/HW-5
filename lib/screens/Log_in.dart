import 'package:flutter/material.dart';
import 'package:note_app/screens/home_screen.dart';
import 'package:shimmer/shimmer.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LoginState();
}

class _LoginState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade900,
      body:  Center(
        child: Column(
            children: [
              Shimmer.fromColors(
                          baseColor: Color.fromARGB(255, 130, 51, 137),
                          highlightColor: const Color.fromARGB(255, 143, 142, 139),
                          child: Text(
                            'Welcome in Note App ',
                            style: TextStyle(fontSize: 34),
                          ),
                        ),
                Container(
                  height: 45,
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 57, 56, 54),
                    ),
                    child: const Text(
                      'Enter',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
      ),
    
    );
  }
}