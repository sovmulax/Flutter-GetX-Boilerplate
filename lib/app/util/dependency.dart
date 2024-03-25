import 'package:get/get.dart';
import 'package:templax/data/repositories/auth_repository.dart';
import 'package:templax/data/repositories/article_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => AuthenticationRepositoryIml());
    Get.lazyPut(() => ArticleRepositoryIml());
  }
}
