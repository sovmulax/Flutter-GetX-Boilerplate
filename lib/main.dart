import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'routes/export.dart';
import 'core/export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await DenpendencyInjection.init();
  await GetStorage.init();
  AppSession.init();

  runApp(const App());
  //configLoading();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.spash,
      defaultTransition: Transition.fade,
      //getPages: AppPages.routes,
      initialBinding: AppBinding(),
      smartManagement: SmartManagement.keepFactory,
      title: 'Flutter GetX Boilerplate',
      theme: CustomThemeData(context),
      //locale: TranslationService.locale,
      //fallbackLocale: TranslationService.fallbackLocale,
      //translations: TranslationService(),
    );
  }
}
