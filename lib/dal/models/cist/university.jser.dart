// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$UniversitySerializer implements Serializer<University> {
  Serializer<Faculty> __facultySerializer;
  Serializer<Faculty> get _facultySerializer =>
      __facultySerializer ??= FacultySerializer();
  Serializer<Building> __buildingSerializer;
  Serializer<Building> get _buildingSerializer =>
      __buildingSerializer ??= BuildingSerializer();
  @override
  Map<String, dynamic> toMap(University model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(
        ret,
        'faculties',
        codeIterable(model.faculties,
            (val) => _facultySerializer.toMap(val as Faculty)));
    setMapValue(
        ret,
        'buildings',
        codeIterable(model.buildings,
            (val) => _buildingSerializer.toMap(val as Building)));
    return ret;
  }

  @override
  University fromMap(Map map) {
    if (map == null) return null;
    final obj = University(
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<Faculty>(map['faculties'] as Iterable,
                (val) => _facultySerializer.fromMap(val as Map)) ??
            getJserDefault('faculties'),
        codeIterable<Building>(map['buildings'] as Iterable,
                (val) => _buildingSerializer.fromMap(val as Map)) ??
            getJserDefault('buildings'));
    return obj;
  }
}
