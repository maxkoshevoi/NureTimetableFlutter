import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:nure_timetable/models/enums/timetable_entity_type.dart';
import 'package:nure_timetable/res/strings.dart';

import 'cist_api_service.dart';
import 'model/cist/events/timetable.dart';
import 'model/request_error.dart';
import 'util/error_json_converter.dart';
import 'util/example_interceptor.dart';
import 'util/jaguar_json_converter.dart';

class ApiClient {
  final BuildContext context;

  ApiClient(this.context);

  static final ChopperClient chopper = ChopperClient(
    baseUrl: "http://cist.nure.ua",
    services: [
      CistApiService.create(),
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

  Future<Timetable> getCistTimetable() async {
    TimetableEntityType type = TimetableEntityType.Group;
    int entityId = 5721659;
    DateTime dateStart = onlyDate(DateTime.now().add(Duration(days: -30 * 6)));
    DateTime dateEnd = onlyDate(DateTime.now().add(Duration(days: 30 * 6)));

    int timeFrom = dateStart.toUtc().millisecondsSinceEpoch ~/ 1000;
    int timeTo = dateEnd.add(Duration(days: 1)).toUtc().millisecondsSinceEpoch ~/ 1000;

    Response<Timetable> response = await _callRequest(
      chopper.getService<CistApiService>().getCistTimetable(
            typeId: type.index,
            timetableId: entityId,
            timeFrom: timeFrom,
            timeTo: timeTo,
            apiKey: null,
          ),
    );
    return response.body;
  }

  DateTime onlyDate(DateTime a) {
    return DateTime(a.year, a.month, a.day);
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
