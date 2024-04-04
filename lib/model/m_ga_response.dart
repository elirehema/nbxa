import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'm_ga_data.dart';

part 'm_ga_response.g.dart';
abstract class GAResponse implements Built<GAResponse, GAResponseBuilder> {
  String get msisdn;
  DateTime? get startDate;
  DateTime? get endDate;
  @BuiltValueField(wireName: 'data')
  BuiltList<GAData> get datas;

  GAResponse._();
  factory GAResponse([Function(GAResponseBuilder b) updates]) = _$GAResponse;

  static Serializer<GAResponse> get serializer => _$gAResponseSerializer;
}