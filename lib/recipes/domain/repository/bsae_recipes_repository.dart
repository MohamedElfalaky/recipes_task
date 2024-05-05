import 'dart:async';

import 'package:recipes_task/recipes/domain/entities/recipe_entity.dart';

abstract class BaseRecipesRepository {
  Future<List<RecipeEntity>> getRecipes();
}
