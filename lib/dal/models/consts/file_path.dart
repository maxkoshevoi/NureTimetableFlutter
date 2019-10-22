import 'dart:io';

import 'package:nure_timetable/models/enums/timetable_entity_type.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class FilePath {
  static Future<String> get LocalStorage async 
  {
    Directory dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  static Future<String> SavedTimetable(TimetableEntityType type, int entityId) async =>
      path.join(await LocalStorage, "timetable_${type.index}_${entityId}.json");
  
  //#region Entities
  static Future<String> get SavedEntitiesList async =>
      path.join(await LocalStorage, "entities_saved.json");

  static Future<String> get SelectedEntities async =>
      path.join(await LocalStorage, "entities_selected.json");

  static Future<String> get UniversityEntities async =>
      path.join(await LocalStorage, "university_entities.json");

  static Future<String> get LastCistAllEntitiesUpdate async =>
      path.join(await LocalStorage, "last_all_entities_update.json");
  //#endregion

  static Future<String> get AppSettings async =>
      path.join(await LocalStorage, "app_settings.json");
}