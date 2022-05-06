// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_category_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModifierCategoryRecord> _$modifierCategoryRecordSerializer =
    new _$ModifierCategoryRecordSerializer();

class _$ModifierCategoryRecordSerializer
    implements StructuredSerializer<ModifierCategoryRecord> {
  @override
  final Iterable<Type> types = const [
    ModifierCategoryRecord,
    _$ModifierCategoryRecord
  ];
  @override
  final String wireName = 'ModifierCategoryRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ModifierCategoryRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ModifierCategoryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModifierCategoryRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ModifierCategoryRecord extends ModifierCategoryRecord {
  @override
  final String name;
  @override
  final String description;
  @override
  final int position;
  @override
  final String image;
  @override
  final DocumentReference<Object> createdBy;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> reference;

  factory _$ModifierCategoryRecord(
          [void Function(ModifierCategoryRecordBuilder) updates]) =>
      (new ModifierCategoryRecordBuilder()..update(updates)).build();

  _$ModifierCategoryRecord._(
      {this.name,
      this.description,
      this.position,
      this.image,
      this.createdBy,
      this.createdTime,
      this.reference})
      : super._();

  @override
  ModifierCategoryRecord rebuild(
          void Function(ModifierCategoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifierCategoryRecordBuilder toBuilder() =>
      new ModifierCategoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifierCategoryRecord &&
        name == other.name &&
        description == other.description &&
        position == other.position &&
        image == other.image &&
        createdBy == other.createdBy &&
        createdTime == other.createdTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        position.hashCode),
                    image.hashCode),
                createdBy.hashCode),
            createdTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ModifierCategoryRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('position', position)
          ..add('image', image)
          ..add('createdBy', createdBy)
          ..add('createdTime', createdTime)
          ..add('reference', reference))
        .toString();
  }
}

class ModifierCategoryRecordBuilder
    implements Builder<ModifierCategoryRecord, ModifierCategoryRecordBuilder> {
  _$ModifierCategoryRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _createdBy;
  DocumentReference<Object> get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object> createdBy) =>
      _$this._createdBy = createdBy;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ModifierCategoryRecordBuilder() {
    ModifierCategoryRecord._initializeBuilder(this);
  }

  ModifierCategoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _position = $v.position;
      _image = $v.image;
      _createdBy = $v.createdBy;
      _createdTime = $v.createdTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifierCategoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifierCategoryRecord;
  }

  @override
  void update(void Function(ModifierCategoryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ModifierCategoryRecord build() {
    final _$result = _$v ??
        new _$ModifierCategoryRecord._(
            name: name,
            description: description,
            position: position,
            image: image,
            createdBy: createdBy,
            createdTime: createdTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
