import 'package:flutter/material.dart';

class BaseEntity<T extends Comparable> {
  final T id;
  final String shortName;
  final String fullName;

  BaseEntity({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
  });
}
