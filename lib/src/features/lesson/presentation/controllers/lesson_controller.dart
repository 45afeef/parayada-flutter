import '../../../../core/app_export.dart';
import '../../../mind_map/domain/mind_map.dart';
import '../../data/repositories/local_repo.dart';
import '../../domain/lesson_entity.dart';
import '../../domain/repositories/lesson_repository.dart';

class LessonController extends GetxController {
  static LessonController get call => Get.find();

  final LessonRepository _lessonRepository = LocalLessonRepository();
  final Rx<Lesson> lesson = Rx<Lesson>(Lesson(
    title: 'title',
    description: 'description',
    topics: ['one', 'two', 'three', 'four', 'five'],
    memoryTricks: [
      'This is the first Memory Trick',
      'This is the second Memory Trick',
      'This is the third Memory Trick',
      'This is the forth Memory Trick',
      'This is the fifth Memory Trick',
      'This is the sixth Memory Trick',
      'This is the seventh Memory Trick',
    ],
    mindMaps: [
      MindMap(
          name: 'name',
          rootNode: MindMapNode(name: 'name', connectedNodes: [
            MindMapNode(name: 'Second', connectedNodes: []),
            MindMapNode(name: 'Third', connectedNodes: []),
            MindMapNode(name: 'Forth', connectedNodes: []),
          ]))
    ],
  ));

  Future<void> fetchUser(int id) async {
    final result = await _lessonRepository.getLesson(id); //.getUserById(id);
    // TODO - map Lesson Model to Lesson entity
    // lesson.value = result as Lesson;
  }
}
