import 'package:flutter/material.dart';
import 'package:hw_5_shaimaa_althubaiti/helper/extention.dart';
import 'package:hw_5_shaimaa_althubaiti/main.dart';
import 'package:hw_5_shaimaa_althubaiti/screens/bottom_nav.dart';
import 'package:hw_5_shaimaa_althubaiti/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';

enum SingingCharacter { female, male }

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  final controllerr = TextEditingController();

  // SingingCharacter? _character = SingingCharacter.female;
  late final String type;

  @override
  void dispose() {
    controllerr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(136, 199, 173, 222),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Enter yor name",
            style: TextStyle(
                color: Color.fromARGB(255, 86, 58, 227),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(179, 126, 138, 201),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          
                        }
                        return null;
                      },
                      controller: controllerr,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (!_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              // alert to the user to inter something
                              content: Text(
                                "Please enter some text",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          },
                        );
                    } else {
                      String name = controllerr.text;
                      prefs?.setString("name", name);
                      context.pushScreen(view: const BottomNavScreen());
                    }
                  },
                  child: const Text('Submit',style:TextStyle(color: Colors.black,),
                ),
                                )],
            ),
          ),
        ],
      ),
    );
  }
}
