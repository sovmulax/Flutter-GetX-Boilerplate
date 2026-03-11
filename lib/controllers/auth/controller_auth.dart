import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final isPasswordVisible = false.obs;

  final ApiRepository _api = Get.find<ApiRepository>();

  void togglePasswordVisibility() => isPasswordVisible.toggle();

  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;
    try {
      final response = await _api.login(
        AuthRequest(
          email: emailController.text.trim(),
          password: passwordController.text,
        ),
      );

      if (response != null) {
        final token = response['token'] as String;
        final user = UserModel.fromJson(
          Map<String, dynamic>.from(response['user'] as Map),
        );
        AppSession.setAccessToken(token);
        AppSession.setUserData(user);
        Get.offNamed(Routes.profile);
      } else {
        Get.snackbar(
          'Erreur',
          'Email ou mot de passe incorrect.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
      }
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
