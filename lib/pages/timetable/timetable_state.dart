import 'package:equatable/equatable.dart';

abstract class TimetableState extends Equatable {
  const TimetableState();

  @override
  List<Object> get props => [];
}

class TimetableEmpty extends TimetableState {}
