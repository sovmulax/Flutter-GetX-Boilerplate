import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:templax/src/exports.dart_exporter.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  responseLogger(response);
  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }

  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      final message = ErrorResponse.fromJson(response.body);
      CustomSnack.errorSnackBar(message: message.error);
      break;
    default:
  }

  return;
}

void responseLogger(Response response) {
  logInfo('Status Code: ${response.statusCode}\n');
  logInfo('Data: ${response.bodyString?.toString() ?? ''}');
}
