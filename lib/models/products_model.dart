class Recipes {
  final int id;
  final String title;
  final String description;
  final String cookingTime;
  final String images;

  Recipes(
      {required this.id,
      required this.title,
      required this.description,      
      required this.cookingTime,
      required this.images});

  factory Recipes.fromJson(Map json) {
    return Recipes(
        id: json["id"],
        title: json["title"],
        description: json["description"],        
        cookingTime: json["cookingTime"],
        images: json["images"] );
  }

  toMap() {
    return {
      "id": id,
      "title": title,
      "cookingTime": cookingTime,
      "images": images
    };
  }
}
