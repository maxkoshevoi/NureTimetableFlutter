// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_type.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$RoomTypeSerializer implements Serializer<RoomType> {
  @override
  Map<String, dynamic> toMap(RoomType model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    return ret;
  }

  @override
  RoomType fromMap(Map map) {
    if (map == null) return null;
    final obj = RoomType(map['id'] as int ?? getJserDefault('id'),
        map['short_name'] as String ?? getJserDefault('shortName'));
    return obj;
  }
}
