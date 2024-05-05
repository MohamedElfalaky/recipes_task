import 'package:recipes_task/recipes/domain/entities/recipe_entity.dart';

class RecipeModel extends RecipeEntity {
  RecipeModel(
      {required super.id,
      required super.fats,
      required super.name,
      required super.time,
      required super.image,
      required super.weeks,
      required super.carbos,
      required super.country,
      required super.calories,
      required super.headline,
      super.fibers,
      super.rating,
      super.ratings,
      super.incompatibilities,
      required super.keywords,
      required super.products,
      required super.proteins,
      required super.favorites,
      required super.difficulty,
      required super.description,
      required super.highlighted,
      required super.ingredients,
      required super.deliverableIngredients,
      required super.undeliverableIngredients});

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      id: json['id'],
      fats: json['fats'],
      name: json['name'],
      time: json['time'],
      image: json['image'],
      weeks: List<String>.from(json['weeks']),
      carbos: json['carbos'],
      fibers: json['fibers'],
      rating: json['rating'] != null
          ? double.tryParse(json['rating'].toString())
          : null,
      country: json['country'],
      ratings: json['ratings'],
      calories: json['calories'],
      headline: json['headline'],
      keywords: List<String>.from(json['keywords']),
      products: List<String>.from(json['products']),
      proteins: json['proteins'],
      favorites: json['favorites'],
      difficulty: json['difficulty'],
      description: json['description'],
      highlighted: json['highlighted'],
      ingredients: List<String>.from(json['ingredients']),
      incompatibilities: json['incompatibilities'] != null
          ? List<String>.from(json['incompatibilities'])
          : null,
      deliverableIngredients:
          List<String>.from(json['deliverable_ingredients']),
      undeliverableIngredients:
          List<String>.from(json['undeliverable_ingredients']),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fats': fats,
      'name': name,
      'time': time,
      'image': image,
      'weeks': weeks,
      'carbos': carbos,
      'fibers': fibers,
      'rating': rating,
      'country': country,
      'ratings': ratings,
      'calories': calories,
      'headline': headline,
      'keywords': keywords,
      'products': products,
      'proteins': proteins,
      'favorites': favorites,
      'difficulty': difficulty,
      'description': description,
      'highlighted': highlighted,
      'ingredients': ingredients,
      'incompatibilities': incompatibilities,
      'deliverable_ingredients': deliverableIngredients,
      'undeliverable_ingredients': undeliverableIngredients,
    };
  }
}
