// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$BuildingSerializer implements Serializer<Building> {
  Serializer<Room> __roomSerializer;

  Serializer<Room> get _roomSerializer => __roomSerializer ??= RoomSerializer();

  @override
  Map<String, dynamic> toMap(Building model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(ret, 'auditories',
        codeNonNullIterable(model.rooms, (val) => _roomSerializer.toMap(val as Room), []));
    return ret;
  }

  @override
  Building fromMap(Map map) {
    if (map == null) return null;
    final obj = Building(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        rooms: codeNonNullIterable<Room>(map['auditories'] as Iterable,
                (val) => _roomSerializer.fromMap(val as Map), <Room>[]) ??
            getJserDefault('rooms'));
    return obj;
  }
}
