import '../../../../core/app_export.dart';
import '../../../content/presentation/memorizing/domain/memory_trick.dart';
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
    topics: [
      'one',
      'two',
      'three',
      'four',
      'five',
      'one',
      'two',
      'three',
      'four',
      'five',
      'one',
      'two',
      'three',
      'four',
      'five',
    ],
    externalLinks: ['https://www.youtube.com/?w=coasdc8zxz'],
    memoryTricks: [
      MemoryTrick('This is the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is the first Memory TrickThis is the first Memory TrickThis is the first Memory Trick', MemoryTrickType.acronyms),
      MemoryTrick('This the second Memory TrickThis is the second Memory TrickThis is the second Memory Trick', MemoryTrickType.acrostic),
      MemoryTrick(
          'This is the third Memory TrickThis is the third Memory TrickThis is the third Memory TrickThis is the third Memory Trick', MemoryTrickType.association),
      MemoryTrick('This is the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the forth Memory TrickThis is the forth Memory TrickThis is the forth Memory TrickThis is the forth Memory Trick', MemoryTrickType.chunking),
      MemoryTrick(
          'This is the first Memory TrickThis is theis the first Memory TrickThis is theis the first Memory TrickThis is theis the fifth Memory TrickThis is the fifth Memory TrickThis is the fifth Memory TrickThis is the fifth Memory Trick', MemoryTrickType.methodOfLoci),
      MemoryTrick('This is the sixth Memory TrickThis is the sixth Memory TrickThis is the sixth Memory TrickThis is the sixth Memory Trick', MemoryTrickType.mindPalace),
      MemoryTrick(
          'This is the seventh Memory TrickThis is the seventh Memory TrickThis is the seventh Memory TrickThis is the seventh Memory Trick', MemoryTrickType.songOrRhymes),
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
