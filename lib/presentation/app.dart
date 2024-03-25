import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templax/presentation/controllers/auth/auth_binding.dart';
import 'package:templax/presentation/pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: HomePage(),
    );
  }
}
