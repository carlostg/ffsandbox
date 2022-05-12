import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'banner_image_record.g.dart';

abstract class BannerImageRecord
    implements Built<BannerImageRecord, BannerImageRecordBuilder> {
  static Serializer<BannerImageRecord> get serializer =>
      _$bannerImageRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  BuiltList<String> get imageUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BannerImageRecordBuilder builder) =>
      builder..imageUrl = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banner_image');

  static Stream<BannerImageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BannerImageRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BannerImageRecord._();
  factory BannerImageRecord([void Function(BannerImageRecordBuilder) updates]) =
      _$BannerImageRecord;

  static BannerImageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBannerImageRecordData() => serializers.toFirestore(
    BannerImageRecord.serializer, BannerImageRecord((b) => b..imageUrl = null));
