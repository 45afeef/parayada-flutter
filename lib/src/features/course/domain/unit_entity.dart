import '../../lesson/domain/lesson_entity.dart';

class UnitEntity {
  final String name;
  final List<Lesson> lessons;
  final String? description;

  UnitEntity({
    required this.name,
    required this.lessons,
    this.description,
  });

  factory UnitEntity.empty() => UnitEntity(name: '', lessons: []);
}
