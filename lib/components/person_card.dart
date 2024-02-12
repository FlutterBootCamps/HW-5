import 'package:flutter/material.dart';
import 'package:hw_5/models/person_model.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    super.key, required this.person,
  });

final Person person;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Colors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Row(
          children: [
            const CircleAvatar(
              minRadius: 40,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 60,),
            ),
            const SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${person.name}", style: const TextStyle(color: Colors.white, fontSize: 18),),
                Text("Age: ${person.age}", style: const TextStyle(color: Colors.white, fontSize: 18 )),
                Text("Good Trait: ${person.goodTrait}", style: const TextStyle(color: Colors.white, fontSize: 18)),
                Text("Bad Trait: ${person.badTrait}", style: const TextStyle(color: Colors.white, fontSize: 18)),
              ],
            )
          ],
        ),
      ),
    );
  }
}