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
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'full_name', model.fullName);
    setMapValue(ret, 'auditories',
        codeIterable(model.rooms, (val) => _roomSerializer.toMap(val as Room)));
    return ret;
  }

  @override
  Building fromMap(Map map) {
    if (map == null) return null;
    final obj = Building(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['full_name'] as String ?? getJserDefault('fullName'),
        codeIterable<Room>(map['auditories'] as Iterable,
                (val) => _roomSerializer.fromMap(val as Map)) ??
            getJserDefault('rooms'));
    return obj;
  }
}
