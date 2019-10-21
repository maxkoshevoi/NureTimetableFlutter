import 'package:flutter/material.dart';

class EventType {
  final int id;
  final String shortName;
  final String fullName;
  final int baseTypeId;
  final String englishBaseName;

  EventType({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.baseTypeId,
    @required this.englishBaseName,
  });

  @override
  bool operator ==(other) => other != null && other is EventType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
