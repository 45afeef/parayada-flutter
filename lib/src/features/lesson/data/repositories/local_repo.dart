import '../model/lesson_model.dart';
import '../../domain/repositories/lesson_repository.dart';

class LocalLessonRepository extends LessonRepository {
  @override
  Future<void> deleteLesson(int id) {
    // TODO: implement deleteLesson
    throw UnimplementedError();
  }

  @override
  Future<List<Lesson>> getAllLessons() {
    // TODO: implement getAllLessons
    throw UnimplementedError();
  }

  @override
  Future<Lesson> getLesson(int id) {
    // TODO: implement getLesson
    throw UnimplementedError();
  }

  @override
  Future<void> saveLesson(Lesson lesson) {
    // TODO: implement saveLesson
    throw UnimplementedError();
  }
}
