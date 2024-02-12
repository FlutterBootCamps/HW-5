import 'package:flutter/material.dart';
import 'package:hw_5/components/get_it_injector.dart';
import 'package:hw_5/components/shared_preference_components.dart';
import 'package:hw_5/data_layer/person_data_layer.dart';
import 'package:hw_5/main.dart';
import 'package:hw_5/models/person_model.dart';
import 'package:hw_5/screens/get_it_page.dart';
import 'package:hw_5/screens/shared_prefrence_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController goodTraitController = TextEditingController();
  TextEditingController badTraitController = TextEditingController();

  

  @override
  void initState() {
    super.initState();
    if (prefs?.getStringList("names") == null){
      setup();
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add a person"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children:  [
              TextField(decoration: const InputDecoration(hintText: "Name", labelText: "Name"), controller: nameController),
              const SizedBox(height: 40,),
              TextField(decoration: const InputDecoration(hintText: "Age", labelText: "Age"), controller: ageController),
              const SizedBox(height: 40,),
              TextField(decoration: const InputDecoration(hintText: "Good Trait", labelText: "Good Trait"), controller: goodTraitController),
              const SizedBox(height: 40,),
              TextField(decoration: const InputDecoration(hintText: "Bad Trait", labelText: "Bad Trait"), controller: badTraitController),
              const SizedBox(height: 40,),
              ElevatedButton(
                style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(100, 40))),
                onPressed: (){
                addPerson(Person(name: nameController.text, age: int.parse(ageController.text), goodTrait: goodTraitController.text, badTrait: badTraitController.text));
                locator<PersonData>().addPerson(Person(name: nameController.text, age: int.parse(ageController.text), goodTrait: goodTraitController.text, badTrait: badTraitController.text));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${nameController.text} has been added")),);
                nameController.clear();
                ageController.clear();
                goodTraitController.clear();
                badTraitController.clear();
                
              }, child: const Text("Add Person")),
              const SizedBox(height: 40,),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (route) => const GetItPage()));
                      }, child: const Text("Get It")),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (route) => const SharedPrefrencePage()));
                      }, child: const Text("Shared Preference")),
                    ],
                  )),
              )

              
            ],
          ),
        ),
      ),
    );
  }
}