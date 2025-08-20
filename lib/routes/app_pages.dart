import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.spash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: Routes.auth,
    //   page: () => AuthScreen(),
    //   binding: AuthBinding(),
    // ),
  ];
}
