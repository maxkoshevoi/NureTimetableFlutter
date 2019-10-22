extension DateTimeEx on DateTime {
  DateTime get Date => DateTime(this.year, this.month, this.day);
  Duration get Time => Duration(
    hours: this.hour, 
    minutes: this.minute, 
    seconds: this.second, 
    milliseconds: this.millisecond, 
    microseconds: this.microsecond);
}