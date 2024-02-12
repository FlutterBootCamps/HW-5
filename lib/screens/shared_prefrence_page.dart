import 'package:flutter/material.dart';
import 'package:hw_5/components/person_card.dart';
import 'package:hw_5/main.dart';
import 'package:hw_5/models/person_model.dart';

class SharedPrefrencePage extends StatelessWidget {
  const SharedPrefrencePage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Shared Preference Results"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            
            children: List.generate(prefs!.getStringList("names")!.length, (index) {
              return PersonCard(person: Person(name: prefs!.getStringList("names")![index], age: int.parse(prefs!.getStringList("ages")![index],),goodTrait: prefs!.getStringList("goodTraits")![index],badTrait: prefs!.getStringList("badTraits")![index],));
            }),
          ),
        ),
      ),
    );
  }
}

