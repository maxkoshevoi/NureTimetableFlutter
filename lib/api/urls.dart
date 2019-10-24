import 'package:nure_timetable/models/enums/timetable_entity_type.dart';

class Urls {
  static String getCistEntityTimetableUrl(
    TimetableEntityType entity,
    int entityId,
    DateTime dateStart,
    DateTime dateEnd,
  ) {
    int timeFrom = dateStart.toUtc().millisecondsSinceEpoch ~/ 1000;
    int timeTo = dateEnd.add(Duration(days: 1)).toUtc().millisecondsSinceEpoch ~/ 1000;

    return "http://cist.nure.ua/ias/app/tt/P_API_EVEN_JSON" +
        "?type_id=${entity.index}" +
        "&timetable_id=$entityId" +
        "&time_from=$timeFrom" +
        "&time_to=$timeTo" +
        "&idClient=Keys.CistApiKey";
  }

  static String get cistAllGroupsUrl => "http://cist.nure.ua/ias/app/tt/P_API_GROUP_JSON";

  static String get cistAllTeachersUrl => "http://cist.nure.ua/ias/app/tt/P_API_PODR_JSON";

  static String get cistAllRoomsUrl => "http://cist.nure.ua/ias/app/tt/P_API_AUDITORIES_JSON";
}
