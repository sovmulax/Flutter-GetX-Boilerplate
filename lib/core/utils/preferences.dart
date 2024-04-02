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

  static Future<void> logoutUser() async {
    AppSession.clearStorage();
    AppSession.init();
    AppSession.setAccessToken("");
    // Get.offAllNamed(Routes.loginScreen);
  }

  // Set Other data
  static setIntData(String key, int data) {
    otherData!.write(key, data);
  }

  static setBoolData(String key, bool data) {
    otherData!.write(key, data);
  }

  static setStringData(String key, String data) {
    otherData!.write(key, data);
  }

  // Get Other Data
  static getIntData(String key) {
    return otherData!.read(key);
  }

  static getBoolData(String key) {
    return otherData!.read(key);
  }

  static getStringData(String key) {
    return otherData!.read(key);
  }
}
