import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'm_ga_data.g.dart';
abstract class GAData implements Built<GAData, GADataBuilder> {
  double get gaCount;
  double get regCount;
  DateTime? get gaDate;

  GAData._();
  factory GAData([Function(GADataBuilder b) updates]) = _$GAData;

  static Serializer<GAData> get serializer => _$gADataSerializer;
}