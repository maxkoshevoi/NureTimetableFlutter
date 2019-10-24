import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

part 'event_type.jser.dart';

class EventType {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("id_base")
  final int baseTypeId;

  @Alias("type")
  final String englishBaseName;

  const EventType({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.baseTypeId,
    @required this.englishBaseName,
  });
}

@GenSerializer(nullableFields: false)
class EventTypeSerializer extends Serializer<EventType> with _$EventTypeSerializer {}
