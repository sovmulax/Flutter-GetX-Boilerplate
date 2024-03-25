import 'package:get/get.dart';
import 'package:templax/data/repositories/article_repository.dart';
import 'package:templax/domain/usecases/fetch_news_use_case.dart';
import 'package:templax/presentation/controllers/news/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchNewsUseCase(Get.find<ArticleRepositoryIml>()));
    Get.lazyPut(() => NewsController(Get.find()));
  }
}
