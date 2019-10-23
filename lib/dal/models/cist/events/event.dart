import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'event.jser.dart';

class Event {
  @Alias("subject_id")
  final int lessonId;

  @Alias("start_time")
  //[JsonConverter(typeof(SecondEpochConverter))]
  final DateTime startTime;

  @Alias("end_time")
  //[JsonConverter(typeof(SecondEpochConverter))]
  final DateTime endTime;

  @Alias("type")
  final int typeId;

  @Alias("number_pair")
  final int pairNumber;

  @Alias("auditory")
  final String room;

  @Alias("teachers")
  final List<int> teacherIds;

  @Alias("groups")
  final List<int> groupIds;

  const Event(
    this.lessonId, 
    this.startTime, 
    this.endTime, 
    this.typeId, 
    this.pairNumber, 
    this.room, 
    this.teacherIds, 
    this.groupIds
  );
}

@GenSerializer()
class EventSerializer extends Serializer<Event> with _$EventSerializer {}


// internal class SecondEpochConverter : DateTimeConverterBase
// {
//     private static readonly DateTime _epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);

//     public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
//     {
//         if (reader.TokenType == JsonToken.Null)
//         {
//             return null;
//         }
//         return _epoch.AddSeconds((long)reader.Value);
//     }

//     public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
//     {
//         writer.WriteRawValue(((DateTime)value - _epoch).TotalSeconds.ToString());
//     }
// }