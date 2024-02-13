import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_sharedpreferences/main.dart';
import 'package:getit_sharedpreferences/model/user_model.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetIt.I.get<UserModel>().setName("Saad");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Feedback',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My name is ${GetIt.I.get<UserModel>().getName()}",
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            Text("Nice to meet you ${prefs!.getString("user").toString()}",
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      )),
    );
  }
}
