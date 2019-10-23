// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$SpecialitySerializer implements Serializer<Speciality> {
  Serializer<Group> __groupSerializer;
  Serializer<Group> get _groupSerializer =>
      __groupSerializer ??= GroupSerializer();
  @override
  Map<String, dynamic> toMap(Speciality model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(
        ret,
        'groups',
        codeIterable(
            model.groups, (val) => _groupSerializer.toMap(val as Group)));
    return ret;
  }

  @override
  Speciality fromMap(Map map) {
    if (map == null) return null;
    final obj = Speciality(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map)) ??
            getJserDefault('groups'));
    return obj;
  }
}
