import 'package:flutter_test/flutter_test.dart';
import 'package:templax/Models/auth/req_auth.dart';
import 'package:templax/Models/auth/res_auth.dart';

void main() {
  // ─── UserModel ────────────────────────────────────────────────────────────

  group('UserModel', () {
    const sampleJson = {
      'id': 1,
      'name': 'Jhon Doe',
      'email': 'jhon.doe@mail.com',
      'phone': '+225 6 12 34 56 78',
      'role': 'User',
      'avatar': 'https://i.pravatar.cc/150?img=3',
    };

    test('fromJson crée un modèle avec les bonnes valeurs', () {
      final user = UserModel.fromJson(sampleJson);
      expect(user.id, 1);
      expect(user.name, 'Jhon Doe');
      expect(user.email, 'jhon.doe@mail.com');
      expect(user.role, 'User');
    });

    test('toJson retourne toutes les clés attendues', () {
      final user = UserModel(
        id: 2,
        name: 'Alice',
        email: 'alice@mail.com',
        phone: '+33 6 00 00 00 00',
        role: 'Admin',
        avatar: 'https://i.pravatar.cc/150?img=5',
      );
      final json = user.toJson();
      expect(json.keys, containsAll(['id', 'name', 'email', 'phone', 'role', 'avatar']));
      expect(json['role'], 'Admin');
    });

    test('aller-retour fromJson → toJson est idempotent', () {
      final user = UserModel.fromJson(sampleJson);
      expect(user.toJson(), sampleJson);
    });
  });

  // ─── AuthRequest ──────────────────────────────────────────────────────────

  group('AuthRequest', () {
    test('toJson contient email et password', () {
      final req = AuthRequest(email: 'test@test.com', password: 'secret');
      final json = req.toJson();
      expect(json['email'], 'test@test.com');
      expect(json['password'], 'secret');
    });

    test('fromJson reconstruit le modèle correctement', () {
      final req = AuthRequest.fromJson({'email': 'a@b.com', 'password': '123'});
      expect(req.email, 'a@b.com');
      expect(req.password, '123');
    });

    test('les champs sont nullable (valeurs null acceptées)', () {
      final req = AuthRequest(email: null, password: null);
      expect(req.email, isNull);
      expect(req.password, isNull);
    });
  });

  // ─── AuthResponse ─────────────────────────────────────────────────────────

  group('AuthResponse', () {
    test('fromJson reconstruit id et token', () {
      final res = AuthResponse.fromJson({'id': 42, 'token': 'abc.def.ghi'});
      expect(res.id, 42);
      expect(res.token, 'abc.def.ghi');
    });

    test('toJson retourne les bonnes valeurs', () {
      final res = AuthResponse(id: 10, token: 'tok');
      expect(res.toJson(), {'id': 10, 'token': 'tok'});
    });

    test('fromRawJson / toRawJson aller-retour', () {
      const raw = '{"id":5,"token":"xyz"}';
      final res = AuthResponse.fromRawJson(raw);
      expect(res.toRawJson(), raw);
    });
  });
}
