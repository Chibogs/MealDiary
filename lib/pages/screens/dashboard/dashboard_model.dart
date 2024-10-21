import '/components/meal_card_breakfast_widget.dart';
import '/components/meal_card_dinner_widget.dart';
import '/components/meal_card_lunch_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // Model for mealCard_Breakfast component.
  late MealCardBreakfastModel mealCardBreakfastModel1;
  // Model for mealCard_Lunch component.
  late MealCardLunchModel mealCardLunchModel1;
  // Model for mealCard_Dinner component.
  late MealCardDinnerModel mealCardDinnerModel1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Model for mealCard_Breakfast component.
  late MealCardBreakfastModel mealCardBreakfastModel2;
  // Model for mealCard_Lunch component.
  late MealCardLunchModel mealCardLunchModel2;
  // Model for mealCard_Dinner component.
  late MealCardDinnerModel mealCardDinnerModel2;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    mealCardBreakfastModel1 =
        createModel(context, () => MealCardBreakfastModel());
    mealCardLunchModel1 = createModel(context, () => MealCardLunchModel());
    mealCardDinnerModel1 = createModel(context, () => MealCardDinnerModel());
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    mealCardBreakfastModel2 =
        createModel(context, () => MealCardBreakfastModel());
    mealCardLunchModel2 = createModel(context, () => MealCardLunchModel());
    mealCardDinnerModel2 = createModel(context, () => MealCardDinnerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    mealCardBreakfastModel1.dispose();
    mealCardLunchModel1.dispose();
    mealCardDinnerModel1.dispose();
    mealCardBreakfastModel2.dispose();
    mealCardLunchModel2.dispose();
    mealCardDinnerModel2.dispose();
  }
}
