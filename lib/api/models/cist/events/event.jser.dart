// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$EventSerializer implements Serializer<Event> {
  final _secondsProcessor = const EpochSecondsProcessor();

  @override
  Map<String, dynamic> toMap(Event model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'subject_id', model.lessonId);
    setMapValueIfNotNull(ret, 'start_time', _secondsProcessor.serialize(model.startTime));
    setMapValueIfNotNull(ret, 'end_time', _secondsProcessor.serialize(model.endTime));
    setMapValueIfNotNull(ret, 'type', model.typeId);
    setMapValueIfNotNull(ret, 'number_pair', model.pairNumber);
    setMapValueIfNotNull(ret, 'auditory', model.room);
    setMapValueIfNotNull(
        ret, 'teachers', codeNonNullIterable(model.teacherIds, (val) => val as int, []));
    setMapValueIfNotNull(
        ret, 'groups', codeNonNullIterable(model.groupIds, (val) => val as int, []));
    return ret;
  }

  @override
  Event fromMap(Map map) {
    if (map == null) return null;
    final obj = Event(
        lessonId: map['subject_id'] as int ?? getJserDefault('lessonId'),
        startTime:
            _secondsProcessor.deserialize(map['start_time'] as int) ?? getJserDefault('startTime'),
        endTime: _secondsProcessor.deserialize(map['end_time'] as int) ?? getJserDefault('endTime'),
        typeId: map['type'] as int ?? getJserDefault('typeId'),
        pairNumber: map['number_pair'] as int ?? getJserDefault('pairNumber'),
        room: map['auditory'] as String ?? getJserDefault('room'),
        teacherIds:
            codeNonNullIterable<int>(map['teachers'] as Iterable, (val) => val as int, <int>[]) ??
                getJserDefault('teacherIds'),
        groupIds:
            codeNonNullIterable<int>(map['groups'] as Iterable, (val) => val as int, <int>[]) ??
                getJserDefault('groupIds'));
    return obj;
  }
}
