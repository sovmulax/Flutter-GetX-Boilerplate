import 'dart:async';

import 'package:templax/Models/export.dart';
import 'package:templax/api/export.dart';

class ApiRepository extends BaseProvider {
  Future<AuthResponse?> register(AuthRequest data, path) async {
    final res = await post(path, data.toJson());
    if (res.statusCode == 200) {
      return res.body;
    }
    return null;
  }
}
