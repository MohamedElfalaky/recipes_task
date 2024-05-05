import 'package:recipes_task/core/utils/app_constants.dart';
import 'package:recipes_task/core/network/end_points.dart';
import 'package:recipes_task/recipes/data/models/recipe_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRecipesRemoteDataSource {
  Future<List<RecipeModel>> getRecipes();
}

class RecipesRemoteDataSource extends BaseRecipesRemoteDataSource {
  @override
  Future<List<RecipeModel>> getRecipes() async {
    final response =
        await Dio().get(AppConstants.baseUrl + EndPoints.getRecipes);

    if (response.statusCode == 200) {
      return List<RecipeModel>.from(
          (response.data as List).map((e) => RecipeModel.fromJson(e)));
    } else {
      throw Exception("Something went wrong");
    }
  }
}
