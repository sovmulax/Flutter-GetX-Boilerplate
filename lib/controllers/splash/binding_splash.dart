import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
