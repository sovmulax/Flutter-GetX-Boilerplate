import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:templax/core/utils/preferences.dart';
import 'package:templax/Models/auth/res_auth.dart';

// Mock minimal de PathProviderPlatform pour éviter le plugin natif en tests
class _FakePathProvider extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  final String _tempPath;
  _FakePathProvider(this._tempPath);

  @override
  Future<String?> getApplicationDocumentsPath() async => _tempPath;
  @override
  Future<String?> getTemporaryPath() async => _tempPath;
  @override
  Future<String?> getApplicationSupportPath() async => _tempPath;
}

void main() {
  late Directory tempDir;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    tempDir = Directory.systemTemp.createTempSync('get_storage_test');
    PathProviderPlatform.instance = _FakePathProvider(tempDir.path);
    await GetStorage.init();
    AppSession.init();
  });

  tearDownAll(() => tempDir.deleteSync(recursive: true));

  tearDown(() {
    AppSession.clearStorage();
    AppSession.init();
  });

  // ─── Token ────────────────────────────────────────────────────────────────

  group('AppSession — token', () {
    test('getAccessToken retourne une chaîne vide par défaut', () {
      expect(AppSession.getAccessToken(), '');
    });

    test('setAccessToken puis getAccessToken retourne la valeur enregistrée', () {
      AppSession.setAccessToken('bearer_test_token');
      expect(AppSession.getAccessToken(), 'bearer_test_token');
    });

    test('isAuthenticationDone est false sans token', () {
      expect(AppSession.isAuthenticationDone(), isFalse);
    });

    test('isAuthenticationDone est true avec un token non-vide', () {
      AppSession.setAccessToken('valid_token_xyz');
      expect(AppSession.isAuthenticationDone(), isTrue);
    });

    test('clearStorage remet le token à vide', () {
      AppSession.setAccessToken('token_to_erase');
      AppSession.clearStorage();
      AppSession.init();
      expect(AppSession.getAccessToken(), '');
      expect(AppSession.isAuthenticationDone(), isFalse);
    });
  });

  // ─── Données utilisateur ──────────────────────────────────────────────────

  group('AppSession — userData', () {
    final testUser = UserModel(
      id: 1,
      name: 'Jhon Doe',
      email: 'jhon.doe@mail.com',
      phone: '+225 6 12 34 56 78',
      role: 'User',
      avatar: 'https://i.pravatar.cc/150?img=3',
    );

    test('getUserData retourne null avant tout enregistrement', () {
      expect(AppSession.getUserData(), isNull);
    });

    test('setUserData puis getUserData retourne le bon utilisateur', () {
      AppSession.setUserData(testUser);
      final stored = AppSession.getUserData();
      expect(stored, isNotNull);
      expect(stored!.id, testUser.id);
      expect(stored.email, testUser.email);
      expect(stored.name, testUser.name);
    });
  });

  // ─── Écran d'intro ────────────────────────────────────────────────────────

  group('AppSession — intro screen', () {
    test('isIntroScreenDone retourne false par défaut', () {
      expect(AppSession.isIntroScreenDone(), isFalse);
    });

    test('setIsIntroScreenDone(true) puis isIntroScreenDone est true', () {
      AppSession.setIsIntroScreenDone(true);
      expect(AppSession.isIntroScreenDone(), isTrue);
    });
  });
}
