import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
// import 'package:git_it_app_example/favorite_screen.dart';
import 'package:git_it_app_example/data_layer/home_dataLayer.dart';
import 'package:git_it_app_example/datasets/products_data.dart';
import 'package:git_it_app_example/single_recipe_screen.dart';
import 'package:git_it_app_example/helper/extensions/screen_helper.dart';
import 'package:git_it_app_example/models/products_model.dart';
import 'package:git_it_app_example/widgets/card_products_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF6F8FA),
        title: const Text("Explore The Recipes", style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffF6F8FA),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    children: [
                      ...List.generate(GetIt.I.get<HomeData>().allRecipes.length,
                          (index) {
                        final Recipes recipe =
                            Recipes.fromJson(recipes[index]);
        
                        return CardProducts(
                          title: recipe.title,
                          imagePath: recipe.images,
                          cookingTime: recipe.cookingTime,
                          // price: product.price,
                          onTapCard: () {
                            context.pushTo(
                                view: SingleRecipeScreen(
                              recipe: recipe,
                            ));
                          },
                        );
                      })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
