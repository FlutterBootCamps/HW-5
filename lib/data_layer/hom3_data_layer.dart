
import 'package:hw5/dataset/person_data.dart';
import 'package:hw5/models/person.dart';

class HomeData {
  List<Person> allPerson = [];

  getAllPerson() {
    persons.map((item) {
      allPerson.add(Person.fromJson(item));
    }).toList();
  }
}

class Settings {
  List<Person> allProducts = [];

  getAllPerson() {
    persons.map((item) {
      allProducts.add(Person.fromJson(item));
    }).toList();
  }
}
