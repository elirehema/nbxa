import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:nba/model/index.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor([
    Changes
])
final Serializers serializers = (_$serializers.toBuilder()
        ..addPlugin(StandardJsonPlugin()))
        .build();