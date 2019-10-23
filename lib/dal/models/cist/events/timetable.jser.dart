// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$TimetableSerializer implements Serializer<Timetable> {
  Serializer<Event> __eventSerializer;
  Serializer<Event> get _eventSerializer =>
      __eventSerializer ??= EventSerializer();
  Serializer<Group> __groupSerializer;
  Serializer<Group> get _groupSerializer =>
      __groupSerializer ??= GroupSerializer();
  Serializer<Teacher> __teacherSerializer;
  Serializer<Teacher> get _teacherSerializer =>
      __teacherSerializer ??= TeacherSerializer();
  Serializer<Lesson> __lessonSerializer;
  Serializer<Lesson> get _lessonSerializer =>
      __lessonSerializer ??= LessonSerializer();
  Serializer<EventType> __eventTypeSerializer;
  Serializer<EventType> get _eventTypeSerializer =>
      __eventTypeSerializer ??= EventTypeSerializer();
  @override
  Map<String, dynamic> toMap(Timetable model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'time-zone', model.timeZone);
    setMapValueIfNotNull(
        ret,
        'events',
        codeNonNullIterable(
            model.events, (val) => _eventSerializer.toMap(val as Event), []));
    setMapValueIfNotNull(
        ret,
        'groups',
        codeNonNullIterable(
            model.groups, (val) => _groupSerializer.toMap(val as Group), []));
    setMapValueIfNotNull(
        ret,
        'teachers',
        codeNonNullIterable(model.teachers,
            (val) => _teacherSerializer.toMap(val as Teacher), []));
    setMapValueIfNotNull(
        ret,
        'subjects',
        codeNonNullIterable(model.lessons,
            (val) => _lessonSerializer.toMap(val as Lesson), []));
    setMapValueIfNotNull(
        ret,
        'types',
        codeNonNullIterable(model.eventTypes,
            (val) => _eventTypeSerializer.toMap(val as EventType), []));
    return ret;
  }

  @override
  Timetable fromMap(Map map) {
    if (map == null) return null;
    final obj = Timetable(
        map['time-zone'] as String ?? getJserDefault('timeZone'),
        codeNonNullIterable<Event>(map['events'] as Iterable,
                (val) => _eventSerializer.fromMap(val as Map), <Event>[]) ??
            getJserDefault('events'),
        codeNonNullIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map), <Group>[]) ??
            getJserDefault('groups'),
        codeNonNullIterable<Teacher>(map['teachers'] as Iterable,
                (val) => _teacherSerializer.fromMap(val as Map), <Teacher>[]) ??
            getJserDefault('teachers'),
        codeNonNullIterable<Lesson>(map['subjects'] as Iterable,
                (val) => _lessonSerializer.fromMap(val as Map), <Lesson>[]) ??
            getJserDefault('lessons'),
        codeNonNullIterable<EventType>(
                map['types'] as Iterable,
                (val) => _eventTypeSerializer.fromMap(val as Map),
                <EventType>[]) ??
            getJserDefault('eventTypes'));
    return obj;
  }
}
