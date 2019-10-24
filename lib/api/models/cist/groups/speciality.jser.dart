// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$SpecialitySerializer implements Serializer<Speciality> {
  Serializer<Group> __groupSerializer;

  Serializer<Group> get _groupSerializer => __groupSerializer ??= GroupSerializer();

  @override
  Map<String, dynamic> toMap(Speciality model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(ret, 'groups',
        codeNonNullIterable(model.groups, (val) => _groupSerializer.toMap(val as Group), []));
    return ret;
  }

  @override
  Speciality fromMap(Map map) {
    if (map == null) return null;
    final obj = Speciality(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        groups: codeNonNullIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map), <Group>[]) ??
            getJserDefault('groups'));
    return obj;
  }
}
