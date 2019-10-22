import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

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

  const EventType(this.id, this.shortName, this.fullName, this.baseTypeId, this.englishBaseName);
}

@GenSerializer()
class EventTypeSerializer extends Serializer<EventType> with _$EventTypeSerializer {}
