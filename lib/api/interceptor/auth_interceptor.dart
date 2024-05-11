import 'dart:async';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:templax/src/exports.dart_exporter.dart';

FutureOr<Request> authInterceptor(request) async {
  //request.headers['X-Requested-With'] = 'XMLHttpRequest';

  requestlLogger(request);
  return request;
}
