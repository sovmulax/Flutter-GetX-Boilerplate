import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(ApiRepository(), permanent: true);
  }
}
