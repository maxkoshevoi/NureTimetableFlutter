extension DateTimeEx on DateTime {
  DateTime get date => DateTime(this.year, this.month, this.day);
  Duration get time => Duration(
    hours: this.hour, 	
    minutes: this.minute, 	
    seconds: this.second, 	
    milliseconds: this.millisecond, 	
    microseconds: this.microsecond);
}
