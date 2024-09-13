import '../model/lesson_model.dart';
import '../../domain/repositories/lesson_repository.dart';

class LocalLessonRepository extends LessonRepository {
  @override
  Future<void> deleteLesson(int id) {
    // TODO: implement deleteLesson
    throw UnimplementedError();
  }

  @override
  Future<List<LessonModel>> getAllLessons() {
    // TODO: implement getAllLessons
    throw UnimplementedError();
  }

  @override
  Future<LessonModel> getLesson(int id) {
    // TODO: implement getLesson
    throw UnimplementedError();
  }

  @override
  Future<void> saveLesson(LessonModel lesson) {
    // TODO: implement saveLesson
    throw UnimplementedError();
  }
}
