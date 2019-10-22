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
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    return ret;
  }

  @override
  Teacher fromMap(Map map) {
    if (map == null) return null;
    final obj = Teacher(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'));
    return obj;
  }
}
