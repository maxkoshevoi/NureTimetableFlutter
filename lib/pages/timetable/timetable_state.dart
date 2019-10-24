import 'package:equatable/equatable.dart';
import 'package:nure_timetable/models/dto/timetable_dto.dart';

abstract class TimetableState extends Equatable {
  const TimetableState();

  @override
  List<Object> get props => [];
}

class TimetableEmpty extends TimetableState {}

class TimetableLoaded extends TimetableState {
  final TimetableDto timetableDto;

  const TimetableLoaded(this.timetableDto);

  @override
  List<Object> get props => [timetableDto];
}
