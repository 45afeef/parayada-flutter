import '../../../../core/app_export.dart';
import '../../data/repositories/dummy_course_repo.dart';
import '../../domain/course_entity.dart';
import '../../domain/repositories/course_repository.dart';

class CourseController extends GetxController {
  static CourseController get call => Get.find();

  final CourseRepository _repo = DummyCourseRepo();

  CourseEntity? course;

  Future<CourseEntity> fetchCourse() async {
    var c = await _repo.getCourse(1);
    course = c;
    return c;
  }
}
