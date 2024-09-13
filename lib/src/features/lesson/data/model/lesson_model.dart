import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../content/presentation/memorizing/data/memory_trick_model.dart';
import '../../../mind_map/data/mind_map_model.dart';
import '../../domain/lesson_entity.dart';

// This files will be generated by running 'flutter pub run build_runner build'
part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
class LessonModel extends Lesson with _$LessonModel {
  const factory LessonModel({
    required String title,
    required String description,
    List<String>? externalLinks,
    List<String>? topics,
    List<MindMapModel>? mindMaps,
    List<MemoryTrickModel>? memoryTricks,
  }) = _LessonModel;

  // A factory constructor that initializes an instance from a JSON map.
  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
}
