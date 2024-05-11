import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:templax/src/exports.dart_exporter.dart';

FutureOr<Request> requestInterceptor(request) async {
  final token = AppSession.getAccessToken();

  request.headers['X-Requested-With'] = 'XMLHttpRequest';
  request.headers['Authorization'] = 'Bearer $token';

  requestlLogger(request);
  return request;
}

void requestlLogger(Request request) {
  logInfo('Url: ${request.method} ${request.url}\n');
}
