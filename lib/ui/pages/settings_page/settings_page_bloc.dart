import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:nure_timetable/architecture/utils/states.dart';
import 'package:rxdart/rxdart.dart';

class SettingsPageBloc extends BlocBase {
  final settingsSubject = BehaviorSubject<AsyncState<void>>.seeded(SuccessState.empty());

  @override
  void dispose() {
    settingsSubject.close();
    super.dispose();
  }
}
