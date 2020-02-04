import 'dart:async';

import 'package:nure_timetable/api/api_client.dart';
import 'package:nure_timetable/architecture/base/base_bloc.dart';
import 'package:nure_timetable/architecture/utils/states.dart';
import 'package:nure_timetable/utils/permissions.dart';
import 'package:nure_timetable/utils/storage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

const _splashDuration = Duration(seconds: 1);
const List<PermissionGroup> _neededPermissions = [
//  PermissionGroup.photos,
//  PermissionGroup.mediaLibrary,
//  PermissionGroup.camera,
  PermissionGroup.storage,
//  PermissionGroup.speech,
//  PermissionGroup.location,
//  PermissionGroup.microphone,
];

enum InitResult { NoPermissions, Authorized }

class SplashPageBloc extends BaseBloc {
  final ApiClient apiClient;

  SplashPageBloc(this.apiClient);

  final splashResultSubject = BehaviorSubject<AsyncState<InitResult>>();

  void initializeApp() async {
    splashResultSubject.add(LoadingState());

    await Storage().initializeLanguage();
    await Storage().initializePath();

    _checkPermissions(_neededPermissions);
  }

  void _checkPermissions(List<PermissionGroup> permissions, {int deepLevel = 0}) async {
    final initialPermissionsResult = await PermissionHandler().requestPermissions(permissions);
    final isNotGranted = hasNotGrantedPermissions(initialPermissionsResult);

    if (deepLevel >= 3) {
      splashResultSubject.add(SuccessState(InitResult.NoPermissions));
    } else if (isNotGranted) {
      _checkPermissions(permissions, deepLevel: ++deepLevel);
    } else {
      _startApp();
    }
  }

  void _startApp() async {
    await Future.delayed(_splashDuration);
    splashResultSubject.add(SuccessState(InitResult.Authorized));
  }

  @override
  void dispose() {
    splashResultSubject.close();
    super.dispose();
  }
}
