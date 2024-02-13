import 'package:flutter/material.dart';
import 'package:note_app/main.dart';

class NoteScreen extends StatelessWidget {
  const   NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(prefs!.getString("note").toString()),
      ),
    );
  }
}