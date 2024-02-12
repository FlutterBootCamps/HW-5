import 'package:hw_5/models/person_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setup() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList("names", []);
    await prefs.setStringList("ages", []);
    await prefs.setStringList("goodTraits", []);
    await prefs.setStringList("badTraits", []);
  }
  
  Future<void> addPerson(Person person) async {
    final prefs = await SharedPreferences.getInstance();
    final oldNamesList = prefs.getStringList("names");
    final oldAgesList = prefs.getStringList("ages");
    final oldGoodTraitsList = prefs.getStringList("goodTraits");
    final oldBadTraitsList = prefs.getStringList("badTraits");
    
    oldNamesList!.add(person.name);
    oldAgesList!.add("${person.age}");
    oldGoodTraitsList!.add(person.goodTrait);
    oldBadTraitsList!.add(person.badTrait);
    await prefs.setStringList("names", oldNamesList);
    await prefs.setStringList("ages", oldAgesList);
    await prefs.setStringList("goodTraits", oldGoodTraitsList);
    await prefs.setStringList("badTraits", oldBadTraitsList);
  }