import '../../../core/app_export.dart';
import '../presentation/controllers/lesson_controller.dart';

class LessonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LessonController());
  }
}
