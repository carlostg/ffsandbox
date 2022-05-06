// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_item_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteItemRecord> _$favoriteItemRecordSerializer =
    new _$FavoriteItemRecordSerializer();

class _$FavoriteItemRecordSerializer
    implements StructuredSerializer<FavoriteItemRecord> {
  @override
  final Iterable<Type> types = const [FavoriteItemRecord, _$FavoriteItemRecord];
  @override
  final String wireName = 'FavoriteItemRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FavoriteItemRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.menuItem;
    if (value != null) {
      result
        ..add('menu_item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FavoriteItemRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteItemRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'menu_item':
          result.menuItem = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteItemRecord extends FavoriteItemRecord {
  @override
  final DocumentReference<Object> createdBy;
  @override
  final DocumentReference<Object> menuItem;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> reference;

  factory _$FavoriteItemRecord(
          [void Function(FavoriteItemRecordBuilder) updates]) =>
      (new FavoriteItemRecordBuilder()..update(updates)).build();

  _$FavoriteItemRecord._(
      {this.createdBy, this.menuItem, this.createdTime, this.reference})
      : super._();

  @override
  FavoriteItemRecord rebuild(
          void Function(FavoriteItemRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteItemRecordBuilder toBuilder() =>
      new FavoriteItemRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteItemRecord &&
        createdBy == other.createdBy &&
        menuItem == other.menuItem &&
        createdTime == other.createdTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, createdBy.hashCode), menuItem.hashCode),
            createdTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteItemRecord')
          ..add('createdBy', createdBy)
          ..add('menuItem', menuItem)
          ..add('createdTime', createdTime)
          ..add('reference', reference))
        .toString();
  }
}

class FavoriteItemRecordBuilder
    implements Builder<FavoriteItemRecord, FavoriteItemRecordBuilder> {
  _$FavoriteItemRecord _$v;

  DocumentReference<Object> _createdBy;
  DocumentReference<Object> get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object> createdBy) =>
      _$this._createdBy = createdBy;

  DocumentReference<Object> _menuItem;
  DocumentReference<Object> get menuItem => _$this._menuItem;
  set menuItem(DocumentReference<Object> menuItem) =>
      _$this._menuItem = menuItem;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FavoriteItemRecordBuilder() {
    FavoriteItemRecord._initializeBuilder(this);
  }

  FavoriteItemRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdBy = $v.createdBy;
      _menuItem = $v.menuItem;
      _createdTime = $v.createdTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteItemRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteItemRecord;
  }

  @override
  void update(void Function(FavoriteItemRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteItemRecord build() {
    final _$result = _$v ??
        new _$FavoriteItemRecord._(
            createdBy: createdBy,
            menuItem: menuItem,
            createdTime: createdTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
