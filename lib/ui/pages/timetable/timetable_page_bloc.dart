import 'package:nure_timetable/api/api_client.dart';
import 'package:nure_timetable/architecture/base/base_bloc.dart';
import 'package:nure_timetable/architecture/utils/states.dart';
import 'package:nure_timetable/models/dto/timetable_dto.dart';
import 'package:rxdart/rxdart.dart';

class TimetablePageBloc extends BaseBloc {
  final ApiClient apiClient;

  TimetablePageBloc(this.apiClient);

  final timetableSubject = BehaviorSubject<AsyncState<TimetableDto>>();

  void loadTimeTable() {
    makeCallForSubject(
      timetableSubject,
      () async {
//        return apiClient.getCistTimetable();
        return null;
      },
    );
  }

  @override
  void dispose() {
    timetableSubject.close();
    super.dispose();
  }
}
