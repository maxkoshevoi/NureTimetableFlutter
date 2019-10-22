// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$GroupSerializer implements Serializer<Group> {
  @override
  Map<String, dynamic> toMap(Group model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    return ret;
  }

  @override
  Group fromMap(Map map) {
    if (map == null) return null;
    final obj = Group(map['id'] as int ?? getJserDefault('id'),
        map['name'] as String ?? getJserDefault('name'));
    return obj;
  }
}
