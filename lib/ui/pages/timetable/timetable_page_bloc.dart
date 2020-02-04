import 'package:nure_timetable/architecture/base/base_bloc.dart';
import 'package:nure_timetable/architecture/utils/states.dart';
import 'package:rxdart/rxdart.dart';

class TimetablePageBloc extends BaseBloc {
  TimetablePageBloc();

  final timetableSubject = BehaviorSubject<AsyncState<void>>.seeded(SuccessState.empty());

  @override
  void dispose() {
    timetableSubject.close();
    super.dispose();
  }
}
