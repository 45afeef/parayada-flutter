import '../../data/course_model.dart';

abstract class CourseRepository {
  Future<CourseModel> getCourse(int id);
}
