// import 'package:get_it/get_it.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:templax/src/exports.dart_exporter.dart';

// final getIt = GetIt.instance;

// void init() {
//   getIt.registerSingletonAsync<Isar>(() async {
//     final dir = await getApplicationDocumentsDirectory();
//     final isar = await Isar.open(
//       [PictogramDBSchema, SiteDBSchema, UsersSchema],
//       directory: dir.path,
//       name: "WaTiKo",
//     );
//     return isar;
//   });

// //   // getIt.registerSingleton<FlutterSoundPlayer>(FlutterSoundPlayer());

// //   // getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage(
// //   //     aOptions: AndroidOptions(
// //   //         sharedPreferencesName: "WaTiKo",
// //   //         storageCipherAlgorithm: StorageCipherAlgorithm.AES_CBC_PKCS7Padding,
// //   //         keyCipherAlgorithm:
// //   //             KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding)));

// //   // getIt.registerFactory<Dio>(() {
// //   //   BaseOptions options =
// //   //       BaseOptions(sendTimeout: 1.minutes, receiveTimeout: 1.minutes);
// //   //   final Dio dio = Dio(options);
// //   //   dio.interceptors.add(CustomInterceptors());
// //   //   return dio;
// //   // });
// // }
