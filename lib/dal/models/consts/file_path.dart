import 'dart:io';

import 'package:nure_timetable/models/enums/timetable_entity_type.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class FilePath {
  static Future<String> get localStorage async 
  {
    Directory dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  static Future<String> savedTimetable(TimetableEntityType type, int entityId) async =>
      path.join(await localStorage, "timetable_${type.index}_${entityId}.json");
  
  //#region Entities
  static Future<String> get savedEntitiesList async =>
      path.join(await localStorage, "entities_saved.json");

  static Future<String> get selectedEntities async =>
      path.join(await localStorage, "entities_selected.json");

  static Future<String> get universityEntities async =>
      path.join(await localStorage, "university_entities.json");

  static Future<String> get lastCistAllEntitiesUpdate async =>
      path.join(await localStorage, "last_all_entities_update.json");
  //#endregion

  static Future<String> get appSettings async =>
      path.join(await localStorage, "app_settings.json");
}