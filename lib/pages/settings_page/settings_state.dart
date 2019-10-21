import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SettingsState extends Equatable {
  final ThemeData themeData;
  final int daysPerPage;

  SettingsState({
    @required this.themeData,
    @required this.daysPerPage,
  });

  SettingsState copyWith({
    ThemeData themeData,
    int daysPerPage,
  }) {
    return SettingsState(
      themeData: themeData ?? this.themeData,
      daysPerPage: daysPerPage ?? this.daysPerPage,
    );
  }

  @override
  List<Object> get props => [themeData, daysPerPage];
}
