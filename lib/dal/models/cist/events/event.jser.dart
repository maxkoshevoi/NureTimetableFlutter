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
    setMapValueIfNotNull(ret, 'subject_id', model.lessonId);
    setMapValueIfNotNull(
        ret, 'start_time', dateTimeUtcProcessor.serialize(model.startTime));
    setMapValueIfNotNull(
        ret, 'end_time', dateTimeUtcProcessor.serialize(model.endTime));
    setMapValueIfNotNull(ret, 'type', model.typeId);
    setMapValueIfNotNull(ret, 'number_pair', model.pairNumber);
    setMapValueIfNotNull(ret, 'auditory', model.room);
    setMapValueIfNotNull(ret, 'teachers',
        codeNonNullIterable(model.teacherIds, (val) => val as int, []));
    setMapValueIfNotNull(ret, 'groups',
        codeNonNullIterable(model.groupIds, (val) => val as int, []));
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
        codeNonNullIterable<int>(
                map['teachers'] as Iterable, (val) => val as int, <int>[]) ??
            getJserDefault('teacherIds'),
        codeNonNullIterable<int>(
                map['groups'] as Iterable, (val) => val as int, <int>[]) ??
            getJserDefault('groupIds'));
    return obj;
  }
}
