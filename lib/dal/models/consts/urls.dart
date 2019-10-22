import 'package:nure_timetable/models/enums/timetable_entity_type.dart';

import '../../../extensions/date-time.dart';

class Urls {
  static String CistEntityTimetableUrl(TimetableEntityType entity, int entityId, DateTime dateStart, DateTime dateEnd)
    => "http://cist.nure.ua/ias/app/tt/P_API_EVEN_JSON" +
        "?type_id=${entity.index}" +
        "&timetable_id=${entityId}" +
        "&time_from=${dateStart.Date.millisecondsSinceEpoch / 1000}" +
        "&time_to=${dateEnd.Date.add(Duration(days: 1)).millisecondsSinceEpoch / 1000}" +
        "&idClient=${Keys.CistApiKey}";

static String get CistAllGroupsUrl
    => "http://cist.nure.ua/ias/app/tt/P_API_GROUP_JSON";

static String get CistAllTeachersUrl
    => "http://cist.nure.ua/ias/app/tt/P_API_PODR_JSON";

static String get CistAllRoomsUrl
    => "http://cist.nure.ua/ias/app/tt/P_API_AUDITORIES_JSON";
}