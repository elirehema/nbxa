import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:nba/model/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:nba/model/m_ga_data.dart';
import 'package:nba/model/m_ga_response.dart';

part 'serializers.g.dart';

@SerializersFor([
    GAData, GAResponse
])
final Serializers serializers = (_$serializers.toBuilder()
        ..addPlugin(StandardJsonPlugin()))
        .build();