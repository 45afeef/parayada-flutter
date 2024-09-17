import '../../data/models/course_model.dart';

abstract class CourseRepository {
  Future<CourseModel> getCourse(int id);
}
