import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'menu_item_record.g.dart';

abstract class MenuItemRecord
    implements Built<MenuItemRecord, MenuItemRecordBuilder> {
  static Serializer<MenuItemRecord> get serializer =>
      _$menuItemRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  DocumentReference get category;

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
  @BuiltValueField(wireName: 'price_single')
  double get priceSingle;

  @nullable
  @BuiltValueField(wireName: 'price_combo_reg')
  double get priceComboReg;

  @nullable
  @BuiltValueField(wireName: 'price_combo_med')
  double get priceComboMed;

  @nullable
  @BuiltValueField(wireName: 'aloha_item_id')
  int get alohaItemId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MenuItemRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..position = 0
    ..image = ''
    ..priceSingle = 0.0
    ..priceComboReg = 0.0
    ..priceComboMed = 0.0
    ..alohaItemId = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu_item');

  static Stream<MenuItemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MenuItemRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MenuItemRecord._();
  factory MenuItemRecord([void Function(MenuItemRecordBuilder) updates]) =
      _$MenuItemRecord;

  static MenuItemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMenuItemRecordData({
  String name,
  String description,
  DocumentReference category,
  int position,
  String image,
  DocumentReference createdBy,
  DateTime createdTime,
  double priceSingle,
  double priceComboReg,
  double priceComboMed,
  int alohaItemId,
}) =>
    serializers.toFirestore(
        MenuItemRecord.serializer,
        MenuItemRecord((m) => m
          ..name = name
          ..description = description
          ..category = category
          ..position = position
          ..image = image
          ..createdBy = createdBy
          ..createdTime = createdTime
          ..priceSingle = priceSingle
          ..priceComboReg = priceComboReg
          ..priceComboMed = priceComboMed
          ..alohaItemId = alohaItemId));
