// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$DirectionSerializer implements Serializer<Direction> {
  Serializer<Group> __groupSerializer;

  Serializer<Group> get _groupSerializer => __groupSerializer ??= GroupSerializer();
  Serializer<Speciality> __specialitySerializer;

  Serializer<Speciality> get _specialitySerializer =>
      __specialitySerializer ??= SpecialitySerializer();

  @override
  Map<String, dynamic> toMap(Direction model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(ret, 'groups',
        codeNonNullIterable(model.groups, (val) => _groupSerializer.toMap(val as Group), []));
    setMapValueIfNotNull(
        ret,
        'specialities',
        codeNonNullIterable(
            model.specialities, (val) => _specialitySerializer.toMap(val as Speciality), []));
    return ret;
  }

  @override
  Direction fromMap(Map map) {
    if (map == null) return null;
    final obj = Direction(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        groups: codeNonNullIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map), <Group>[]) ??
            getJserDefault('groups'),
        specialities: codeNonNullIterable<Speciality>(map['specialities'] as Iterable,
                (val) => _specialitySerializer.fromMap(val as Map), <Speciality>[]) ??
            getJserDefault('specialities'));
    return obj;
  }
}
