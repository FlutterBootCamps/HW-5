import 'package:hw_5/models/person_model.dart';

class PersonData {
  List<Person> personList = [];

  addPerson(Person person){
    personList.add(person);
  }

  List<Person> getPersonList(){
    return personList;
  }
  int getPersonListLength(){
    return personList.length;
  }

}