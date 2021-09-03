class Recipe {
  String title;
  String imageUrl;
  // Ingredient, Amount
  Map<String, String> ingredients;
  // type of time, time
  Map<String, DateTime> times;
  int portion;

  Recipe(this.title, this.imageUrl, this.ingredients, this.times, this.portion);

  Map toJson() => {
    'title': title,
    'imageUrl': imageUrl,
    'ingredients': ingredients,
    'times': times,
    'portion': portion,
  };
}


class RecipeForm {
  String? title;
  String? imageUrl;
  // Ingredient, Amount
  Map<String, String> ingredients = Map();
  // type of time, time
  Map<String, DateTime> times = Map();
  int portion = 0;
  String? description;

  @override
  String toString() {
    return 'RecipeForm{title: $title, imageUrl: $imageUrl, ingredients: $ingredients, times: $times, portion: $portion, description: $description}';
  }
}
