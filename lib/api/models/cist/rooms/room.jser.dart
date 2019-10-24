// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$RoomSerializer implements Serializer<Room> {
  final _stringBoolReplaceProcessor = const StringBoolReplaceProcessor();
  Serializer<RoomType> __roomTypeSerializer;

  Serializer<RoomType> get _roomTypeSerializer => __roomTypeSerializer ??= RoomTypeSerializer();

  @override
  Map<String, dynamic> toMap(Room model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValue(ret, 'floor', model.floor);
    setMapValue(ret, 'is_have_power', _stringBoolReplaceProcessor.serialize(model.isHavePower));
    setMapValueIfNotNull(
        ret,
        'auditory_types',
        codeNonNullIterable(
            model.roomTypes, (val) => _roomTypeSerializer.toMap(val as RoomType), []));
    return ret;
  }

  @override
  Room fromMap(Map map) {
    if (map == null) return null;
    final obj = Room(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        floor: map['floor'] as int ?? getJserDefault('floor'),
        isHavePower: _stringBoolReplaceProcessor.deserialize(map['is_have_power'] as String) ??
            getJserDefault('isHavePower'),
        roomTypes: codeNonNullIterable<RoomType>(map['auditory_types'] as Iterable,
                (val) => _roomTypeSerializer.fromMap(val as Map), <RoomType>[]) ??
            getJserDefault('roomTypes'));
    return obj;
  }
}
