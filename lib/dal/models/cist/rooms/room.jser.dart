// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$RoomSerializer implements Serializer<Room> {
  final _stringBoolProcessor = const StringBoolProcessor();
  Serializer<RoomType> __roomTypeSerializer;
  Serializer<RoomType> get _roomTypeSerializer =>
      __roomTypeSerializer ??= RoomTypeSerializer();
  @override
  Map<String, dynamic> toMap(Room model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValue(ret, 'floor', model.floor);
    setMapValueIfNotNull(
        ret, 'isHavePower', _stringBoolProcessor.serialize(model.isHavePower));
    setMapValueIfNotNull(
        ret,
        'auditory_types',
        codeNonNullIterable(model.roomTypes,
            (val) => _roomTypeSerializer.toMap(val as RoomType), []));
    return ret;
  }

  @override
  Room fromMap(Map map) {
    if (map == null) return null;
    final obj = Room(
        map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'),
        map['floor'] as int ?? getJserDefault('floor'),
        _stringBoolProcessor.deserialize(map['isHavePower'] as String) ??
            getJserDefault('isHavePower'),
        codeNonNullIterable<RoomType>(
                map['auditory_types'] as Iterable,
                (val) => _roomTypeSerializer.fromMap(val as Map),
                <RoomType>[]) ??
            getJserDefault('roomTypes'));
    return obj;
  }
}
