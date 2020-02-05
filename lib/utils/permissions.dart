import 'package:permission_handler/permission_handler.dart';

bool hasNotGrantedPermissions(Map<PermissionGroup, PermissionStatus> map) {
  return map.values.where((status) {
    return status != PermissionStatus.granted;
  }).isNotEmpty;
}
