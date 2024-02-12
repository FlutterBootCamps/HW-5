import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw5/data_layer/hom3_data_layer.dart';
import 'package:hw5/dataset/person_data.dart';
import 'package:hw5/models/person.dart';
import 'package:hw5/widgets/person_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  ...List.generate(GetIt.I.get<HomeData>().allPerson.length,
                        (index) {
                      final Person person =
                          Person.fromJson(persons[index]);

                      return PersonCard(
                        person: person,
                     
                      );
                    })
         
         
            ],
          ),
        ),
      ),
    );
  }
}
