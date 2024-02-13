import 'package:flutter/material.dart';
import 'package:getit_sharedpreferences/main.dart';
import 'package:getit_sharedpreferences/screen/display_feedback.dart';

class NamesScreen extends StatelessWidget {
  const NamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text('I HOPE U FEEL GOOD',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Your Name is",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                prefs!.getString("user").toString(),
                style: const TextStyle(color: Colors.red, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const FeedbackScreen()),
                    );
                  },
                  child: const Text("Next",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
