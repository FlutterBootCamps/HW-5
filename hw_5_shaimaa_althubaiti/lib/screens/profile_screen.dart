import 'package:flutter/material.dart';
import 'package:hw_5_shaimaa_althubaiti/main.dart';
import 'package:hw_5_shaimaa_althubaiti/widget/profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(136, 199, 173, 222),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/sport7.png",height: 250,width: 200,),
        
                      Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        prefs!.getString("name").toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      const Text(
                        "age : 24",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(129, 0, 0, 0)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
              ),
              const Divider(
                color: Color.fromARGB(29, 0, 0, 0),
                thickness: 3,
              ),
        
              profileCard(image: "assets/Cycling.jpg",title: "cycling",context: context),
              profileCard(image: "assets/sprt6.png",title: "Running",context: context),
              profileCard(image: "assets/Rock.jpg",title: "Rock climbing",context: context),
              profileCard(image: "assets/Kayaking3.jpg",title: "Kayaking",context: context),
        ]),
      ),
    );
  }
}