// feature/data/mappers/lesson_mapper.dart

import '../../../../content/presentation/memorizing/data/mapper.dart';
import '../../../domain/lesson_entity.dart';
import 'model.dart';

class LessonMapper {
  static Lesson toEntity(LessonModel model) {
    // Map the Lesson Model to Lesson Entity
    return Lesson(
      title: model.title,
      description: model.description,
      externalLinks: model.externalLinks,
      memoryTricks: model.memoryTricks == null
          ? []
          : model.memoryTricks!
              .map((e) => MemoryTrickMapper.toEntity(e))
              .toList(),
      topics: model.topics,
      mindMaps: model.mindMaps,
    );
  }

  static LessonModel toModel(Lesson entity) {
    // Map the Lesson Entity to Lesson Model
    return LessonModel(
      title: entity.title,
      description: entity.description,
      externalLinks: entity.externalLinks,
      memoryTricks: entity.memoryTricks == null
          ? []
          : entity.memoryTricks!
              .map((e) => MemoryTrickMapper.toModel(e))
              .toList(),
      topics: entity.topics,
      mindMaps: entity.mindMaps, // TODO - Create seperate model for mindmap
    );
  }
}
