// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_category_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuCategoryRecord> _$menuCategoryRecordSerializer =
    new _$MenuCategoryRecordSerializer();

class _$MenuCategoryRecordSerializer
    implements StructuredSerializer<MenuCategoryRecord> {
  @override
  final Iterable<Type> types = const [MenuCategoryRecord, _$MenuCategoryRecord];
  @override
  final String wireName = 'MenuCategoryRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuCategoryRecord object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isVisible;
    if (value != null) {
      result
        ..add('is_visible')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MenuCategoryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuCategoryRecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_visible':
          result.isVisible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$MenuCategoryRecord extends MenuCategoryRecord {
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final int position;
  @override
  final bool isVisible;
  @override
  final DocumentReference<Object> createdBy;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> reference;

  factory _$MenuCategoryRecord(
          [void Function(MenuCategoryRecordBuilder) updates]) =>
      (new MenuCategoryRecordBuilder()..update(updates)).build();

  _$MenuCategoryRecord._(
      {this.name,
      this.description,
      this.image,
      this.position,
      this.isVisible,
      this.createdBy,
      this.createdTime,
      this.reference})
      : super._();

  @override
  MenuCategoryRecord rebuild(
          void Function(MenuCategoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuCategoryRecordBuilder toBuilder() =>
      new MenuCategoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuCategoryRecord &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        position == other.position &&
        isVisible == other.isVisible &&
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
                    $jc(
                        $jc($jc($jc(0, name.hashCode), description.hashCode),
                            image.hashCode),
                        position.hashCode),
                    isVisible.hashCode),
                createdBy.hashCode),
            createdTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuCategoryRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('position', position)
          ..add('isVisible', isVisible)
          ..add('createdBy', createdBy)
          ..add('createdTime', createdTime)
          ..add('reference', reference))
        .toString();
  }
}

class MenuCategoryRecordBuilder
    implements Builder<MenuCategoryRecord, MenuCategoryRecordBuilder> {
  _$MenuCategoryRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  bool _isVisible;
  bool get isVisible => _$this._isVisible;
  set isVisible(bool isVisible) => _$this._isVisible = isVisible;

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

  MenuCategoryRecordBuilder() {
    MenuCategoryRecord._initializeBuilder(this);
  }

  MenuCategoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _position = $v.position;
      _isVisible = $v.isVisible;
      _createdBy = $v.createdBy;
      _createdTime = $v.createdTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuCategoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuCategoryRecord;
  }

  @override
  void update(void Function(MenuCategoryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuCategoryRecord build() {
    final _$result = _$v ??
        new _$MenuCategoryRecord._(
            name: name,
            description: description,
            image: image,
            position: position,
            isVisible: isVisible,
            createdBy: createdBy,
            createdTime: createdTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
