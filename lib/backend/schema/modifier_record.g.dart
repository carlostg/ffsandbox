// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModifierRecord> _$modifierRecordSerializer =
    new _$ModifierRecordSerializer();

class _$ModifierRecordSerializer
    implements StructuredSerializer<ModifierRecord> {
  @override
  final Iterable<Type> types = const [ModifierRecord, _$ModifierRecord];
  @override
  final String wireName = 'ModifierRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ModifierRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripion;
    if (value != null) {
      result
        ..add('descripion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.extraPrice;
    if (value != null) {
      result
        ..add('extra_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
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
    value = object.alohaItemId;
    if (value != null) {
      result
        ..add('aloha_item_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ModifierRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModifierRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descripion':
          result.descripion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extra_price':
          result.extraPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'aloha_item_id':
          result.alohaItemId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$ModifierRecord extends ModifierRecord {
  @override
  final String name;
  @override
  final String descripion;
  @override
  final double extraPrice;
  @override
  final String image;
  @override
  final DocumentReference<Object> category;
  @override
  final int position;
  @override
  final DocumentReference<Object> createdBy;
  @override
  final DateTime createdTime;
  @override
  final int alohaItemId;
  @override
  final DocumentReference<Object> reference;

  factory _$ModifierRecord([void Function(ModifierRecordBuilder) updates]) =>
      (new ModifierRecordBuilder()..update(updates)).build();

  _$ModifierRecord._(
      {this.name,
      this.descripion,
      this.extraPrice,
      this.image,
      this.category,
      this.position,
      this.createdBy,
      this.createdTime,
      this.alohaItemId,
      this.reference})
      : super._();

  @override
  ModifierRecord rebuild(void Function(ModifierRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifierRecordBuilder toBuilder() =>
      new ModifierRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifierRecord &&
        name == other.name &&
        descripion == other.descripion &&
        extraPrice == other.extraPrice &&
        image == other.image &&
        category == other.category &&
        position == other.position &&
        createdBy == other.createdBy &&
        createdTime == other.createdTime &&
        alohaItemId == other.alohaItemId &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, name.hashCode),
                                        descripion.hashCode),
                                    extraPrice.hashCode),
                                image.hashCode),
                            category.hashCode),
                        position.hashCode),
                    createdBy.hashCode),
                createdTime.hashCode),
            alohaItemId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ModifierRecord')
          ..add('name', name)
          ..add('descripion', descripion)
          ..add('extraPrice', extraPrice)
          ..add('image', image)
          ..add('category', category)
          ..add('position', position)
          ..add('createdBy', createdBy)
          ..add('createdTime', createdTime)
          ..add('alohaItemId', alohaItemId)
          ..add('reference', reference))
        .toString();
  }
}

class ModifierRecordBuilder
    implements Builder<ModifierRecord, ModifierRecordBuilder> {
  _$ModifierRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _descripion;
  String get descripion => _$this._descripion;
  set descripion(String descripion) => _$this._descripion = descripion;

  double _extraPrice;
  double get extraPrice => _$this._extraPrice;
  set extraPrice(double extraPrice) => _$this._extraPrice = extraPrice;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _category;
  DocumentReference<Object> get category => _$this._category;
  set category(DocumentReference<Object> category) =>
      _$this._category = category;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  DocumentReference<Object> _createdBy;
  DocumentReference<Object> get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object> createdBy) =>
      _$this._createdBy = createdBy;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  int _alohaItemId;
  int get alohaItemId => _$this._alohaItemId;
  set alohaItemId(int alohaItemId) => _$this._alohaItemId = alohaItemId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ModifierRecordBuilder() {
    ModifierRecord._initializeBuilder(this);
  }

  ModifierRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _descripion = $v.descripion;
      _extraPrice = $v.extraPrice;
      _image = $v.image;
      _category = $v.category;
      _position = $v.position;
      _createdBy = $v.createdBy;
      _createdTime = $v.createdTime;
      _alohaItemId = $v.alohaItemId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifierRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifierRecord;
  }

  @override
  void update(void Function(ModifierRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ModifierRecord build() {
    final _$result = _$v ??
        new _$ModifierRecord._(
            name: name,
            descripion: descripion,
            extraPrice: extraPrice,
            image: image,
            category: category,
            position: position,
            createdBy: createdBy,
            createdTime: createdTime,
            alohaItemId: alohaItemId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
