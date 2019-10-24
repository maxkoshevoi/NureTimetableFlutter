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

  Serializer<Direction> get _directionSerializer => __directionSerializer ??= DirectionSerializer();

  @override
  Map<String, dynamic> toMap(Faculty model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'departments',
        codeNonNullIterable(
            model.departments, (val) => _departmentSerializer.toMap(val as Department), []));
    setMapValueIfNotNull(
        ret,
        'directions',
        codeNonNullIterable(
            model.directions, (val) => _directionSerializer.toMap(val as Direction), []));
    return ret;
  }

  @override
  Faculty fromMap(Map map) {
    if (map == null) return null;
    final obj = Faculty(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        departments: codeNonNullIterable<Department>(map['departments'] as Iterable,
                (val) => _departmentSerializer.fromMap(val as Map), <Department>[]) ??
            getJserDefault('departments'),
        directions: codeNonNullIterable<Direction>(map['directions'] as Iterable,
                (val) => _directionSerializer.fromMap(val as Map), <Direction>[]) ??
            getJserDefault('directions'));
    return obj;
  }
}
