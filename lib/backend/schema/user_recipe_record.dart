import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecipeRecord extends FirestoreRecord {
  UserRecipeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "meal_name" field.
  String? _mealName;
  String get mealName => _mealName ?? '';
  bool hasMealName() => _mealName != null;

  // "meal_image" field.
  String? _mealImage;
  String get mealImage => _mealImage ?? '';
  bool hasMealImage() => _mealImage != null;

  // "meal_ingredients" field.
  String? _mealIngredients;
  String get mealIngredients => _mealIngredients ?? '';
  bool hasMealIngredients() => _mealIngredients != null;

  // "meal_allergens" field.
  List<String>? _mealAllergens;
  List<String> get mealAllergens => _mealAllergens ?? const [];
  bool hasMealAllergens() => _mealAllergens != null;

  // "meal_calories" field.
  int? _mealCalories;
  int get mealCalories => _mealCalories ?? 0;
  bool hasMealCalories() => _mealCalories != null;

  // "meal_instructions" field.
  String? _mealInstructions;
  String get mealInstructions => _mealInstructions ?? '';
  bool hasMealInstructions() => _mealInstructions != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _mealName = snapshotData['meal_name'] as String?;
    _mealImage = snapshotData['meal_image'] as String?;
    _mealIngredients = snapshotData['meal_ingredients'] as String?;
    _mealAllergens = getDataList(snapshotData['meal_allergens']);
    _mealCalories = castToType<int>(snapshotData['meal_calories']);
    _mealInstructions = snapshotData['meal_instructions'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_recipe');

  static Stream<UserRecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecipeRecord.fromSnapshot(s));

  static Future<UserRecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecipeRecord.fromSnapshot(s));

  static UserRecipeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecipeRecordData({
  String? mealName,
  String? mealImage,
  String? mealIngredients,
  int? mealCalories,
  String? mealInstructions,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'meal_name': mealName,
      'meal_image': mealImage,
      'meal_ingredients': mealIngredients,
      'meal_calories': mealCalories,
      'meal_instructions': mealInstructions,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecipeRecordDocumentEquality implements Equality<UserRecipeRecord> {
  const UserRecipeRecordDocumentEquality();

  @override
  bool equals(UserRecipeRecord? e1, UserRecipeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.mealName == e2?.mealName &&
        e1?.mealImage == e2?.mealImage &&
        e1?.mealIngredients == e2?.mealIngredients &&
        listEquality.equals(e1?.mealAllergens, e2?.mealAllergens) &&
        e1?.mealCalories == e2?.mealCalories &&
        e1?.mealInstructions == e2?.mealInstructions &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UserRecipeRecord? e) => const ListEquality().hash([
        e?.mealName,
        e?.mealImage,
        e?.mealIngredients,
        e?.mealAllergens,
        e?.mealCalories,
        e?.mealInstructions,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecipeRecord;
}
