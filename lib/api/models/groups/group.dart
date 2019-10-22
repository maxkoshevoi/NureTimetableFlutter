import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import '../models.dart';

part 'group.jser.dart';

class Group {
  @Alias("id")
  final int id;

  @Alias("name")
  final String name;

  const Group(this.id, this.name);
}

@GenSerializer()
class GroupSerializer extends Serializer<Group> with _$GroupSerializer {}
