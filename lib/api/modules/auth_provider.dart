import 'dart:async';
import 'package:templax/src/exports.dart_exporter.dart';

class ApiRepository extends BaseProvider {
  /// Login — retourne des données statiques sans appel réseau.
  Future<Map<String, dynamic>?> login(AuthRequest data) async {
    await Future.delayed(const Duration(milliseconds: 800));
    if (data.email == 'jhon.doe@mail.com' && data.password == 'azerty') {
      return {
        'token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.static_token',
        'user': {
          'id': 1,
          'name': 'Jhon Doe',
          'email': 'jhon.doe@mail.com',
          'phone': '+225 6 12 34 56 78',
          'role': 'User',
          'avatar': 'https://i.pravatar.cc/150?img=3',
        },
      };
    }
    return null;
  }

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
