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
    setMapValue(ret, 'time-zone', model.timeZone);
    setMapValue(
        ret,
        'events',
        codeIterable(
            model.events, (val) => _eventSerializer.toMap(val as Event)));
    setMapValue(
        ret,
        'groups',
        codeIterable(
            model.groups, (val) => _groupSerializer.toMap(val as Group)));
    setMapValue(
        ret,
        'teachers',
        codeIterable(
            model.teachers, (val) => _teacherSerializer.toMap(val as Teacher)));
    setMapValue(
        ret,
        'subjects',
        codeIterable(
            model.lessons, (val) => _lessonSerializer.toMap(val as Lesson)));
    setMapValue(
        ret,
        'types',
        codeIterable(model.eventTypes,
            (val) => _eventTypeSerializer.toMap(val as EventType)));
    return ret;
  }

  @override
  Timetable fromMap(Map map) {
    if (map == null) return null;
    final obj = Timetable(
        map['time-zone'] as String ?? getJserDefault('timeZone'),
        codeIterable<Event>(map['events'] as Iterable,
                (val) => _eventSerializer.fromMap(val as Map)) ??
            getJserDefault('events'),
        codeIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map)) ??
            getJserDefault('groups'),
        codeIterable<Teacher>(map['teachers'] as Iterable,
                (val) => _teacherSerializer.fromMap(val as Map)) ??
            getJserDefault('teachers'),
        codeIterable<Lesson>(map['subjects'] as Iterable,
                (val) => _lessonSerializer.fromMap(val as Map)) ??
            getJserDefault('lessons'),
        codeIterable<EventType>(map['types'] as Iterable,
                (val) => _eventTypeSerializer.fromMap(val as Map)) ??
            getJserDefault('eventTypes'));
    return obj;
  }
}
