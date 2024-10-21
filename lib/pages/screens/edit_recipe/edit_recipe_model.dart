import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_recipe_widget.dart' show EditRecipeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditRecipeModel extends FlutterFlowModel<EditRecipeWidget> {
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
  FocusNode? ingredientsFocusNode1;
  TextEditingController? ingredientsTextController1;
  String? Function(BuildContext, String?)? ingredientsTextController1Validator;
  // State field(s) for Ingredients widget.
  FocusNode? ingredientsFocusNode2;
  TextEditingController? ingredientsTextController2;
  String? Function(BuildContext, String?)? ingredientsTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mealNameFocusNode?.dispose();
    mealNameTextController?.dispose();

    mealCalFocusNode?.dispose();
    mealCalTextController?.dispose();

    ingredientsFocusNode1?.dispose();
    ingredientsTextController1?.dispose();

    ingredientsFocusNode2?.dispose();
    ingredientsTextController2?.dispose();
  }
}
