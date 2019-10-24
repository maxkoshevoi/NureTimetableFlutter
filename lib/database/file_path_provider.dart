import 'dart:io';

import 'package:nure_timetable/models/enums/timetable_entity_type.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class FilePathProvider {
  static Future<String> get localStoragePath async {
    Directory directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<String> getSavedTimetablePath(TimetableEntityType type, int entityId) async =>
      path.join(await localStoragePath, "timetable_${type.index}_${entityId}.json");

  static Future<String> get savedEntitiesListPath async =>
      path.join(await localStoragePath, "entities_saved.json");

  static Future<String> get selectedEntitiesPath async =>
      path.join(await localStoragePath, "entities_selected.json");

  static Future<String> get universityEntitiesPath async =>
      path.join(await localStoragePath, "university_entities.json");

  static Future<String> get lastCistAllEntitiesUpdatePath async =>
      path.join(await localStoragePath, "last_all_entities_update.json");

  static Future<String> get appSettingsPath async =>
      path.join(await localStoragePath, "app_settings.json");
}
