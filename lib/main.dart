import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:templax/src/exports.dart_exporter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await DenpendencyInjection.init();
  //configLoading();
  await GetStorage.init();
  AppSession.init();
  initializeDateFormatting('fr_FR', null).then((_) => runApp(const App()));
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
      initialBinding: AppBinding(),
      smartManagement: SmartManagement.keepFactory,
      title: 'Flutter GetX Boilerplate',
      theme: CustomThemeData(context),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('fr', 'FR')],
      locale: const Locale("fr", "FR"),
      //getPages: AppPages.routes,
      //locale: TranslationService.locale,
      //fallbackLocale: TranslationService.fallbackLocale,
      //translations: TranslationService(),
    );
  }
}
