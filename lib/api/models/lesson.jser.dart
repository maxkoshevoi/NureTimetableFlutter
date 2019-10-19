// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$LessonSerializer implements Serializer<Lesson> {
  @override
  Map<String, dynamic> toMap(Lesson model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'brief', model.shortName);
    setMapValue(ret, 'title', model.fullName);
    return ret;
  }

  @override
  Lesson fromMap(Map map) {
    if (map == null) return null;
    final obj = Lesson(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['brief'] as String ?? getJserDefault('shortName'),
        fullName: map['title'] as String ?? getJserDefault('fullName'));
    return obj;
  }
}
