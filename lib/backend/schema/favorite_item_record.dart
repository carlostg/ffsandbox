import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favorite_item_record.g.dart';

abstract class FavoriteItemRecord
    implements Built<FavoriteItemRecord, FavoriteItemRecordBuilder> {
  static Serializer<FavoriteItemRecord> get serializer =>
      _$favoriteItemRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  @BuiltValueField(wireName: 'menu_item')
  DocumentReference get menuItem;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FavoriteItemRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorite_item');

  static Stream<FavoriteItemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FavoriteItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  FavoriteItemRecord._();
  factory FavoriteItemRecord(
          [void Function(FavoriteItemRecordBuilder) updates]) =
      _$FavoriteItemRecord;

  static FavoriteItemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFavoriteItemRecordData({
  DocumentReference createdBy,
  DocumentReference menuItem,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        FavoriteItemRecord.serializer,
        FavoriteItemRecord((f) => f
          ..createdBy = createdBy
          ..menuItem = menuItem
          ..createdTime = createdTime));
