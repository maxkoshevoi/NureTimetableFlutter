// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_type.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$EventTypeSerializer implements Serializer<EventType> {
  @override
  Map<String, dynamic> toMap(EventType model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(ret, 'id_base', model.baseTypeId);
    setMapValue(ret, 'type', model.englishBaseName);
    return ret;
  }

  @override
  EventType fromMap(Map map) {
    if (map == null) return null;
    final obj = EventType(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        map['id_base'] as int ?? getJserDefault('baseTypeId'),
        map['type'] as String ?? getJserDefault('englishBaseName'));
    return obj;
  }
}
