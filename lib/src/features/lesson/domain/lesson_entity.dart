import '../../content/presentation/memorizing/domain/memory_trick.dart';
import '../../mind_map/domain/mind_map.dart';

class Lesson {
  final String? id;
  final String title;
  final String description;
  final List<String>? externalLinks;
  final List<String>? topics; //List<Topic>
  final List<MindMap>? mindMaps;
  final List<MemoryTrick>? memoryTricks; // List<Assessment> assessments;

  Lesson({
    required this.title,
    required this.description,
    this.id,
    this.externalLinks,
    this.topics,
    this.mindMaps,
    this.memoryTricks,
  });

  factory Lesson.empty() => Lesson(title: '', description: '');
}
