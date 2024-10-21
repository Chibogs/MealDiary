import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MealLunchRecord extends FirestoreRecord {
  MealLunchRecord._(
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

  // "meal_favorites" field.
  List<DocumentReference>? _mealFavorites;
  List<DocumentReference> get mealFavorites => _mealFavorites ?? const [];
  bool hasMealFavorites() => _mealFavorites != null;

  // "meal_calories" field.
  int? _mealCalories;
  int get mealCalories => _mealCalories ?? 0;
  bool hasMealCalories() => _mealCalories != null;

  // "meal_diet" field.
  List<String>? _mealDiet;
  List<String> get mealDiet => _mealDiet ?? const [];
  bool hasMealDiet() => _mealDiet != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  void _initializeFields() {
    _mealName = snapshotData['meal_name'] as String?;
    _mealImage = snapshotData['meal_image'] as String?;
    _mealIngredients = snapshotData['meal_ingredients'] as String?;
    _mealAllergens = getDataList(snapshotData['meal_allergens']);
    _mealFavorites = getDataList(snapshotData['meal_favorites']);
    _mealCalories = castToType<int>(snapshotData['meal_calories']);
    _mealDiet = getDataList(snapshotData['meal_diet']);
    _timeCreated = snapshotData['time_created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meal_lunch');

  static Stream<MealLunchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MealLunchRecord.fromSnapshot(s));

  static Future<MealLunchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MealLunchRecord.fromSnapshot(s));

  static MealLunchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MealLunchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MealLunchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MealLunchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MealLunchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MealLunchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMealLunchRecordData({
  String? mealName,
  String? mealImage,
  String? mealIngredients,
  int? mealCalories,
  DateTime? timeCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'meal_name': mealName,
      'meal_image': mealImage,
      'meal_ingredients': mealIngredients,
      'meal_calories': mealCalories,
      'time_created': timeCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class MealLunchRecordDocumentEquality implements Equality<MealLunchRecord> {
  const MealLunchRecordDocumentEquality();

  @override
  bool equals(MealLunchRecord? e1, MealLunchRecord? e2) {
    const listEquality = ListEquality();
    return e1?.mealName == e2?.mealName &&
        e1?.mealImage == e2?.mealImage &&
        e1?.mealIngredients == e2?.mealIngredients &&
        listEquality.equals(e1?.mealAllergens, e2?.mealAllergens) &&
        listEquality.equals(e1?.mealFavorites, e2?.mealFavorites) &&
        e1?.mealCalories == e2?.mealCalories &&
        listEquality.equals(e1?.mealDiet, e2?.mealDiet) &&
        e1?.timeCreated == e2?.timeCreated;
  }

  @override
  int hash(MealLunchRecord? e) => const ListEquality().hash([
        e?.mealName,
        e?.mealImage,
        e?.mealIngredients,
        e?.mealAllergens,
        e?.mealFavorites,
        e?.mealCalories,
        e?.mealDiet,
        e?.timeCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is MealLunchRecord;
}
