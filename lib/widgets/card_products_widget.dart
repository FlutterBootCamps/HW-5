import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:git_it_app_example/helper/extensions/screen_helper.dart';
import 'package:git_it_app_example/widgets/images/ImageProviderWidget.dart';
import 'package:octo_image/octo_image.dart';

class CardProducts extends StatelessWidget {
  const CardProducts(
      {super.key,
      required this.imagePath ,
      required this.title,
      required this.cookingTime,
      this.onTapCard});

  final String imagePath;
  final String title;
  final String cookingTime;
  final Function()? onTapCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCard,
      child: SizedBox(
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
                  child: ImageProviderWidget(
                    imageURL: imagePath,
                  )),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(Icons.access_time_rounded, size: 20),
                                Text(cookingTime, style: const TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 232, 192, 74)),),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
