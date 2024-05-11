import 'package:get_storage/get_storage.dart';
import 'package:templax/src/exports.dart_exporter.dart';

class AppSession {
  static GetStorage? sessionData;
  static GetStorage? introScreenData;
  static GetStorage? otherData;

  static void init() {
    introScreenData = GetStorage();

    sessionData = GetStorage();
  }

  static void clearStorage() {
    sessionData!.erase();
    init();
  }

  static void setAccessToken(String? value) {
    sessionData!.write(UserSessionDetail.kAccessToken, value);
  }

  static String getAccessToken() {
    return sessionData?.read(UserSessionDetail.kAccessToken) ?? '';
  }

  static bool isAuthenticationDone() {
    bool isAuthDone = AppSession.getAccessToken().isNotEmpty &&
        AppSession.getAccessToken() != '';
    if (isAuthDone) {
      return true;
    }
    return isAuthDone;
  }

  static bool isIntroScreenDone() {
    return introScreenData!.read(UserSessionDetail.kIsIntroScreenDone) ?? false;
  }

  static setIsIntroScreenDone(bool isDone) {
    introScreenData!.write(UserSessionDetail.kIsIntroScreenDone, isDone);
  }

  static bool isAlreadyDone() {
    return introScreenData!.read(UserSessionDetail.kIsAlreadyDone) ?? false;
  }

  static setIsAlreadyDone(bool isDone) {
    introScreenData!.write(UserSessionDetail.kIsAlreadyDone, isDone);
  }

  static Future<void> logoutUser() async {
    AppSession.clearStorage();
    AppSession.init();
    AppSession.setAccessToken("");
    // Get.offAllNamed(Routes.loginScreen);
  }

  // Set Other data
  static setData(String key, int data) {
    otherData!.write(key, data);
  }

  // Get Other Data
  static getData(String key) {
    return otherData!.read(key);
  }
}
