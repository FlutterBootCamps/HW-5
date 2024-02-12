import 'package:flutter/material.dart';
import 'package:hw_5_shaimaa_althubaiti/helper/extention.dart';
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
  final controller = TextEditingController();

  // SingingCharacter? _character = SingingCharacter.female;
  late final String type;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                        }
                        return null;
                      },
                      controller: controller,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Column(
                //   children: <Widget>[
                //     ListTile(
                //       title: const Text('Lafayette'),
                //       leading: Radio<SingingCharacter>(
                //         value: SingingCharacter.female,
                //         groupValue: _character,
                //         onChanged: (SingingCharacter? value) {
                //           setState(() {
                //             _character = value;
                //             type = value as String;
                //           });
                //         },
                //       ),
                //     ),
                //     ListTile(
                //       title: const Text('Thomas Jefferson'),
                //       leading: Radio<SingingCharacter>(
                //         value: SingingCharacter.male,
                //         groupValue: _character,
                //         onChanged: (SingingCharacter? value) {
                //           setState(() {
                //             _character = value;
                //             type = value as String;
                //           });
                //         },
                //       ),
                //     ),
                //   ],
                // ),

                Shimmer.fromColors(
                  baseColor: Color.fromARGB(86, 106, 103, 103),
                  highlightColor: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        addStringToSF() async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setString('controller', "name");
                        }

                        context.pushScreen(view: HomeScreen());
                      }
                    },
                    child: const Text('Submit'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
