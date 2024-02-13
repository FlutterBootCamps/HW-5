import 'package:flutter/material.dart';
import 'package:git_it_app_example/main.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(prefs!.getString("recipe").toString(), style: TextStyle(color: Colors.amber.shade300),),
        ),
      ),
    );
  }
}
