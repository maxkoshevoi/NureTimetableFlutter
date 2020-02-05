import 'package:jaguar_serializer/jaguar_serializer.dart';

class EpochSecondsProcessor implements FieldProcessor<DateTime, int> {
  const EpochSecondsProcessor();

  int serialize(DateTime value) {
    if (value == null) return null;
    return value.toUtc().millisecondsSinceEpoch ~/ 1000;
  }

  @override
  DateTime deserialize(int value) {
    if (value == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(value * 1000, isUtc: true).toLocal();
  }
}
