import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'menu_category_record.g.dart';

abstract class MenuCategoryRecord
    implements Built<MenuCategoryRecord, MenuCategoryRecordBuilder> {
  static Serializer<MenuCategoryRecord> get serializer =>
      _$menuCategoryRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  String get image;

  @nullable
  int get position;

  @nullable
  @BuiltValueField(wireName: 'is_visible')
  bool get isVisible;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'updated_time')
  DateTime get updatedTime;

  @nullable
  @BuiltValueField(wireName: 'menu_items')
  BuiltList<DocumentReference> get menuItems;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MenuCategoryRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..image = ''
    ..position = 0
    ..isVisible = false
    ..menuItems = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu_category');

  static Stream<MenuCategoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MenuCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MenuCategoryRecord._();
  factory MenuCategoryRecord(
          [void Function(MenuCategoryRecordBuilder) updates]) =
      _$MenuCategoryRecord;

  static MenuCategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMenuCategoryRecordData({
  String name,
  String description,
  String image,
  int position,
  bool isVisible,
  DocumentReference createdBy,
  DateTime createdTime,
  DateTime updatedTime,
}) =>
    serializers.toFirestore(
        MenuCategoryRecord.serializer,
        MenuCategoryRecord((m) => m
          ..name = name
          ..description = description
          ..image = image
          ..position = position
          ..isVisible = isVisible
          ..createdBy = createdBy
          ..createdTime = createdTime
          ..updatedTime = updatedTime
          ..menuItems = null));
