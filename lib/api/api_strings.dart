const String baseUrl = "https://localhost/";

const Map<String, String> defaultRawHeaders = {
  "Content-Type": "application/x-www-form-urlencoded",
  "Accept": "application/json",
};

const Map<String, String> defaultJsonHeaders = {
  "Content-Type": "application/json",
  "Accept": "application/json",
  "Accept-Language": "en",
};

String get cistAllGroupsUrl => "http://cist.nure.ua/ias/app/tt/P_API_GROUP_JSON";

String get cistAllTeachersUrl => "http://cist.nure.ua/ias/app/tt/P_API_PODR_JSON";

String get cistAllRoomsUrl => "http://cist.nure.ua/ias/app/tt/P_API_AUDITORIES_JSON";
