import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_5_shaimaa_althubaiti/data_layer.dart';
import 'package:hw_5_shaimaa_althubaiti/helper/extention.dart';
import 'package:hw_5_shaimaa_althubaiti/main.dart';
import 'package:hw_5_shaimaa_althubaiti/model/sports_list.dart';
import 'package:hw_5_shaimaa_althubaiti/model/sports_model.dart';
import 'package:hw_5_shaimaa_althubaiti/widget/card_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> images = [
    "assets/sport1.jpeg",
    "assets/sprt2.jpeg",
    "assets/sprt3.jpeg",
    "assets/sprt4.jpeg",
    "assets/sprt5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(136, 199, 173, 222),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(191, 143, 121, 162),
        centerTitle: true,
        title: Text(
          prefs!.getString("name").toString(),
          style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 102, 63, 181),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(children: [
      //   SizedBox(
      //     height: context.getHeight() * 0.35,
      //     child: CardSwiper(
      //         cardsCount: 5,
      //         cardBuilder:
      //             (context, index, percentThresholdX, percentThresholdY) {
      //           // currentIndex = index;
      //           Image.asset(
      //             images[index],
      //             fit: BoxFit.fitWidth,
      //           );
      //           return null;
      //         }),
      //   ),
        Expanded(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                ),
                children: [
                  ...List.generate(GetIt.I.get<SportsData>().allSports.length,
                      (index) {
                    final SportsModel sport =
                        SportsModel.fromJson(sports[index]);

                    return CardSport(
                      title: sport.title,
                      imagePath: sport.image,
                      time: sport.time,
                      description: sport.discretion,
                      onTapCard: () {},
                    );
                  })
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
