import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'insert_recipe_widget.dart' show InsertRecipeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InsertRecipeModel extends FlutterFlowModel<InsertRecipeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Meal widget.
  FocusNode? mealFocusNode;
  TextEditingController? mealTextController;
  String? Function(BuildContext, String?)? mealTextControllerValidator;
  // State field(s) for Calories widget.
  FocusNode? caloriesFocusNode;
  TextEditingController? caloriesTextController;
  String? Function(BuildContext, String?)? caloriesTextControllerValidator;
  // State field(s) for Ingredients widget.
  FocusNode? ingredientsFocusNode;
  TextEditingController? ingredientsTextController;
  String? Function(BuildContext, String?)? ingredientsTextControllerValidator;
  // State field(s) for Instructions widget.
  FocusNode? instructionsFocusNode;
  TextEditingController? instructionsTextController;
  String? Function(BuildContext, String?)? instructionsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mealFocusNode?.dispose();
    mealTextController?.dispose();

    caloriesFocusNode?.dispose();
    caloriesTextController?.dispose();

    ingredientsFocusNode?.dispose();
    ingredientsTextController?.dispose();

    instructionsFocusNode?.dispose();
    instructionsTextController?.dispose();
  }
}
