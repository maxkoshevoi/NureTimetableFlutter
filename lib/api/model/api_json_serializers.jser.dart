// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_json_serializers.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$RequestErrorSerializer implements Serializer<RequestError> {
  @override
  Map<String, dynamic> toMap(RequestError model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'code', model.code);
    setMapValue(ret, 'error', model.error);
    setMapValue(ret, 'data', passProcessor.serialize(model.data));
    return ret;
  }

  @override
  RequestError fromMap(Map map) {
    if (map == null) return null;
    final obj = RequestError(
        map['code'] as int ?? getJserDefault('code'),
        map['error'] as String ?? getJserDefault('error'),
        passProcessor.deserialize(map['data']) ?? getJserDefault('data'));
    return obj;
  }
}

abstract class _$RegisterRequestSerializer
    implements Serializer<RegisterRequest> {
  @override
  Map<String, dynamic> toMap(RegisterRequest model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'email', model.email);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'password', model.password);
    return ret;
  }

  @override
  RegisterRequest fromMap(Map map) {
    if (map == null) return null;
    final obj = RegisterRequest(
        map['email'] as String ?? getJserDefault('email'),
        map['name'] as String ?? getJserDefault('name'),
        map['password'] as String ?? getJserDefault('password'));
    return obj;
  }
}

abstract class _$LoginRequestSerializer implements Serializer<LoginRequest> {
  @override
  Map<String, dynamic> toMap(LoginRequest model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'email', model.email);
    setMapValue(ret, 'password', model.password);
    return ret;
  }

  @override
  LoginRequest fromMap(Map map) {
    if (map == null) return null;
    final obj = LoginRequest(map['email'] as String ?? getJserDefault('email'),
        map['password'] as String ?? getJserDefault('password'));
    return obj;
  }
}

abstract class _$EventSerializer implements Serializer<Event> {
  final _epochSecondsProcessor = const EpochSecondsProcessor();
  @override
  Map<String, dynamic> toMap(Event model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'subject_id', model.lessonId);
    setMapValueIfNotNull(
        ret, 'start_time', _epochSecondsProcessor.serialize(model.startTime));
    setMapValueIfNotNull(
        ret, 'end_time', _epochSecondsProcessor.serialize(model.endTime));
    setMapValueIfNotNull(ret, 'type', model.typeId);
    setMapValueIfNotNull(ret, 'number_pair', model.pairNumber);
    setMapValueIfNotNull(ret, 'auditory', model.room);
    setMapValueIfNotNull(ret, 'teachers',
        codeNonNullIterable(model.teacherIds, (val) => val as int, []));
    setMapValueIfNotNull(ret, 'groups',
        codeNonNullIterable(model.groupIds, (val) => val as int, []));
    return ret;
  }

  @override
  Event fromMap(Map map) {
    if (map == null) return null;
    final obj = Event(
        lessonId: map['subject_id'] as int ?? getJserDefault('lessonId'),
        startTime:
            _epochSecondsProcessor.deserialize(map['start_time'] as int) ??
                getJserDefault('startTime'),
        endTime: _epochSecondsProcessor.deserialize(map['end_time'] as int) ??
            getJserDefault('endTime'),
        typeId: map['type'] as int ?? getJserDefault('typeId'),
        pairNumber: map['number_pair'] as int ?? getJserDefault('pairNumber'),
        room: map['auditory'] as String ?? getJserDefault('room'),
        teacherIds: codeNonNullIterable<int>(
                map['teachers'] as Iterable, (val) => val as int, <int>[]) ??
            getJserDefault('teacherIds'),
        groupIds: codeNonNullIterable<int>(
                map['groups'] as Iterable, (val) => val as int, <int>[]) ??
            getJserDefault('groupIds'));
    return obj;
  }
}

abstract class _$EventTypeSerializer implements Serializer<EventType> {
  @override
  Map<String, dynamic> toMap(EventType model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(ret, 'id_base', model.baseTypeId);
    setMapValueIfNotNull(ret, 'type', model.englishBaseName);
    return ret;
  }

  @override
  EventType fromMap(Map map) {
    if (map == null) return null;
    final obj = EventType(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        baseTypeId: map['id_base'] as int ?? getJserDefault('baseTypeId'),
        englishBaseName:
            map['type'] as String ?? getJserDefault('englishBaseName'));
    return obj;
  }
}

abstract class _$LessonSerializer implements Serializer<Lesson> {
  Serializer<PlannedHours> __plannedHoursSerializer;
  Serializer<PlannedHours> get _plannedHoursSerializer =>
      __plannedHoursSerializer ??= PlannedHoursSerializer();
  @override
  Map<String, dynamic> toMap(Lesson model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'brief', model.shortName);
    setMapValueIfNotNull(ret, 'title', model.fullName);
    setMapValueIfNotNull(
        ret,
        'hours',
        codeNonNullIterable(model.duration,
            (val) => _plannedHoursSerializer.toMap(val as PlannedHours), []));
    return ret;
  }

  @override
  Lesson fromMap(Map map) {
    if (map == null) return null;
    final obj = Lesson(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['brief'] as String ?? getJserDefault('shortName'),
        fullName: map['title'] as String ?? getJserDefault('fullName'),
        duration: codeNonNullIterable<PlannedHours>(
                map['hours'] as Iterable,
                (val) => _plannedHoursSerializer.fromMap(val as Map),
                <PlannedHours>[]) ??
            getJserDefault('duration'));
    return obj;
  }
}

abstract class _$PlannedHoursSerializer implements Serializer<PlannedHours> {
  @override
  Map<String, dynamic> toMap(PlannedHours model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'type', model.eventTypeId);
    setMapValueIfNotNull(ret, 'val', model.hours);
    setMapValueIfNotNull(ret, 'teachers',
        codeNonNullIterable(model.teacherIds, (val) => val as int, []));
    return ret;
  }

  @override
  PlannedHours fromMap(Map map) {
    if (map == null) return null;
    final obj = PlannedHours(
        eventTypeId: map['type'] as int ?? getJserDefault('eventTypeId'),
        hours: map['val'] as int ?? getJserDefault('hours'),
        teacherIds: codeNonNullIterable<int>(
                map['teachers'] as Iterable, (val) => val as int, <int>[]) ??
            getJserDefault('teacherIds'));
    return obj;
  }
}

abstract class _$TimetableSerializer implements Serializer<Timetable> {
  Serializer<Event> __eventSerializer;
  Serializer<Event> get _eventSerializer =>
      __eventSerializer ??= EventSerializer();
  Serializer<Group> __groupSerializer;
  Serializer<Group> get _groupSerializer =>
      __groupSerializer ??= GroupSerializer();
  Serializer<Teacher> __teacherSerializer;
  Serializer<Teacher> get _teacherSerializer =>
      __teacherSerializer ??= TeacherSerializer();
  Serializer<Lesson> __lessonSerializer;
  Serializer<Lesson> get _lessonSerializer =>
      __lessonSerializer ??= LessonSerializer();
  Serializer<EventType> __eventTypeSerializer;
  Serializer<EventType> get _eventTypeSerializer =>
      __eventTypeSerializer ??= EventTypeSerializer();
  @override
  Map<String, dynamic> toMap(Timetable model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'time-zone', model.timeZone);
    setMapValueIfNotNull(
        ret,
        'events',
        codeNonNullIterable(
            model.events, (val) => _eventSerializer.toMap(val as Event), []));
    setMapValueIfNotNull(
        ret,
        'groups',
        codeNonNullIterable(
            model.groups, (val) => _groupSerializer.toMap(val as Group), []));
    setMapValueIfNotNull(
        ret,
        'teachers',
        codeNonNullIterable(model.teachers,
            (val) => _teacherSerializer.toMap(val as Teacher), []));
    setMapValueIfNotNull(
        ret,
        'subjects',
        codeNonNullIterable(model.lessons,
            (val) => _lessonSerializer.toMap(val as Lesson), []));
    setMapValueIfNotNull(
        ret,
        'types',
        codeNonNullIterable(model.eventTypes,
            (val) => _eventTypeSerializer.toMap(val as EventType), []));
    return ret;
  }

  @override
  Timetable fromMap(Map map) {
    if (map == null) return null;
    final obj = Timetable(
        timeZone: map['time-zone'] as String ?? getJserDefault('timeZone'),
        events: codeNonNullIterable<Event>(map['events'] as Iterable, (val) => _eventSerializer.fromMap(val as Map), <Event>[]) ??
            getJserDefault('events'),
        groups: codeNonNullIterable<Group>(map['groups'] as Iterable, (val) => _groupSerializer.fromMap(val as Map), <Group>[]) ??
            getJserDefault('groups'),
        teachers: codeNonNullIterable<Teacher>(map['teachers'] as Iterable,
                (val) => _teacherSerializer.fromMap(val as Map), <Teacher>[]) ??
            getJserDefault('teachers'),
        lessons: codeNonNullIterable<Lesson>(map['subjects'] as Iterable,
                (val) => _lessonSerializer.fromMap(val as Map), <Lesson>[]) ??
            getJserDefault('lessons'),
        eventTypes: codeNonNullIterable<EventType>(
                map['types'] as Iterable, (val) => _eventTypeSerializer.fromMap(val as Map), <EventType>[]) ??
            getJserDefault('eventTypes'));
    return obj;
  }
}

abstract class _$DirectionSerializer implements Serializer<Direction> {
  Serializer<Group> __groupSerializer;
  Serializer<Group> get _groupSerializer =>
      __groupSerializer ??= GroupSerializer();
  Serializer<Speciality> __specialitySerializer;
  Serializer<Speciality> get _specialitySerializer =>
      __specialitySerializer ??= SpecialitySerializer();
  @override
  Map<String, dynamic> toMap(Direction model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'groups',
        codeNonNullIterable(
            model.groups, (val) => _groupSerializer.toMap(val as Group), []));
    setMapValueIfNotNull(
        ret,
        'specialities',
        codeNonNullIterable(model.specialities,
            (val) => _specialitySerializer.toMap(val as Speciality), []));
    return ret;
  }

  @override
  Direction fromMap(Map map) {
    if (map == null) return null;
    final obj = Direction(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        groups: codeNonNullIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map), <Group>[]) ??
            getJserDefault('groups'),
        specialities: codeNonNullIterable<Speciality>(
                map['specialities'] as Iterable,
                (val) => _specialitySerializer.fromMap(val as Map),
                <Speciality>[]) ??
            getJserDefault('specialities'));
    return obj;
  }
}

abstract class _$GroupSerializer implements Serializer<Group> {
  @override
  Map<String, dynamic> toMap(Group model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'name', model.name);
    return ret;
  }

  @override
  Group fromMap(Map map) {
    if (map == null) return null;
    final obj = Group(
        id: map['id'] as int ?? getJserDefault('id'),
        name: map['name'] as String ?? getJserDefault('name'));
    return obj;
  }
}

abstract class _$SpecialitySerializer implements Serializer<Speciality> {
  Serializer<Group> __groupSerializer;
  Serializer<Group> get _groupSerializer =>
      __groupSerializer ??= GroupSerializer();
  @override
  Map<String, dynamic> toMap(Speciality model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'groups',
        codeNonNullIterable(
            model.groups, (val) => _groupSerializer.toMap(val as Group), []));
    return ret;
  }

  @override
  Speciality fromMap(Map map) {
    if (map == null) return null;
    final obj = Speciality(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        groups: codeNonNullIterable<Group>(map['groups'] as Iterable,
                (val) => _groupSerializer.fromMap(val as Map), <Group>[]) ??
            getJserDefault('groups'));
    return obj;
  }
}

abstract class _$BuildingSerializer implements Serializer<Building> {
  Serializer<Room> __roomSerializer;
  Serializer<Room> get _roomSerializer => __roomSerializer ??= RoomSerializer();
  @override
  Map<String, dynamic> toMap(Building model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'auditories',
        codeNonNullIterable(
            model.rooms, (val) => _roomSerializer.toMap(val as Room), []));
    return ret;
  }

  @override
  Building fromMap(Map map) {
    if (map == null) return null;
    final obj = Building(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        rooms: codeNonNullIterable<Room>(map['auditories'] as Iterable,
                (val) => _roomSerializer.fromMap(val as Map), <Room>[]) ??
            getJserDefault('rooms'));
    return obj;
  }
}

abstract class _$RoomSerializer implements Serializer<Room> {
  final _stringBoolReplaceProcessor = const StringBoolReplaceProcessor();
  Serializer<RoomType> __roomTypeSerializer;
  Serializer<RoomType> get _roomTypeSerializer =>
      __roomTypeSerializer ??= RoomTypeSerializer();
  @override
  Map<String, dynamic> toMap(Room model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValue(ret, 'floor', model.floor);
    setMapValue(ret, 'is_have_power',
        _stringBoolReplaceProcessor.serialize(model.isHavePower));
    setMapValueIfNotNull(
        ret,
        'auditory_types',
        codeNonNullIterable(model.roomTypes,
            (val) => _roomTypeSerializer.toMap(val as RoomType), []));
    return ret;
  }

  @override
  Room fromMap(Map map) {
    if (map == null) return null;
    final obj = Room(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        floor: map['floor'] as int ?? getJserDefault('floor'),
        isHavePower: _stringBoolReplaceProcessor
                .deserialize(map['is_have_power'] as String) ??
            getJserDefault('isHavePower'),
        roomTypes: codeNonNullIterable<RoomType>(
                map['auditory_types'] as Iterable,
                (val) => _roomTypeSerializer.fromMap(val as Map),
                <RoomType>[]) ??
            getJserDefault('roomTypes'));
    return obj;
  }
}

abstract class _$RoomTypeSerializer implements Serializer<RoomType> {
  @override
  Map<String, dynamic> toMap(RoomType model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    return ret;
  }

  @override
  RoomType fromMap(Map map) {
    if (map == null) return null;
    final obj = RoomType(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'));
    return obj;
  }
}

abstract class _$DepartmentSerializer implements Serializer<Department> {
  Serializer<Teacher> __teacherSerializer;
  Serializer<Teacher> get _teacherSerializer =>
      __teacherSerializer ??= TeacherSerializer();
  @override
  Map<String, dynamic> toMap(Department model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'teachers',
        codeNonNullIterable(model.teachers,
            (val) => _teacherSerializer.toMap(val as Teacher), []));
    return ret;
  }

  @override
  Department fromMap(Map map) {
    if (map == null) return null;
    final obj = Department(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        teachers: codeNonNullIterable<Teacher>(map['teachers'] as Iterable,
                (val) => _teacherSerializer.fromMap(val as Map), <Teacher>[]) ??
            getJserDefault('teachers'));
    return obj;
  }
}

abstract class _$TeacherSerializer implements Serializer<Teacher> {
  @override
  Map<String, dynamic> toMap(Teacher model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    return ret;
  }

  @override
  Teacher fromMap(Map map) {
    if (map == null) return null;
    final obj = Teacher(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'));
    return obj;
  }
}

abstract class _$FacultySerializer implements Serializer<Faculty> {
  Serializer<Department> __departmentSerializer;
  Serializer<Department> get _departmentSerializer =>
      __departmentSerializer ??= DepartmentSerializer();
  Serializer<Direction> __directionSerializer;
  Serializer<Direction> get _directionSerializer =>
      __directionSerializer ??= DirectionSerializer();
  @override
  Map<String, dynamic> toMap(Faculty model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'departments',
        codeNonNullIterable(model.departments,
            (val) => _departmentSerializer.toMap(val as Department), []));
    setMapValueIfNotNull(
        ret,
        'directions',
        codeNonNullIterable(model.directions,
            (val) => _directionSerializer.toMap(val as Direction), []));
    return ret;
  }

  @override
  Faculty fromMap(Map map) {
    if (map == null) return null;
    final obj = Faculty(
        id: map['id'] as int ?? getJserDefault('id'),
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        departments: codeNonNullIterable<Department>(
                map['departments'] as Iterable,
                (val) => _departmentSerializer.fromMap(val as Map),
                <Department>[]) ??
            getJserDefault('departments'),
        directions: codeNonNullIterable<Direction>(
                map['directions'] as Iterable,
                (val) => _directionSerializer.fromMap(val as Map),
                <Direction>[]) ??
            getJserDefault('directions'));
    return obj;
  }
}

abstract class _$UniversitySerializer implements Serializer<University> {
  Serializer<Faculty> __facultySerializer;
  Serializer<Faculty> get _facultySerializer =>
      __facultySerializer ??= FacultySerializer();
  Serializer<Building> __buildingSerializer;
  Serializer<Building> get _buildingSerializer =>
      __buildingSerializer ??= BuildingSerializer();
  @override
  Map<String, dynamic> toMap(University model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'short_name', model.shortName);
    setMapValueIfNotNull(ret, 'full_name', model.fullName);
    setMapValueIfNotNull(
        ret,
        'faculties',
        codeNonNullIterable(model.faculties,
            (val) => _facultySerializer.toMap(val as Faculty), []));
    setMapValueIfNotNull(
        ret,
        'buildings',
        codeNonNullIterable(model.buildings,
            (val) => _buildingSerializer.toMap(val as Building), []));
    return ret;
  }

  @override
  University fromMap(Map map) {
    if (map == null) return null;
    final obj = University(
        shortName: map['short_name'] as String ?? getJserDefault('shortName'),
        fullName: map['full_name'] as String ?? getJserDefault('fullName'),
        faculties: codeNonNullIterable<Faculty>(map['faculties'] as Iterable,
                (val) => _facultySerializer.fromMap(val as Map), <Faculty>[]) ??
            getJserDefault('faculties'),
        buildings: codeNonNullIterable<Building>(
                map['buildings'] as Iterable,
                (val) => _buildingSerializer.fromMap(val as Map),
                <Building>[]) ??
            getJserDefault('buildings'));
    return obj;
  }
}

abstract class _$UniversityRootObjectSerializer
    implements Serializer<UniversityRootObject> {
  Serializer<University> __universitySerializer;
  Serializer<University> get _universitySerializer =>
      __universitySerializer ??= UniversitySerializer();
  @override
  Map<String, dynamic> toMap(UniversityRootObject model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(
        ret, 'university', _universitySerializer.toMap(model.university));
    return ret;
  }

  @override
  UniversityRootObject fromMap(Map map) {
    if (map == null) return null;
    final obj = UniversityRootObject(
        university: _universitySerializer.fromMap(map['university'] as Map) ??
            getJserDefault('university'));
    return obj;
  }
}
