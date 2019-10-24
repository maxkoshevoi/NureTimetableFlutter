// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$TeacherSerializer implements Serializer<Teacher> {
  @override
  Map<String, dynamic> toMap(Teacher model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    return ret;
  }

  @override
  Teacher fromMap(Map map) {
    if (map == null) return null;
    final obj = Teacher(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'));
    return obj;
  }
}
