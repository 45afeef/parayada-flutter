import '../domain/memory_trick.dart';
import 'memory_trick.dart' as model;

class MemoryTrickMapper {
  static MemoryTrick toEntity(model.MemoryTrick model) {
    return MemoryTrick(
      model.content,
      model.type,
    );
  }

  static model.MemoryTrick toModel(MemoryTrick entity) {
    return model.MemoryTrick(
      entity.content,
      entity.type,
    );
  }
}
