// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_ga_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAResponse> _$gAResponseSerializer = new _$GAResponseSerializer();

class _$GAResponseSerializer implements StructuredSerializer<GAResponse> {
  @override
  final Iterable<Type> types = const [GAResponse, _$GAResponse];
  @override
  final String wireName = 'GAResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'msisdn',
      serializers.serialize(object.msisdn,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.datas,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GAData)])),
    ];
    Object? value;
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GAResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'msisdn':
          result.msisdn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'data':
          result.datas.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GAData)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAResponse extends GAResponse {
  @override
  final String msisdn;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final BuiltList<GAData> datas;

  factory _$GAResponse([void Function(GAResponseBuilder)? updates]) =>
      (new GAResponseBuilder()..update(updates))._build();

  _$GAResponse._(
      {required this.msisdn, this.startDate, this.endDate, required this.datas})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(msisdn, r'GAResponse', 'msisdn');
    BuiltValueNullFieldError.checkNotNull(datas, r'GAResponse', 'datas');
  }

  @override
  GAResponse rebuild(void Function(GAResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAResponseBuilder toBuilder() => new GAResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAResponse &&
        msisdn == other.msisdn &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        datas == other.datas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, msisdn.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, datas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAResponse')
          ..add('msisdn', msisdn)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('datas', datas))
        .toString();
  }
}

class GAResponseBuilder implements Builder<GAResponse, GAResponseBuilder> {
  _$GAResponse? _$v;

  String? _msisdn;
  String? get msisdn => _$this._msisdn;
  set msisdn(String? msisdn) => _$this._msisdn = msisdn;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  ListBuilder<GAData>? _datas;
  ListBuilder<GAData> get datas => _$this._datas ??= new ListBuilder<GAData>();
  set datas(ListBuilder<GAData>? datas) => _$this._datas = datas;

  GAResponseBuilder();

  GAResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _msisdn = $v.msisdn;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _datas = $v.datas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAResponse;
  }

  @override
  void update(void Function(GAResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAResponse build() => _build();

  _$GAResponse _build() {
    _$GAResponse _$result;
    try {
      _$result = _$v ??
          new _$GAResponse._(
              msisdn: BuiltValueNullFieldError.checkNotNull(
                  msisdn, r'GAResponse', 'msisdn'),
              startDate: startDate,
              endDate: endDate,
              datas: datas.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'datas';
        datas.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
