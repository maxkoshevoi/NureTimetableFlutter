import 'package:jaguar_serializer/jaguar_serializer.dart';

import '../../models/json_serializers.dart';
import 'login_request.dart';
import 'register_request.dart';
import 'request_error.dart';

part 'api_json_serializers.jser.dart';

final serializerRepo = SerializerRepoImpl(serializers: [
  ...modelSerializerRepo.serializers,
  RequestErrorSerializer(),
  RegisterRequestSerializer(),
  LoginRequestSerializer(),
]);

@GenSerializer()
class RequestErrorSerializer extends Serializer<RequestError> with _$RequestErrorSerializer {}

@GenSerializer()
class RegisterRequestSerializer extends Serializer<RegisterRequest> with _$RegisterRequestSerializer {}

@GenSerializer()
class LoginRequestSerializer extends Serializer<LoginRequest> with _$LoginRequestSerializer {}
