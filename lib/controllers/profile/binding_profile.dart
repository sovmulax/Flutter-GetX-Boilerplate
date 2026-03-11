import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
