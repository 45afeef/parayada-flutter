import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/memory_trick.dart';

part 'memory_trick_model.freezed.dart';
part 'memory_trick_model.g.dart';

@freezed
class MemoryTrickModel extends MemoryTrick with _$MemoryTrickModel {
  const factory MemoryTrickModel({
    required String content,
    required MemoryTrickType type,
  }) = _MemoryTrickModel;

  factory MemoryTrickModel.fromJson(Map<String, dynamic> json) =>
      _$MemoryTrickModelFromJson(json);
}
