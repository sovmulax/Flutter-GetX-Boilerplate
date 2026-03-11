import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  tearDown(() {
    Get.reset();
  });

  testWidgets('Smoke test — GetMaterialApp démarre correctement',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      GetMaterialApp(
        home: Scaffold(body: Center(child: Text('Flutter GetX Boilerplate'))),
      ),
    );
    expect(find.text('Flutter GetX Boilerplate'), findsOneWidget);
  });

  testWidgets('Smoke test — navigation basique fonctionne',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => Scaffold(body: Text('Home'))),
          GetPage(name: '/next', page: () => Scaffold(body: Text('Next'))),
        ],
      ),
    );
    expect(find.text('Home'), findsOneWidget);
    Get.toNamed('/next');
    await tester.pumpAndSettle();
    expect(find.text('Next'), findsOneWidget);
  });
}
