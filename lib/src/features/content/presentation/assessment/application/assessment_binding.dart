import '../../../../../core/app_export.dart';
import '../presentation/controllers/assessment_controller.dart';

class AssessmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssessmentController());
  }
}
