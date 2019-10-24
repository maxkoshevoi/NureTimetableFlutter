// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_hours.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PlannedHoursSerializer implements Serializer<PlannedHours> {
  @override
  Map<String, dynamic> toMap(PlannedHours model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'type', model.eventTypeId);
    setMapValueIfNotNull(ret, 'val', model.hours);
    setMapValueIfNotNull(
        ret, 'teachers', codeNonNullIterable(model.teacherIds, (val) => val as int, []));
    return ret;
  }

  @override
  PlannedHours fromMap(Map map) {
    if (map == null) return null;
    final obj = PlannedHours(
        eventTypeId: map['type'] as int ?? getJserDefault('eventTypeId'),
        hours: map['val'] as int ?? getJserDefault('hours'),
        teacherIds:
            codeNonNullIterable<int>(map['teachers'] as Iterable, (val) => val as int, <int>[]) ??
                getJserDefault('teacherIds'));
    return obj;
  }
}
