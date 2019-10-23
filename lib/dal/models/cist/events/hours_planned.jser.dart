// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hours_planned.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$HoursPlannedSerializer implements Serializer<HoursPlanned> {
  @override
  Map<String, dynamic> toMap(HoursPlanned model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'type', model.eventTypeId);
    setMapValueIfNotNull(ret, 'val', model.hours);
    setMapValueIfNotNull(ret, 'teachers',
        codeNonNullIterable(model.teacherIds, (val) => val as int, []));
    return ret;
  }

  @override
  HoursPlanned fromMap(Map map) {
    if (map == null) return null;
    final obj = HoursPlanned(
        map['type'] as int ?? getJserDefault('eventTypeId'),
        map['val'] as int ?? getJserDefault('hours'),
        codeNonNullIterable<int>(
                map['teachers'] as Iterable, (val) => val as int, <int>[]) ??
            getJserDefault('teacherIds'));
    return obj;
  }
}
