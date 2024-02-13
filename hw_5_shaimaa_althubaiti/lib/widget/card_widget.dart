import 'package:flutter/material.dart';
import 'package:hw_5_shaimaa_althubaiti/helper/extention.dart';

class CardSport extends StatelessWidget {
  const CardSport(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.time,
      required this.description,
      this.onTapCard});

  final String imagePath;
  final String title;
  final String time;
  final String description;
  final Function()? onTapCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth() / 3,
      height: context.getWidth() / 1.7,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$title",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
