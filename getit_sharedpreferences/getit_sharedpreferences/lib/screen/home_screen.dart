import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_sharedpreferences/main.dart';
import 'package:getit_sharedpreferences/model/user_model.dart';
import 'package:getit_sharedpreferences/screen/display_names.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final UserModel user = UserModel();

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title: const Text(
            'GetIt && sharedpreferences',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      prefs!.getString("user").toString(),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      hintText: "SAY MY NAME",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                    ),
                    onPressed: () {
                      String name = _textController.text;
                      GetIt.I.get<UserModel>().setName(name);
                      prefs?.setString("user", name.toString());
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const NamesScreen()),
                      );
                    },
                    child: const Text("Enter",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
