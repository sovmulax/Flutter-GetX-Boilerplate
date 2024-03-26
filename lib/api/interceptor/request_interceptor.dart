import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  // final token = StorageService.box.pull(StorageItems.accessToken);

  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  // request.headers['Authorization'] = 'Bearer $token';

  requestlLogger(request);
  return request;
}

void requestlLogger(Request request) {
  debugPrint('Url: ${request.method} ${request.url}\n');
}
