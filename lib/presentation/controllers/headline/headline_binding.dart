import 'package:get/get.dart';
import 'package:templax/domain/usecases/fetch_headline_use_case.dart';
import 'package:templax/data/repositories/article_repository.dart';
import 'package:templax/presentation/controllers/headline/headline_controller.dart';

class HeadlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchHeadlineUseCase(Get.find<ArticleRepositoryIml>()));
    Get.lazyPut(() => HeadlineController(Get.find()));
  }
}
