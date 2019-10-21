import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:intl/intl.dart';
import 'package:nure_timetable/pages/settings_page/settings_bloc.dart';
import 'package:nure_timetable/pages/settings_page/settings_state.dart';

const double _topCellHeight = 52;

class TimetableView extends StatefulWidget {
  final int startWeekday;
  final int lessonPerDay;

  TimetableView({
    this.startWeekday = DateTime.monday,
    this.lessonPerDay = 7,
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
    return Column(
      children: [
        SizedBox(height: _topCellHeight),
        Expanded(
          child: Column(
            children: List.generate(widget.lessonPerDay, _buildTimeCell),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeCell(int index) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("${index}0:00"),
            Text("${index + 1}0:00"),
          ],
        ),
      ),
    );
  }

  Widget _buildTimetable() {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double timetableWidth = constraints.maxWidth;

          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
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
          SizedBox(
            height: _topCellHeight,
            child: _buildTimetableDayHeader(date),
          ),
          _buildTimetableColumnContent(date),
        ],
      ),
    );
  }

  Widget _buildTimetableDayHeader(DateTime date) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              DateFormat("d").format(date),
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              DateFormat("EEE").format(date),
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              DateFormat("MMM, y").format(date),
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimetableColumnContent(DateTime date) {
    return Expanded(
      child: Column(
        children: List.generate(
          widget.lessonPerDay,
          (int i) {
            Color cellColor = i % 2 == 0 ? Colors.grey : Colors.grey.shade100;

            return Expanded(
              child: Container(
                color: cellColor,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("$i"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
