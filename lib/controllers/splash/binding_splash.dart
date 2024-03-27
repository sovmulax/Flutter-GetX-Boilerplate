import 'package:get/get.dart';
import 'package:templax/controllers/export.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
