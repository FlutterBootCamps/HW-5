import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddProfileScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Profile Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter profile Information'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                List<String>? profiles = prefs.getStringList('profiles');
                profiles ??= [];
                profiles.add(_controller.text);
                await prefs.setStringList('profiles', profiles);
                Navigator.pop(context);
              },
              child: Text('Save Information'),
            ),
          ],
        ),
      ),
    );
  }
}
