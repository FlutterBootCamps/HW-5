import 'package:flutter/material.dart';
import 'package:hw_5/helper/screen_helper.dart';
import 'package:hw_5/model/Pref.dart';
import 'package:hw_5/screen/interests.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  late final SharedPrefsService sharedPrefsService;

  String name = '';
  String dateOfBirth = '';
  String favoriteColor = '';

  TextEditingController nameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController favoriteColorController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    name = await sharedPrefsService.getName() ?? '';
    dateOfBirth = await sharedPrefsService.getDateOfBirth() ?? '';
    favoriteColor = await sharedPrefsService.getFavoriteColor() ?? '';
    nameController.text = name;
    dateOfBirthController.text = dateOfBirth;
    favoriteColorController.text = favoriteColor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile',
            style: TextStyle(fontFamily: 'ProtestRiot', fontSize: 25)),
        centerTitle: true,
        backgroundColor: const Color(0xffdddddd),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              context.pushTo(next: InterestsPage());
            },
            icon: const Icon(Icons.interests),
            label: const Text(
              "My Favorites hobby",
              style: TextStyle(color: Color.fromARGB(255, 231, 229, 229)),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name:',
              style: TextStyle(fontSize: 18),
            ),
            context.sBox(),
            TextField(
              decoration: const InputDecoration(
                fillColor: Color(0xffdddddd),
                filled: true,
                prefix: Icon(Icons.person),
              ),
              controller: nameController,
              onChanged: (value) {
                name = value;
                sharedPrefsService.setName(value);
              },
            ),
            context.sBox(),
            const Text(
              'Date of Birth:',
              style: TextStyle(fontSize: 18),
            ),
            context.sBox(),
            TextField(
              decoration: const InputDecoration(
                fillColor: Color(0xffdddddd),
                filled: true,
                prefix: Icon(Icons.date_range),
              ),
              controller: dateOfBirthController,
              onChanged: (value) {
                dateOfBirth = value;
                sharedPrefsService.setDateOfBirth(value);
              },
            ),
            context.sBox(),
            const Text(
              'Favorite Color:',
              style: TextStyle(fontSize: 18),
            ),
            context.sBox(),
            TextField(
              decoration: const InputDecoration(
                fillColor: Color(0xffdddddd),
                filled: true,
                prefix: Icon(Icons.color_lens),
              ),
              controller: favoriteColorController,
              onChanged: (value) {
                favoriteColor = value;
                sharedPrefsService.setFavoriteColor(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
