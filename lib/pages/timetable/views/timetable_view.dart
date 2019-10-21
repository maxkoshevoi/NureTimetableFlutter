import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:intl/intl.dart';
import 'package:nure_timetable/models/models.dart';
import 'package:nure_timetable/pages/settings_page/settings_bloc.dart';
import 'package:nure_timetable/pages/settings_page/settings_state.dart';
import 'package:nure_timetable/pages/timetable/views/separated_column.dart';

const double _topCellHeight = 52;
const double _separatorHeight = 8;

typedef EventClickListener = void Function(Event event);

class TimetableView extends StatefulWidget {
  final TimetableDto timetableDto;
  final EventClickListener eventClickListener;
  final int startWeekday;

  TimetableView({
    @required this.timetableDto,
    @required this.eventClickListener,
    this.startWeekday = DateTime.monday,
  });

  @override
  _TimetableViewState createState() => _TimetableViewState();
}

class _TimetableViewState extends State<TimetableView> {
  final DateTime _anchor = DateTime.now();

  InfiniteScrollController _controller = InfiniteScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Event> _getTimeEvents() {
    List<Event> distinctEvents = List.from(widget.timetableDto.events);
    distinctEvents.sort((event1, event2) => event1.start.compareTo(event2.start));
    return distinctEvents;
  }

  int get lessonPerDay => _getTimeEvents().length;

  Event _getEventByStartDateTime(DateTime date) {
    return widget.timetableDto.events.firstWhere((event) {
      return event.start.year == date.year &&
          event.start.month == date.month &&
          event.start.day == date.day &&
          event.start.hour == date.hour &&
          event.start.minute == date.minute;
    }, orElse: () => null);
  }

  Color _getEventTypeColor(EventType eventType) {
    return eventType?.baseTypeId == 1 ? Colors.yellow.shade700 : Colors.green.shade500;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildTimeColumn(),
        _buildTimetable(),
      ],
    );
  }

  Widget _buildTimeColumn() {
    return IntrinsicWidth(
      child: Column(
        children: [
          Container(
            height: _topCellHeight,
            color: Colors.grey.shade200,
          ),
          Expanded(
            child: SeparatedColumn(
              itemCount: lessonPerDay,
              builder: _buildTimeCell,
              separatorBuilder: _buildTimeSeparator,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeCell(BuildContext context, int index) {
    Event currentTimeCellEvent = _getTimeEvents()[index];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(DateFormat("HH:mm").format(currentTimeCellEvent.start)),
          Text(DateFormat("HH:mm").format(currentTimeCellEvent.end)),
        ],
      ),
    );
  }

  Widget _buildTimeSeparator(BuildContext context) {
    return Container(height: _separatorHeight, color: Colors.grey.shade200);
  }

  Widget _buildTimetable() {
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double timetableWidth = constraints.maxWidth;

          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (BuildContext context, SettingsState state) {
              double dayItemWidth = timetableWidth / state.daysPerPage;

              return InfiniteListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int dayAnchorOffset) {
                  DateTime currentDate = _anchor.add(Duration(days: dayAnchorOffset));

                  return _buildTimetableDay(dayItemWidth, currentDate);
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildTimetableDay(double width, DateTime date) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: _topCellHeight,
            width: double.infinity,
            color: Colors.grey.shade200,
            child: _buildTimetableDayHeader(date),
          ),
          Expanded(
            child: SeparatedColumn(
              itemCount: lessonPerDay,
              builder: (context, i) => _buildTimetableColumnCell(context, i, date),
              separatorBuilder: _buildDaySeparator,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimetableDayHeader(DateTime date) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(DateFormat("d").format(date), style: TextStyle(fontSize: 16)),
            Text(DateFormat("EEE").format(date), style: TextStyle(fontSize: 14)),
            Text(DateFormat("MMM, y").format(date), style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _buildTimetableColumnCell(BuildContext context, int index, DateTime date) {
    DateTime startTime = _getTimeEvents()[index].start;
    DateTime eventStartTime = DateTime(
      date.year,
      date.month,
      date.day,
      startTime.hour,
      startTime.minute,
    );
    Event event = _getEventByStartDateTime(eventStartTime);

    return event == null ? Container() : _buildEvent(event);
  }

  Widget _buildEvent(Event event) {
    return GestureDetector(
      onTap: () => widget.eventClickListener(event),
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: _getEventTypeColor(event?.type),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(event.lesson.shortName),
                  Text(event.type.shortName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDaySeparator(BuildContext context) {
    return Container(height: _separatorHeight, color: Colors.grey.shade200);
  }
}
