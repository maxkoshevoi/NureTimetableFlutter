// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$FacultySerializer implements Serializer<Faculty> {
  @override
  Map<String, dynamic> toMap(Faculty model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(ret, 'departments',
        codeIterable(model.departments, (val) => passProcessor.serialize(val)));
    setMapValue(ret, 'directions',
        codeIterable(model.directions, (val) => passProcessor.serialize(val)));
    return ret;
  }

  @override
  Faculty fromMap(Map map) {
    if (map == null) return null;
    final obj = Faculty(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<dynamic>(map['departments'] as Iterable,
                (val) => passProcessor.deserialize(val)) ??
            getJserDefault('departments'),
        codeIterable<dynamic>(map['directions'] as Iterable,
                (val) => passProcessor.deserialize(val)) ??
            getJserDefault('directions'));
    return obj;
  }
}
