import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:nure_timetable/res/strings.dart';

import 'api_strings.dart';
import 'model/login_request.dart';
import 'model/register_request.dart';
import 'model/request_error.dart';
import 'util/error_json_converter.dart';
import 'util/example_interceptor.dart';
import 'util/jaguar_json_converter.dart';

class ApiClient {
  final BuildContext context;

  ApiClient(this.context);

  static final ChopperClient chopper = ChopperClient(
    baseUrl: baseUrl,
    services: [
//      ApiService.create(),
    ],
    converter: JaguarJsonConverter(),
    errorConverter: ErrorJsonConverter(),
    interceptors: [
      ExampleInterceptor(),
      HttpLoggingInterceptor(),
    ],
  );

//  static final apiService = chopper.getService<ApiService>();

//  Future<Response<String>> getExampleString(String token) {
//    return _callRequest(apiService.getExampleString(token));
//  }

  ///
  /// Data API
  ///

  //TODO add API
  Future<String> register(RegisterRequest request) async {
    await Future.delayed(Duration(seconds: 2));
    return request.email;
  }

  //TODO add API
  Future<String> login(LoginRequest request) async {
    await Future.delayed(Duration(seconds: 2));
    return request.email;
  }

  ///
  /// General
  ///

  Future<Response<T>> _callRequest<T>(Future<Response<T>> apiCall) async {
    try {
      Response<T> res = await apiCall;
      return res;
    } on Response catch (errorResponse) {
      return Future.error(RequestError(
        errorResponse.statusCode,
        errorResponse.body,
        errorResponse,
      ));
    } catch (exception) {
      if (exception is SocketException) {
        return Future.error(RequestError(
          -1,
          Strings.current().textNoInternet,
          exception,
        ));
      } else {
        return Future.error(RequestError(
          -1,
          exception.toString(),
          exception,
        ));
      }
    }
  }
}
