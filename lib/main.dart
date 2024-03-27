import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/export.dart';
import 'core/export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await DenpendencyInjection.init();

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
      theme: lightThemeData(context),
      //locale: TranslationService.locale,
      //fallbackLocale: TranslationService.fallbackLocale,
      //translations: TranslationService(),
    );
  }
}
