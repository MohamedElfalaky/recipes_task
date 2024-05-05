import 'package:recipes_task/recipes/domain/entities/recipe_entity.dart';
import 'package:recipes_task/recipes/domain/repository/bsae_recipes_repository.dart';

class GetRecipesUseCase {
  final BaseRecipesRepository repository;

  GetRecipesUseCase(this.repository);

  Future<List<RecipeEntity>> execute() async {
    return await repository.getRecipes();
  }
}
