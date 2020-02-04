// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_json_serializers.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$RequestErrorSerializer implements Serializer<RequestError> {
  @override
  Map<String, dynamic> toMap(RequestError model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'code', model.code);
    setMapValue(ret, 'error', model.error);
    setMapValue(ret, 'data', passProcessor.serialize(model.data));
    return ret;
  }

  @override
  RequestError fromMap(Map map) {
    if (map == null) return null;
    final obj = RequestError(
        map['code'] as int ?? getJserDefault('code'),
        map['error'] as String ?? getJserDefault('error'),
        passProcessor.deserialize(map['data']) ?? getJserDefault('data'));
    return obj;
  }
}

abstract class _$RegisterRequestSerializer
    implements Serializer<RegisterRequest> {
  @override
  Map<String, dynamic> toMap(RegisterRequest model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'email', model.email);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'password', model.password);
    return ret;
  }

  @override
  RegisterRequest fromMap(Map map) {
    if (map == null) return null;
    final obj = RegisterRequest(
        map['email'] as String ?? getJserDefault('email'),
        map['name'] as String ?? getJserDefault('name'),
        map['password'] as String ?? getJserDefault('password'));
    return obj;
  }
}

abstract class _$LoginRequestSerializer implements Serializer<LoginRequest> {
  @override
  Map<String, dynamic> toMap(LoginRequest model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'email', model.email);
    setMapValue(ret, 'password', model.password);
    return ret;
  }

  @override
  LoginRequest fromMap(Map map) {
    if (map == null) return null;
    final obj = LoginRequest(map['email'] as String ?? getJserDefault('email'),
        map['password'] as String ?? getJserDefault('password'));
    return obj;
  }
}
