// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_ga_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAData> _$gADataSerializer = new _$GADataSerializer();

class _$GADataSerializer implements StructuredSerializer<GAData> {
  @override
  final Iterable<Type> types = const [GAData, _$GAData];
  @override
  final String wireName = 'GAData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'gaCount',
      serializers.serialize(object.gaCount,
          specifiedType: const FullType(double)),
      'regCount',
      serializers.serialize(object.regCount,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.gaDate;
    if (value != null) {
      result
        ..add('gaDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GAData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GADataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'gaCount':
          result.gaCount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'regCount':
          result.regCount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'gaDate':
          result.gaDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAData extends GAData {
  @override
  final double gaCount;
  @override
  final double regCount;
  @override
  final DateTime? gaDate;

  factory _$GAData([void Function(GADataBuilder)? updates]) =>
      (new GADataBuilder()..update(updates))._build();

  _$GAData._({required this.gaCount, required this.regCount, this.gaDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(gaCount, r'GAData', 'gaCount');
    BuiltValueNullFieldError.checkNotNull(regCount, r'GAData', 'regCount');
  }

  @override
  GAData rebuild(void Function(GADataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GADataBuilder toBuilder() => new GADataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAData &&
        gaCount == other.gaCount &&
        regCount == other.regCount &&
        gaDate == other.gaDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gaCount.hashCode);
    _$hash = $jc(_$hash, regCount.hashCode);
    _$hash = $jc(_$hash, gaDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAData')
          ..add('gaCount', gaCount)
          ..add('regCount', regCount)
          ..add('gaDate', gaDate))
        .toString();
  }
}

class GADataBuilder implements Builder<GAData, GADataBuilder> {
  _$GAData? _$v;

  double? _gaCount;
  double? get gaCount => _$this._gaCount;
  set gaCount(double? gaCount) => _$this._gaCount = gaCount;

  double? _regCount;
  double? get regCount => _$this._regCount;
  set regCount(double? regCount) => _$this._regCount = regCount;

  DateTime? _gaDate;
  DateTime? get gaDate => _$this._gaDate;
  set gaDate(DateTime? gaDate) => _$this._gaDate = gaDate;

  GADataBuilder();

  GADataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gaCount = $v.gaCount;
      _regCount = $v.regCount;
      _gaDate = $v.gaDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAData;
  }

  @override
  void update(void Function(GADataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAData build() => _build();

  _$GAData _build() {
    final _$result = _$v ??
        new _$GAData._(
            gaCount: BuiltValueNullFieldError.checkNotNull(
                gaCount, r'GAData', 'gaCount'),
            regCount: BuiltValueNullFieldError.checkNotNull(
                regCount, r'GAData', 'regCount'),
            gaDate: gaDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
