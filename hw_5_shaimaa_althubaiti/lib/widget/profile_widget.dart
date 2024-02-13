import 'package:flutter/material.dart';

Widget profileCard(
    {required String image,required String title,required BuildContext context}) {
  return Container(
    margin: const EdgeInsets.all(10),

    width: 378,
    height: 117,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: const Color.fromARGB(57, 0, 0, 0),width: 3)),
    child: Row(children: [
      Image.asset(image,
      height: 100,
      width: 146,),
      
      Column(
        children: [
          
          SizedBox(
              width: 205,
              height: 46,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
            
        ],
      )
    ]),
  );
}