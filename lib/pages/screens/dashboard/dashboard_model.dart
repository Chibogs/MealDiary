import '/components/add_breakfast_widget.dart';
import '/components/add_dinner_widget.dart';
import '/components/add_lunch_widget.dart';
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
  ///  Local state fields for this page.

  DateTime? startDate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // Model for add_Breakfast component.
  late AddBreakfastModel addBreakfastModel1;
  // Model for add_Lunch component.
  late AddLunchModel addLunchModel1;
  // Model for add_Dinner component.
  late AddDinnerModel addDinnerModel1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Model for add_Breakfast component.
  late AddBreakfastModel addBreakfastModel2;
  // Model for add_Lunch component.
  late AddLunchModel addLunchModel2;
  // Model for add_Dinner component.
  late AddDinnerModel addDinnerModel2;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    addBreakfastModel1 = createModel(context, () => AddBreakfastModel());
    addLunchModel1 = createModel(context, () => AddLunchModel());
    addDinnerModel1 = createModel(context, () => AddDinnerModel());
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    addBreakfastModel2 = createModel(context, () => AddBreakfastModel());
    addLunchModel2 = createModel(context, () => AddLunchModel());
    addDinnerModel2 = createModel(context, () => AddDinnerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    addBreakfastModel1.dispose();
    addLunchModel1.dispose();
    addDinnerModel1.dispose();
    addBreakfastModel2.dispose();
    addLunchModel2.dispose();
    addDinnerModel2.dispose();
  }
}
