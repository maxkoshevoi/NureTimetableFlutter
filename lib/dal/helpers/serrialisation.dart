import 'package:jaguar_serializer/jaguar_serializer.dart';

class SwapProcessor<FromType> implements FieldProcessor<FromType, String> {
  final Map<String, FromType> _replacementValues;

  const SwapProcessor(this._replacementValues);

  FromType deserialize(String input) {
    if (input == null || !_replacementValues.containsKey(input))
    {
        return null;
    }
    return _replacementValues[input];
  }

  String serialize(FromType value) {
    String newValue = _replacementValues.keys.firstWhere((x) => _replacementValues[x] == value, orElse: null);
    return newValue;
  }
}