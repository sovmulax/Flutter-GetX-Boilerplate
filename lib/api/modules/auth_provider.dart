import 'dart:async';
import 'package:templax/src/exports.dart_exporter.dart';

class ApiRepository extends BaseProvider {
  Future<dynamic> register(AuthRequest data, path) async {
    final res = await post(path, data.toJson());
    if (res.statusCode == 200) {
      return res.body;
    }
    return null;
  }

  Future<dynamic> getUsers(path) async {
    final res = await get(path);
    if (res.statusCode == 200) {
      return res.body;
    }
    return null;
  }
}
