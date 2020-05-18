import 'package:nure_timetable/models/enums/timetable_entity_type.dart';
import 'package:nure_timetable/utils/storage.dart';
import 'package:path/path.dart' as path;

class FilePathProvider {
  static String get _path => Storage().documentsDirectoryPath;

  static String getSavedTimetablePath(TimetableEntityType type, int entityId) =>
      path.join(_path, "timetable_${type.index}_$entityId.json");

  static String get savedEntitiesListPath => path.join(_path, "entities_saved.json");

  static String get selectedEntitiesPath => path.join(_path, "entities_selected.json");

  static String get universityEntitiesPath => path.join(_path, "university_entities.json");

  static String get lastCistAllEntitiesUpdatePath => path.join(_path, "last_all_entities_update.json");

  static String get appSettingsPath => path.join(_path, "app_settings.json");
}
