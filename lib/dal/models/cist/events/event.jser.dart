// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$EventSerializer implements Serializer<Event> {
  @override
  Map<String, dynamic> toMap(Event model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'subject_id', model.lessonId);
    setMapValue(
        ret, 'start_time', dateTimeUtcProcessor.serialize(model.startTime));
    setMapValue(ret, 'end_time', dateTimeUtcProcessor.serialize(model.endTime));
    setMapValue(ret, 'type', model.typeId);
    setMapValue(ret, 'number_pair', model.pairNumber);
    setMapValue(ret, 'auditory', model.room);
    setMapValue(
        ret, 'teachers', codeIterable(model.teacherIds, (val) => val as int));
    setMapValue(
        ret, 'groups', codeIterable(model.groupIds, (val) => val as int));
    return ret;
  }

  @override
  Event fromMap(Map map) {
    if (map == null) return null;
    final obj = Event(
        map['subject_id'] as int ?? getJserDefault('lessonId'),
        dateTimeUtcProcessor.deserialize(map['start_time'] as String) ??
            getJserDefault('startTime'),
        dateTimeUtcProcessor.deserialize(map['end_time'] as String) ??
            getJserDefault('endTime'),
        map['type'] as int ?? getJserDefault('typeId'),
        map['number_pair'] as int ?? getJserDefault('pairNumber'),
        map['auditory'] as String ?? getJserDefault('room'),
        codeIterable<int>(map['teachers'] as Iterable, (val) => val as int) ??
            getJserDefault('teacherIds'),
        codeIterable<int>(map['groups'] as Iterable, (val) => val as int) ??
            getJserDefault('groupIds'));
    return obj;
  }
}
