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
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'faculties',
        codeNonNullIterable(model.faculties,
            (val) => _facultySerializer.toMap(val as Faculty), []));
    setMapValueIfNotNull(
        ret,
        'buildings',
        codeNonNullIterable(model.buildings,
            (val) => _buildingSerializer.toMap(val as Building), []));
    return ret;
  }

  @override
  University fromMap(Map map) {
    if (map == null) return null;
    final obj = University(
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeNonNullIterable<Faculty>(map['faculties'] as Iterable,
                (val) => _facultySerializer.fromMap(val as Map), <Faculty>[]) ??
            getJserDefault('faculties'),
        codeNonNullIterable<Building>(
                map['buildings'] as Iterable,
                (val) => _buildingSerializer.fromMap(val as Map),
                <Building>[]) ??
            getJserDefault('buildings'));
    return obj;
  }
}
