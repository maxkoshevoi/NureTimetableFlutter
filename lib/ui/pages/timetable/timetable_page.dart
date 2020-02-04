import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nure_timetable/architecture/utils/async_stream_builder.dart';
import 'package:nure_timetable/models/dto/timetable_dto.dart';
import 'package:nure_timetable/models/models.dart';
import 'package:nure_timetable/res/strings.dart';
import 'package:nure_timetable/ui/pages/about/about_page.dart';
import 'package:nure_timetable/ui/pages/settings_page/settings_page.dart';
import 'package:nure_timetable/ui/pages/timetable/timetable_page_bloc.dart';

import 'views/timetable_view.dart';

class TimetablePage extends StatefulWidget {
  @override
  _TimetablePageState createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
  TimetablePageBloc _bloc = BlocProvider.getBloc<TimetablePageBloc>();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  void _onEventTap(Event event) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8), child: Text(event.lesson.fullName)),
                  Padding(padding: EdgeInsets.all(8), child: Text(event.type.fullName)),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      DateFormat("HH:mm").format(event.start) + " - " + DateFormat("HH:mm").format(event.end),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.current().timetable),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          )
        ],
      ),
      body: AsyncStreamBuilder<void>(
        _bloc.timetableSubject,
        successBuilder: (_, state) {
          return TimetableView(
            timetableDto: _createTimetableDtoMock(),
            eventClickListener: _onEventTap,
          );
        },
      ),
    );
  }
}

Lesson _createLessonMock() {
  return Lesson(id: 1, shortName: "ML", fullName: "My Lesson");
}

EventType _createEventTypeLectureMock() {
  return EventType(
    id: 1,
    shortName: "Lc",
    fullName: "Lecture",
    baseTypeId: 1,
    englishBaseName: "lc",
  );
}

EventType _createEventTypePracticeMock() {
  return EventType(
    id: 2,
    shortName: "Pr",
    fullName: "Practice",
    baseTypeId: 2,
    englishBaseName: "pr",
  );
}

TimetableDto _createTimetableDtoMock() {
  return TimetableDto(
    baseEntity: BaseEntity(id: 1, shortName: "Short", fullName: "Full"),
    events: [
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypeLectureMock(),
        roomName: "1",
        pairNumber: 1,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 7, 45),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 20),
        groups: [],
        teachers: [],
      ),
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypePracticeMock(),
        roomName: "1",
        pairNumber: 2,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 30),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 11, 05),
        groups: [],
        teachers: [],
      ),
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypeLectureMock(),
        roomName: "1",
        pairNumber: 3,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 11, 15),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 12, 50),
        groups: [],
        teachers: [],
      ),
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypePracticeMock(),
        roomName: "1",
        pairNumber: 4,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 10),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 14, 45),
        groups: [],
        teachers: [],
      ),
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypePracticeMock(),
        roomName: "1",
        pairNumber: 5,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 14, 55),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 16, 30),
        groups: [],
        teachers: [],
      ),
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypeLectureMock(),
        roomName: "1",
        pairNumber: 6,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 16, 40),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 18, 15),
        groups: [],
        teachers: [],
      ),
      Event(
        lesson: _createLessonMock(),
        type: _createEventTypeLectureMock(),
        roomName: "1",
        pairNumber: 7,
        start: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 18, 25),
        end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 20, 00),
        groups: [],
        teachers: [],
      ),
    ],
    lessons: [
      _createLessonMock(),
    ],
  );
}
