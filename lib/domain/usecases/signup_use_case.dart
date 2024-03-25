import 'package:templax/app/core/usecases/pram_usecase.dart';
import 'package:templax/domain/entities/user.dart';
import 'package:templax/domain/repositories/auth_repository.dart';

class SignUpUseCase extends ParamUseCase<User, String> {
  final AuthenticationRepository _repo;
  SignUpUseCase(this._repo);

  @override
  Future<User> execute(String username) {
    return _repo.signUp(username);
  }
}
