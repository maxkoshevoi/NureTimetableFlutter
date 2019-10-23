// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$RoomSerializer implements Serializer<Room> {
  Serializer<RoomType> __roomTypeSerializer;
  Serializer<RoomType> get _roomTypeSerializer =>
      __roomTypeSerializer ??= RoomTypeSerializer();
  @override
  Map<String, dynamic> toMap(Room model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'short_name', model.shortName);
    setMapValue(ret, 'floor', model.floor);
    setMapValue(ret, 'is_have_power', model.isHavePower);
    setMapValue(
        ret,
        'auditory_types',
        codeIterable(model.roomTypes,
            (val) => _roomTypeSerializer.toMap(val as RoomType)));
    return ret;
  }

  @override
  Room fromMap(Map map) {
    if (map == null) return null;
    final obj = Room(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['floor'] as int ?? getJserDefault('floor'),
        map['is_have_power'] as bool ?? getJserDefault('isHavePower'),
        codeIterable<RoomType>(map['auditory_types'] as Iterable,
                (val) => _roomTypeSerializer.fromMap(val as Map)) ??
            getJserDefault('roomTypes'));
    return obj;
  }
}
