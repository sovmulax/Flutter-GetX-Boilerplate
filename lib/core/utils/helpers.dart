import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:templax/src/exports.dart_exporter.dart';

Future<dynamic> download<T>(
  String url,
  String savePath,
) async {
  final httpClient = HttpClient();
  final token = AppSession.getAccessToken();

  try {
    HttpClientRequest request;
    request = await httpClient.getUrl(Uri.parse(url));
    var header = {
      HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json'
    };

    // onReceiveProgress
    final response = await request.close();
    final bytes = await consolidateHttpClientResponseBytes(response);

    // savePath
    final file = File(savePath);
    await file.parent.create(
        recursive: true); // Create parent directories if they don't exist
    await file.writeAsBytes(bytes);
    return true;
  } catch (error) {
    logError('$error');
    return false;
  }
}

Future<String?> downloadFile(String? url, String subPath) async {
  logInfo("Downloading : $url");
  if (url != null) {
    final File file = File(url);
    final filename = basename(file.path);
    var path = await getApplicationDocumentsDirectory();
    final fullFilename = "${path.path}$subPath$filename";

    var response = await download(url, fullFilename);

    if (response == true) {
      logInfo("Downloading Finished: $url");
      return fullFilename;
    } else {
      return fullFilename;
    }
  } else {
    return null;
  }
}
