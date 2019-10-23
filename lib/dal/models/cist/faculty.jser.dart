// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$FacultySerializer implements Serializer<Faculty> {
  Serializer<Department> __departmentSerializer;
  Serializer<Department> get _departmentSerializer =>
      __departmentSerializer ??= DepartmentSerializer();
  Serializer<Direction> __directionSerializer;
  Serializer<Direction> get _directionSerializer =>
      __directionSerializer ??= DirectionSerializer();
  @override
  Map<String, dynamic> toMap(Faculty model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(
        ret,
        'departments',
        codeIterable(model.departments,
            (val) => _departmentSerializer.toMap(val as Department)));
    setMapValue(
        ret,
        'directions',
        codeIterable(model.directions,
            (val) => _directionSerializer.toMap(val as Direction)));
    return ret;
  }

  @override
  Faculty fromMap(Map map) {
    if (map == null) return null;
    final obj = Faculty(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<Department>(map['departments'] as Iterable,
                (val) => _departmentSerializer.fromMap(val as Map)) ??
            getJserDefault('departments'),
        codeIterable<Direction>(map['directions'] as Iterable,
                (val) => _directionSerializer.fromMap(val as Map)) ??
            getJserDefault('directions'));
    return obj;
  }
}
