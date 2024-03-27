import 'package:get/get.dart';
import 'package:templax/core/utils/preferences.dart';
import 'package:templax/routes/export.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(const Duration(milliseconds: 2000));
    try {
      if (AppSession.isAuthenticationDone()) {
        Get.toNamed(Routes.spash);
      } else {
        Get.toNamed(Routes.auth);
      }
    } catch (e) {
      Get.toNamed(Routes.auth);
    }
  }
}
