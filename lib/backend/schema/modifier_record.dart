import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'modifier_record.g.dart';

abstract class ModifierRecord
    implements Built<ModifierRecord, ModifierRecordBuilder> {
  static Serializer<ModifierRecord> get serializer =>
      _$modifierRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get descripion;

  @nullable
  @BuiltValueField(wireName: 'extra_price')
  double get extraPrice;

  @nullable
  String get image;

  @nullable
  DocumentReference get category;

  @nullable
  int get position;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'aloha_item_id')
  int get alohaItemId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ModifierRecordBuilder builder) => builder
    ..name = ''
    ..descripion = ''
    ..extraPrice = 0.0
    ..image = ''
    ..position = 0
    ..alohaItemId = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('modifier');

  static Stream<ModifierRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ModifierRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ModifierRecord._();
  factory ModifierRecord([void Function(ModifierRecordBuilder) updates]) =
      _$ModifierRecord;

  static ModifierRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createModifierRecordData({
  String name,
  String descripion,
  double extraPrice,
  String image,
  DocumentReference category,
  int position,
  DocumentReference createdBy,
  DateTime createdTime,
  int alohaItemId,
}) =>
    serializers.toFirestore(
        ModifierRecord.serializer,
        ModifierRecord((m) => m
          ..name = name
          ..descripion = descripion
          ..extraPrice = extraPrice
          ..image = image
          ..category = category
          ..position = position
          ..createdBy = createdBy
          ..createdTime = createdTime
          ..alohaItemId = alohaItemId));
