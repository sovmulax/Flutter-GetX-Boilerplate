import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
