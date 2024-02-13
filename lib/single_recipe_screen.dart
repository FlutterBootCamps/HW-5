import 'package:flutter/material.dart';
import 'package:git_it_app_example/helper/extensions/screen_helper.dart';
import 'package:git_it_app_example/main.dart';
import 'package:git_it_app_example/models/products_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SingleRecipeScreen extends StatefulWidget {
  const SingleRecipeScreen({super.key, required this.recipe});
  final Recipes recipe;

  @override
  State<SingleRecipeScreen> createState() => _SingleRecipeScreenState();
}

class _SingleRecipeScreenState extends State<SingleRecipeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: context.getWidth() * 0.90,
                height: context.getWidth() * 0.90,
                child: 
                // CarouselSlider(
                  // items: [
                    // ...List.generate(
                    //     widget.recipe.images.length,
                    //     (index) =>
                         Center(
                              child: Container(
                                  color: Colors.transparent,
                                  width: context.getWidth() * 0.80,
                                  height: context.getWidth() * 0.80,
                                  child: Image.network(
                                    widget.recipe.images,
                                    fit: BoxFit.fitWidth,
                                  )),
                            )
                            // )
                  // ],
                  // options: CarouselOptions(
                  //   enableInfiniteScroll: widget.recipe.images.length > 1,
                  //   onPageChanged: (index, reason) {
                  //     currentIndex = index;
                  //     setState(() {});
                  //   },
                  //   height: context.getWidth() * 0.90,
                  // ),
                // ),
              ),
            ),
            // AnimatedSmoothIndicator(
            //   activeIndex: currentIndex,
            //   count: widget.recipe.images.length,
            //   effect: const WormEffect(),
            // ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                widget.recipe.title,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                widget.recipe.description,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            IconButton(
                onPressed: () {
                  prefs?.setString(
                      "recipe", widget.recipe.toMap().toString());
                },
                icon: const Icon(Icons.favorite))
          ],
        ),
      ),
    );
  }
}
