import 'package:json_annotation/json_annotation.dart';

import '../domain/memory_trick.dart';

part 'memory_trick.g.dart';

@JsonSerializable()
class MemoryTrick {
  String content;
  MemoryTrickType type;

  MemoryTrick(
    this.content,
    this.type,
  );

  factory MemoryTrick.fromJson(Map<String, dynamic> json) =>
      _$MemoryTrickFromJson(json);
  Map<String, dynamic> toJson() => _$MemoryTrickToJson(this);
}
