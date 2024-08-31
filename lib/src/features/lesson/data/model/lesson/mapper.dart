// feature/data/mappers/lesson_mapper.dart

import '../../../domain/lesson_entity.dart';
import 'model.dart';

class LessonMapper {
  static Lesson toEntity(LessonModel model) {
    // Map the Lesson Model to Lesson Entity
    return Lesson(
      title: model.title,
      description: model.description,
    );
  }

  static LessonModel toModel(Lesson entity) {
    // Map the Lesson Entity to Lesson Model
    return LessonModel(
      title: entity.title,
      description: entity.description,
    );
  }
}
