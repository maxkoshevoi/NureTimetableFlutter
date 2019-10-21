import 'package:equatable/equatable.dart';

class SettingsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ToggleThemeEvent extends SettingsEvent {}

class ChangeDaysPerPageEvent extends SettingsEvent {
  final int daysPerPage;

  ChangeDaysPerPageEvent(this.daysPerPage);

  @override
  List<Object> get props => [daysPerPage];
}
