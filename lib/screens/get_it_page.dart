import 'package:flutter/material.dart';
import 'package:hw_5/components/get_it_injector.dart';
import 'package:hw_5/components/person_card.dart';
import 'package:hw_5/data_layer/person_data_layer.dart';

class GetItPage extends StatelessWidget {
  const GetItPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get It Results"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: List.generate(locator<PersonData>().getPersonListLength(), (index) {
              return PersonCard(person: locator.get<PersonData>().personList[index]);
            }),
          ),
        ),
      ),
    );
  }
}