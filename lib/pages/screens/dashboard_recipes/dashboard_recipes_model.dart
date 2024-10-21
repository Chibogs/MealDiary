import '/components/meal_card_recipe_widget.dart';
import '/components/meal_card_user_recipe_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_recipes_widget.dart' show DashboardRecipesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardRecipesModel extends FlutterFlowModel<DashboardRecipesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for mealCard_userRecipe component.
  late MealCardUserRecipeModel mealCardUserRecipeModel;
  // Model for mealCard_recipe component.
  late MealCardRecipeModel mealCardRecipeModel;

  @override
  void initState(BuildContext context) {
    mealCardUserRecipeModel =
        createModel(context, () => MealCardUserRecipeModel());
    mealCardRecipeModel = createModel(context, () => MealCardRecipeModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    mealCardUserRecipeModel.dispose();
    mealCardRecipeModel.dispose();
  }
}
