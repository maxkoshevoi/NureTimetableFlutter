// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$LessonSerializer implements Serializer<Lesson> {
  Serializer<HoursPlanned> __hoursPlannedSerializer;
  Serializer<HoursPlanned> get _hoursPlannedSerializer =>
      __hoursPlannedSerializer ??= HoursPlannedSerializer();
  @override
  Map<String, dynamic> toMap(Lesson model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'brief', model.shortName);
    setMapValueIfNotNull(ret, 'title', model.fullName);
    setMapValueIfNotNull(
        ret,
        'hours',
        codeNonNullIterable(model.duration,
            (val) => _hoursPlannedSerializer.toMap(val as HoursPlanned), []));
    return ret;
  }

  @override
  Lesson fromMap(Map map) {
    if (map == null) return null;
    final obj = Lesson(
        map['id'] as int ?? getJserDefault('id'),
        map['brief'] as String ?? getJserDefault('shortName'),
        map['title'] as String ?? getJserDefault('fullName'),
        codeNonNullIterable<HoursPlanned>(
                map['hours'] as Iterable,
                (val) => _hoursPlannedSerializer.fromMap(val as Map),
                <HoursPlanned>[]) ??
            getJserDefault('duration'));
    return obj;
  }
}
