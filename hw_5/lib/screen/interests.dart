import 'package:flutter/material.dart';
import 'package:hw_5/helper/screen_helper.dart';
import 'package:hw_5/main.dart';
import 'package:hw_5/model/Pref.dart';

class InterestsPage extends StatefulWidget {
  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  final _sharedPrefsService = locator<SharedPrefsService>();
  List<String> _interests = [];

  @override
  void initState() {
    super.initState();
    _loadInterests();
  }

  _loadInterests() async {
    _interests = await _sharedPrefsService.getInterests();
    setState(() {});
  }

  _addInterest(String interest) {
    setState(() {
      _interests.add(interest);
    });
    _sharedPrefsService.setInterests(_interests);
  }

  _removeInterest(int index) {
    setState(() {
      _interests.removeAt(index);
    });
    _sharedPrefsService.setInterests(_interests);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('My Interests',
            style: TextStyle(fontFamily: 'ProtestRiot', fontSize: 25)),
        centerTitle: true,
        backgroundColor: const Color(0xffdddddd),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Add a text field for adding new interests
            TextField(
              decoration: InputDecoration(
                hintText: 'Add your interest...',
              ),
              onSubmitted: (value) {
                _addInterest(value);
              },
            ),
            context.sBox(),
            // Display a list of interests
            ListView(
              shrinkWrap: true,
              children: _interests
                  .map((interest) => ListTile(
                        title: Text(interest),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () =>
                              _removeInterest(_interests.indexOf(interest)),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
