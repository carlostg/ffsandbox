import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'modifier_category_record.g.dart';

abstract class ModifierCategoryRecord
    implements Built<ModifierCategoryRecord, ModifierCategoryRecordBuilder> {
  static Serializer<ModifierCategoryRecord> get serializer =>
      _$modifierCategoryRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  int get position;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ModifierCategoryRecordBuilder builder) =>
      builder
        ..name = ''
        ..description = ''
        ..position = 0
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('modifier_category');

  static Stream<ModifierCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ModifierCategoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ModifierCategoryRecord._();
  factory ModifierCategoryRecord(
          [void Function(ModifierCategoryRecordBuilder) updates]) =
      _$ModifierCategoryRecord;

  static ModifierCategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createModifierCategoryRecordData({
  String name,
  String description,
  int position,
  String image,
  DocumentReference createdBy,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        ModifierCategoryRecord.serializer,
        ModifierCategoryRecord((m) => m
          ..name = name
          ..description = description
          ..position = position
          ..image = image
          ..createdBy = createdBy
          ..createdTime = createdTime));
