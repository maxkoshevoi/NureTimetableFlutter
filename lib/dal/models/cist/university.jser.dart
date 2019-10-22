// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$UniversitySerializer implements Serializer<University> {
  @override
  Map<String, dynamic> toMap(University model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(ret, 'faculties',
        codeIterable(model.faculties, (val) => passProcessor.serialize(val)));
    setMapValue(ret, 'buildings',
        codeIterable(model.buildings, (val) => passProcessor.serialize(val)));
    return ret;
  }

  @override
  University fromMap(Map map) {
    if (map == null) return null;
    final obj = University(
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<dynamic>(map['faculties'] as Iterable,
                (val) => passProcessor.deserialize(val)) ??
            getJserDefault('faculties'),
        codeIterable<dynamic>(map['buildings'] as Iterable,
                (val) => passProcessor.deserialize(val)) ??
            getJserDefault('buildings'));
    return obj;
  }
}
