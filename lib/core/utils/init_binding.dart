import 'package:get/get.dart';
import 'package:templax/api/export.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(ApiRepository(), permanent: true);
  }
}
