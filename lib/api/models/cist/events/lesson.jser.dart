// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$LessonSerializer implements Serializer<Lesson> {
  Serializer<PlannedHours> __plannedHoursSerializer;

  Serializer<PlannedHours> get _plannedHoursSerializer =>
      __plannedHoursSerializer ??= PlannedHoursSerializer();

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
        codeNonNullIterable(
            model.duration, (val) => _plannedHoursSerializer.toMap(val as PlannedHours), []));
    return ret;
  }

  @override
  Lesson fromMap(Map map) {
    if (map == null) return null;
    final obj = Lesson(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['brief'] as String ?? getJserDefault('shortName'),
        fullName: map['title'] as String ?? getJserDefault('fullName'),
        duration: codeNonNullIterable<PlannedHours>(map['hours'] as Iterable,
                (val) => _plannedHoursSerializer.fromMap(val as Map), <PlannedHours>[]) ??
            getJserDefault('duration'));
    return obj;
  }
}
