import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:templax/api/modules/auth_provider.dart';
import 'package:templax/Models/auth/req_auth.dart';

void main() {
  setUpAll(() => Get.testMode = true);
  tearDownAll(() => Get.reset());

  // ─── login() ──────────────────────────────────────────────────────────────

  group('ApiRepository.login()', () {
    late ApiRepository repo;

    setUp(() => repo = ApiRepository());

    test('retourne un token avec les identifiants corrects', () async {
      final result = await repo.login(
        AuthRequest(email: 'jhon.doe@mail.com', password: 'azerty'),
      );
      expect(result, isNotNull);
      expect(result!['token'], isA<String>());
      expect((result['token'] as String).isNotEmpty, isTrue);
    });

    test('retourne null avec de mauvais identifiants', () async {
      final result = await repo.login(
        AuthRequest(email: 'wrong@test.com', password: 'wrongpass'),
      );
      expect(result, isNull);
    });

    test('retourne null avec un mot de passe vide', () async {
      final result = await repo.login(
        AuthRequest(email: 'jhon.doe@mail.com', password: ''),
      );
      expect(result, isNull);
    });

    test('la réponse contient les données utilisateur attendues', () async {
      final result = await repo.login(
        AuthRequest(email: 'jhon.doe@mail.com', password: 'azerty'),
      );
      expect(result, isNotNull);
      final user = result!['user'] as Map;
      expect(user['email'], 'jhon.doe@mail.com');
      expect(user['name'], isA<String>());
      expect(user['id'], isA<int>());
    });
  });
}

