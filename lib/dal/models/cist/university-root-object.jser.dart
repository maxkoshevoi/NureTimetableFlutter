// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university-root-object.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$UniversityRootObjectSerializer
    implements Serializer<UniversityRootObject> {
  Serializer<University> __universitySerializer;
  Serializer<University> get _universitySerializer =>
      __universitySerializer ??= UniversitySerializer();
  @override
  Map<String, dynamic> toMap(UniversityRootObject model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(
        ret, 'university', _universitySerializer.toMap(model.university));
    return ret;
  }

  @override
  UniversityRootObject fromMap(Map map) {
    if (map == null) return null;
    final obj = UniversityRootObject(
        _universitySerializer.fromMap(map['university'] as Map) ??
            getJserDefault('university'));
    return obj;
  }
}
