import 'package:templax/src/exports.dart_exporter.dart';
import 'package:get/get.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'fr_FR': frFr,
        'pt_PT': ptPT,
      };
}
