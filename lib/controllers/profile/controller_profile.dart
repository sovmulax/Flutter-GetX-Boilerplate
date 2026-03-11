import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';

class ProfileController extends GetxController {
  final Rx<UserModel?> user = Rx<UserModel?>(null);

  @override
  void onInit() {
    super.onInit();
    user.value = AppSession.getUserData();
  }

  Future<void> logout() async {
    await AppSession.logoutUser();
    Get.offAllNamed(Routes.auth);
  }
}
