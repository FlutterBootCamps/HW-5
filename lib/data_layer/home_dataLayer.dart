import 'package:git_it_app_example/datasets/products_data.dart';
import 'package:git_it_app_example/models/products_model.dart';

class HomeData {
  List<Recipes> allRecipes = [];

  getAllProducts() {
    recipes.map((item) {
      allRecipes.add(Recipes.fromJson(item));
    }).toList();
  }
}


