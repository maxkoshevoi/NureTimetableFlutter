import 'package:chopper/chopper.dart';
import 'package:nure_timetable/api/serialization/jaguar_json_serializer.dart';
import 'package:nure_timetable/models/enums/timetable_entity_type.dart';

import 'cist_api_service.dart';
import 'models/cist/events/timetable.dart';

class ApiClient {
  final chopper = ChopperClient(
    baseUrl: "http://cist.nure.ua",
    services: [
      CistApiService.create(),
    ],
    converter: JaguarJsonConverter(),
  );

  ApiClient();

  Future<Timetable> getCistTimetable() async {
    TimetableEntityType type = TimetableEntityType.Group;
    int entityId = 5721659;
    DateTime dateStart = asd(DateTime.now().add(Duration(days: -30 * 6)));
    DateTime dateEnd = asd(DateTime.now().add(Duration(days: 30 * 6)));

    int timeFrom = dateStart.toUtc().millisecondsSinceEpoch ~/ 1000;
    int timeTo = dateEnd.add(Duration(days: 1)).toUtc().millisecondsSinceEpoch ~/ 1000;

    Response<Timetable> response = await chopper.getService<CistApiService>().getCistTimetable(
          typeId: type.index,
          timetableId: entityId,
          timeFrom: timeFrom,
          timeTo: timeTo,
          apiKey: null,
        );
    return response.body;
  }

  DateTime asd(DateTime a) {
    return DateTime(a.year, a.month, a.day);
  }
}
