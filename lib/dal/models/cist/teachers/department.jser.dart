// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$DepartmentSerializer implements Serializer<Department> {
  Serializer<Teacher> __teacherSerializer;
  Serializer<Teacher> get _teacherSerializer =>
      __teacherSerializer ??= TeacherSerializer();
  @override
  Map<String, dynamic> toMap(Department model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(
        ret,
        'teachers',
        codeIterable(
            model.teachers, (val) => _teacherSerializer.toMap(val as Teacher)));
    return ret;
  }

  @override
  Department fromMap(Map map) {
    if (map == null) return null;
    final obj = Department(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<Teacher>(map['teachers'] as Iterable,
                (val) => _teacherSerializer.fromMap(val as Map)) ??
            getJserDefault('teachers'));
    return obj;
  }
}
