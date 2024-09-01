import '../../../../core/app_export.dart';
import '../../data/model/lesson/mapper.dart';
import '../../data/model/lesson/model.dart';
import '../../data/repositories/dummy_repo.dart';
import '../../domain/lesson_entity.dart';
import '../../domain/repositories/lesson_repository.dart';

class LessonController extends GetxController {
  static LessonController get call => Get.find();

  final LessonRepository _repo = DummyLessonRepo();

  Rx<Lesson> lesson = Lesson.empty().obs;

  Future<Lesson> fetchLesson(int id) async {
    LessonModel response = await _repo.getLesson(id);

    Lesson lessonEntity = LessonMapper.toEntity(response);

    lesson.value = lessonEntity;

    return lessonEntity;
  }
}
