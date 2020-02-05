import 'package:flutter_test/flutter_test.dart';
import 'package:nure_timetable/api/api_client.dart';
import 'package:nure_timetable/api/model/cist/events/timetable.dart';

void main() async {
  test("", () async {
    ApiClient apiClient = ApiClient(null);
    Timetable timetable = await apiClient.getCistTimetable();
    print(timetable.groups.length);
  });
}
