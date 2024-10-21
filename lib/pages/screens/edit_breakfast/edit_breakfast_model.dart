import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_breakfast_widget.dart' show EditBreakfastWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditBreakfastModel extends FlutterFlowModel<EditBreakfastWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for MealName widget.
  FocusNode? mealNameFocusNode;
  TextEditingController? mealNameTextController;
  String? Function(BuildContext, String?)? mealNameTextControllerValidator;
  // State field(s) for MealCal widget.
  FocusNode? mealCalFocusNode;
  TextEditingController? mealCalTextController;
  String? Function(BuildContext, String?)? mealCalTextControllerValidator;
  // State field(s) for Ingredients widget.
  FocusNode? ingredientsFocusNode;
  TextEditingController? ingredientsTextController;
  String? Function(BuildContext, String?)? ingredientsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mealNameFocusNode?.dispose();
    mealNameTextController?.dispose();

    mealCalFocusNode?.dispose();
    mealCalTextController?.dispose();

    ingredientsFocusNode?.dispose();
    ingredientsTextController?.dispose();
  }
}
