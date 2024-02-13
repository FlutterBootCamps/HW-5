import 'package:flutter/material.dart';
import 'package:hw5/models/person.dart';
import 'package:hw5/models/person.dart';
import 'package:hw5/models/person.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key , required  this.person});
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(children: []),
    );
  }
}
