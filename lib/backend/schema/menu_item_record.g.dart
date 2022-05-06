// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuItemRecord> _$menuItemRecordSerializer =
    new _$MenuItemRecordSerializer();

class _$MenuItemRecordSerializer
    implements StructuredSerializer<MenuItemRecord> {
  @override
  final Iterable<Type> types = const [MenuItemRecord, _$MenuItemRecord];
  @override
  final String wireName = 'MenuItemRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuItemRecord object,
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
    value = object.priceSingle;
    if (value != null) {
      result
        ..add('price_single')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.priceComboReg;
    if (value != null) {
      result
        ..add('price_combo_reg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.priceComboMed;
    if (value != null) {
      result
        ..add('price_combo_med')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  MenuItemRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuItemRecordBuilder();

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
        case 'price_single':
          result.priceSingle = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'price_combo_reg':
          result.priceComboReg = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'price_combo_med':
          result.priceComboMed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$MenuItemRecord extends MenuItemRecord {
  @override
  final String name;
  @override
  final String description;
  @override
  final DocumentReference<Object> category;
  @override
  final int position;
  @override
  final String image;
  @override
  final DocumentReference<Object> createdBy;
  @override
  final DateTime createdTime;
  @override
  final double priceSingle;
  @override
  final double priceComboReg;
  @override
  final double priceComboMed;
  @override
  final int alohaItemId;
  @override
  final DocumentReference<Object> reference;

  factory _$MenuItemRecord([void Function(MenuItemRecordBuilder) updates]) =>
      (new MenuItemRecordBuilder()..update(updates)).build();

  _$MenuItemRecord._(
      {this.name,
      this.description,
      this.category,
      this.position,
      this.image,
      this.createdBy,
      this.createdTime,
      this.priceSingle,
      this.priceComboReg,
      this.priceComboMed,
      this.alohaItemId,
      this.reference})
      : super._();

  @override
  MenuItemRecord rebuild(void Function(MenuItemRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuItemRecordBuilder toBuilder() =>
      new MenuItemRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItemRecord &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        position == other.position &&
        image == other.image &&
        createdBy == other.createdBy &&
        createdTime == other.createdTime &&
        priceSingle == other.priceSingle &&
        priceComboReg == other.priceComboReg &&
        priceComboMed == other.priceComboMed &&
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
                                    $jc(
                                        $jc(
                                            $jc($jc(0, name.hashCode),
                                                description.hashCode),
                                            category.hashCode),
                                        position.hashCode),
                                    image.hashCode),
                                createdBy.hashCode),
                            createdTime.hashCode),
                        priceSingle.hashCode),
                    priceComboReg.hashCode),
                priceComboMed.hashCode),
            alohaItemId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuItemRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('category', category)
          ..add('position', position)
          ..add('image', image)
          ..add('createdBy', createdBy)
          ..add('createdTime', createdTime)
          ..add('priceSingle', priceSingle)
          ..add('priceComboReg', priceComboReg)
          ..add('priceComboMed', priceComboMed)
          ..add('alohaItemId', alohaItemId)
          ..add('reference', reference))
        .toString();
  }
}

class MenuItemRecordBuilder
    implements Builder<MenuItemRecord, MenuItemRecordBuilder> {
  _$MenuItemRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _category;
  DocumentReference<Object> get category => _$this._category;
  set category(DocumentReference<Object> category) =>
      _$this._category = category;

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

  double _priceSingle;
  double get priceSingle => _$this._priceSingle;
  set priceSingle(double priceSingle) => _$this._priceSingle = priceSingle;

  double _priceComboReg;
  double get priceComboReg => _$this._priceComboReg;
  set priceComboReg(double priceComboReg) =>
      _$this._priceComboReg = priceComboReg;

  double _priceComboMed;
  double get priceComboMed => _$this._priceComboMed;
  set priceComboMed(double priceComboMed) =>
      _$this._priceComboMed = priceComboMed;

  int _alohaItemId;
  int get alohaItemId => _$this._alohaItemId;
  set alohaItemId(int alohaItemId) => _$this._alohaItemId = alohaItemId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MenuItemRecordBuilder() {
    MenuItemRecord._initializeBuilder(this);
  }

  MenuItemRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _category = $v.category;
      _position = $v.position;
      _image = $v.image;
      _createdBy = $v.createdBy;
      _createdTime = $v.createdTime;
      _priceSingle = $v.priceSingle;
      _priceComboReg = $v.priceComboReg;
      _priceComboMed = $v.priceComboMed;
      _alohaItemId = $v.alohaItemId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuItemRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuItemRecord;
  }

  @override
  void update(void Function(MenuItemRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuItemRecord build() {
    final _$result = _$v ??
        new _$MenuItemRecord._(
            name: name,
            description: description,
            category: category,
            position: position,
            image: image,
            createdBy: createdBy,
            createdTime: createdTime,
            priceSingle: priceSingle,
            priceComboReg: priceComboReg,
            priceComboMed: priceComboMed,
            alohaItemId: alohaItemId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
