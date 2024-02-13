import 'package:flutter/material.dart';
import 'package:hw_5/screens/add_profile.dart';
import 'package:hw_5/screens/view_profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 159, 231),
        title: Text('Home'),
       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProfileScreen()),
                );
              },
              child: Text('Add Profile Information'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewProfileScreen()),
                );
              },
              child: Text('View Saved Information'),
            ),
          ],
        ),
      ),
    );
  }
}