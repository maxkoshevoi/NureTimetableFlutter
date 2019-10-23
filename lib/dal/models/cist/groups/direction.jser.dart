// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$DirectionSerializer implements Serializer<Direction> {
  Serializer<Group> __groupSerializer;
  Serializer<Group> get _groupSerializer =>
      __groupSerializer ??= GroupSerializer();
  Serializer<Speciality> __specialitySerializer;
  Serializer<Speciality> get _specialitySerializer =>
      __specialitySerializer ??= SpecialitySerializer();
  @override
  Map<String, dynamic> toMap(Direction model) {
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
    setMapValue(
        ret,
        'specialities',
        codeIterable(model.specialities,
            (val) => _specialitySerializer.toMap(val as Speciality)));
    return ret;
  }

  @override
  Direction fromMap(Map map) {
    if (map == null) return null;
    final obj = Direction(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map)) ??
            getJserDefault('groups'),
        codeIterable<Speciality>(map['specialities'] as Iterable,
                (val) => _specialitySerializer.fromMap(val as Map)) ??
            getJserDefault('specialities'));
    return obj;
  }
}
