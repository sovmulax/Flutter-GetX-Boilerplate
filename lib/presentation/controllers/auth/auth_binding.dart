import 'package:get/get.dart';
import 'package:templax/data/repositories/auth_repository.dart';
import 'package:templax/domain/usecases/signup_use_case.dart';
import 'package:templax/presentation/controllers/auth/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpUseCase(Get.find<AuthenticationRepositoryIml>()));
    Get.put(AuthController(Get.find()), permanent: true);
  }
}
