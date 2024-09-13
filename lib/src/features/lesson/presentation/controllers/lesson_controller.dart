import '../../../../core/app_export.dart';
import '../../data/model/lesson_model.dart';
import '../../data/repositories/dummy_repo.dart';
import '../../domain/lesson_entity.dart';
import '../../domain/repositories/lesson_repository.dart';

class LessonController extends GetxController {
  static LessonController get call => Get.find();

  final LessonRepository _repo = DummyLessonRepo();

  Rx<Lesson> lesson = Lesson.empty().obs;

  Future<Lesson> fetchLesson(int id) async {
    LessonModel response = await _repo.getLesson(id);

    // TODO - Deside what to do with this response either to assaign to lesson.value or to return.
    lesson.value = response;

    return response;
  }
}
