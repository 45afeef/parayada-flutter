import '../../../../core/app_export.dart';
import '../../domain/subject_entity.dart';

const String _imageUrl =
    'https://images.unsplash.com/photo-1719937051230-8798ae2ebe86?q=80&w=1744&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

class SubjectController extends GetxController {
  static SubjectController get call => Get.find();

  SubjectEntity subject = SubjectEntity('Maths', imageUrl: _imageUrl);

  void fetchSubject(SubjectEntity subject) {
    
  }
}
