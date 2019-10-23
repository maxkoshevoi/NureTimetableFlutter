import 'package:jaguar_serializer/jaguar_serializer.dart';
import '../models.dart';

part 'room.jser.dart';

class Room {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("floor")
  final int floor;

  @Alias("is_have_power")
  //[JsonConverter(typeof(StringBoolConverter))]
  final bool isHavePower;

  @Alias("auditory_types")
  final List<RoomType> roomTypes;

  const Room(this.id, this.shortName, this.floor, this.isHavePower, this.roomTypes);
}

@GenSerializer(
  serializers: [RoomTypeSerializer],
)
class RoomSerializer extends Serializer<Room> with _$RoomSerializer {}


// internal class StringBoolConverter: JsonConverter
// {
//     private readonly Dictionary<string, bool> replacementValues = new Dictionary<string, bool> { { "1", true }, { "0", false } };

//     public override bool CanConvert(Type t) => t == typeof(bool?) || t == typeof(bool);

//     public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
//     {
//         string key = (string)reader.Value;
//         if (key == null || !replacementValues.ContainsKey(key))
//         {
//             return null;
//         }
//         return replacementValues[key];
//     }

//     public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
//     {
//         string newValue = replacementValues.FirstOrDefault(x => x.Value.Equals(value)).Key;
//         serializer.Serialize(writer, newValue);
//     }
// }